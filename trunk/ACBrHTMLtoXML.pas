unit ACBrHTMLtoXML;

interface

uses Forms, SysUtils, Math, pcnNFe, pcnNFeW, pcnAuxiliar, pcnConversao, ACBrUtil,
  Classes, Dialogs;

function GerarXML(Arquivo : AnsiString) : String;

implementation

uses StrUtils;

function SeparaAte(Chave, Texto : AnsiString; var Resto: AnsiString): String;
var
  inicio : integer;
begin
   { Alterado para Uppercase o recebimento dos campos Chave e Texto
       pois devido a diferen�a de vers�es (1.10 e 2.00) da NF-e alguns campos
       n�o estavam sendo localizados
     Desenvolvedor : Higor Machado em 11/02/2011 }
   Chave  := UpperCase(Trim(Chave));
   inicio := pos(Chave, UpperCase(Texto));

   if inicio = 0 then
     result := ''
   else
    begin
       Resto  := copy(Texto,inicio,length(Texto));
       Result := copy(Texto,0,inicio-1);
    end;
end;

function LerCampo(Texto, NomeCampo: string; Tamanho : Integer = 0): string;
var
  ConteudoTag: string;
  inicio, fim: integer;
begin
  NomeCampo := UpperCase(Trim(NomeCampo));
  inicio := pos(NomeCampo, UpperCase(Texto));
  if inicio = 0 then
    ConteudoTag := ''
  else
  begin
    inicio := inicio + Length(NomeCampo);
    if Tamanho > 0 then
       fim := Tamanho
    else
     begin
       Texto := copy(Texto,inicio,length(Texto));
       inicio := 0;
       fim := pos('|&|',Texto)-1;
     end;
    ConteudoTag := trim(copy(Texto, inicio, fim));
  end;
  try
     result := ConteudoTag;
  except
     raise Exception.Create('Conte�do inv�lido. '+ConteudoTag);
  end;
end;

function ConverteStrToNumero( Valor : String; TrocaPonto : Boolean = False ) : Real;
begin
  if TrocaPonto then
     Result := StrToFloatDef(StringReplace(Valor,ThousandSeparator,',',[rfReplaceAll]),0)
  else
     Result := StrToFloatDef(StringReplace(Valor,ThousandSeparator,'',[rfReplaceAll]),0);
end;

function GerarXML(Arquivo : AnsiString) : String;
var
 NFe : TNFe;
 GeradorXML : TNFeW;
 ok, bIgnoraDuplicata : Boolean;
 dData      : TDateTime; 
 i, posIni, posFim : Integer;
 sDataEmissao, Versao, sTexto : String;
 CaminhoXML, Grupo, ArquivoTXT, ArquivoRestante, GrupoTmp : AnsiString;
 ArquivoItens, ArquivoItensTemp, ArquivoDuplicatas, ArquivoVolumes : AnsiString;
 produtos: Integer;
begin
 NFe := TNFe.Create;

 ArquivoTXT := StringReplace(Arquivo,#$D#$A,'|&|',[rfReplaceAll]);

 Grupo :=  SeparaAte('Dados da NF-e',ArquivoTXT,ArquivoRestante);

 NFe.infNFe.ID := OnlyNumber(LerCampo(Grupo,'Chave de acesso'));
 NFe.Ide.nNF   := StrToIntDef(OnlyNumber(LerCampo(Grupo,'N�mero NF-e')),0);
 NFe.procNFe.chNFe:= OnlyNumber(LerCampo(Grupo,'Chave de acesso'));

 { Incluido campo que recebe qual a Vers�o do XML que o arquivo est�. }
 Versao        := LerCampo(Grupo,'Vers�o');
 NFe.Ide.cNF   := RetornarCodigoNumerico(NFe.infNFe.ID,NFe.infNFe.Versao);

 Grupo :=  SeparaAte('EMITENTE',ArquivoRestante,ArquivoRestante);

 { Alterado forma de atribui��o do campo Data de emiss�o pois devido a
     diferen�a de vers�es (1.10 e 2.00) da NF-e a formata��o de Datas estava
     com problemas. }
 sDataEmissao := LerCampo(Grupo,'Data de emiss�o');

 if Length(sDataEmissao) > 0 then
   dData := EncodeDate(StrToInt(copy(sDataEmissao, 07, 4)), StrToInt(copy(sDataEmissao, 04, 2)),
              StrToInt(copy(sDataEmissao, 01, 2)))
 else
   dData := 0;

 NFe.Ide.dEmi := dData;
 NFe.Total.ICMSTot.vNF := ConverteStrToNumero(LerCampo(Grupo,'Valor Total da Nota Fiscal'));
 NFe.Ide.modelo := StrToInt(copy(SomenteNumeros(NFe.infNFe.ID), 21, 2));
 NFe.Ide.serie := StrToInt(copy(SomenteNumeros(NFe.infNFe.ID), 23, 3));

 Grupo :=  SeparaAte('DESTINAT�RIO',ArquivoRestante,ArquivoRestante);

 NFe.Emit.CNPJCPF := OnlyNumber(LerCampo(Grupo,'CNPJ'));
 NFe.Emit.xNome   := LerCampo(Grupo,'Nome/Raz�o Social');
 NFe.Emit.IE      := OnlyAlphaNum(LerCampo(Grupo,'Inscri��o Estadual'));
 NFe.Emit.EnderEmit.UF := LerCampo(Grupo,'UF');

 Grupo :=  SeparaAte('EMISS�O',ArquivoRestante,ArquivoRestante);

 NFe.Dest.CNPJCPF := OnlyNumber(LerCampo(Grupo,'CNPJ'));
 NFe.Dest.xNome   := LerCampo(Grupo,'Nome/Raz�o Social');
 NFe.Dest.IE      := OnlyAlphaNum(LerCampo(Grupo,'Inscri��o Estadual'));
 NFe.Dest.EnderDest.UF := LerCampo(Grupo,'UF');

 Grupo :=  SeparaAte('Dados do Emitente',ArquivoRestante,ArquivoRestante);

 NFe.Ide.procEmi := StrToProcEmi(ok, LerCampo(Grupo,'Processo',1));
 NFe.Ide.verProc := LerCampo(Grupo, 'Vers�o do Processo');
 NFe.ide.tpEmis  := StrToTpEmis(ok, LerCampo(Grupo, 'Tipo de Emiss�o',1));
 NFe.Ide.finNFe  := StrToFinNFe(ok, LerCampo(Grupo, 'Finalidade',1));
 NFe.Ide.natOp   := LerCampo(Grupo, 'Natureza da Opera��o');
 NFe.ide.tpNF    := StrToTpNF(ok, LerCampo(Grupo, 'Tipo da Opera��o',1));
 NFe.ide.indPag  := StrToIndpag(ok, LerCampo(Grupo, 'Forma de Pagamento',1));
 NFE.procNFe.digVal   := LerCampo(Grupo, 'Digest Value da NF-e');
 NFe.procNFe.nProt    := LerCampo(Grupo, 'Protocolo');
 NFe.procNFe.dhRecbto := StrToDateDef(LerCampo(Grupo,'Data/Hora'),0);

 //SITUA��O ATUAL:
 {NFE.procNFe.digVal   := LerCampo(Grupo, 'Digest Value da NF-e');
 NFe.procNFe.xMotivo  := LerCampo(Grupo, 'Ocorr�ncia');
 NFe.procNFe.nProt    := LerCampo(Grupo, 'Protocolo');
 NFe.procNFe.dhRecbto := StrToDateDef(LerCampo(Grupo,'Data/Hora'),0);}
 //Recebimento no Ambiente Nacional

 Grupo :=  SeparaAte('Dados do destinat�rio',ArquivoRestante,ArquivoRestante);

 NFe.Emit.xNome   := LerCampo(Grupo,'Nome / Raz�o Social');
 NFe.Emit.xFant   := LerCampo(Grupo,'Nome Fantasia');
 NFe.Emit.CNPJCPF := OnlyNumber(LerCampo(Grupo,'CNPJ'));

 // altera��o: separar numero do endere�o
 NFe.Emit.EnderEmit.xLgr := LerCampo(Grupo,'Endere�o');
 NFe.Emit.EnderEmit.xLgr := Copy(NFe.Emit.EnderEmit.xLgr,1, pos(',',NFe.Emit.EnderEmit.xLgr)-1 );
 NFe.Emit.EnderEmit.nro  := copy( LerCampo(Grupo,'Endere�o'), pos(',',LerCampo(Grupo,'Endere�o'))+1, 10 );

 NFe.Emit.EnderEmit.xBairro := LerCampo(Grupo,'Bairro/Distrito');
 NFe.Emit.EnderEmit.CEP := StrToIntDef(OnlyNumber(LerCampo(Grupo,'CEP')),0);
 NFe.Emit.EnderEmit.cMun := StrToIntDef(LerCampo(Grupo,'Munic�pio',7),0);
 NFe.Ide.cUF := StrToIntDef(LerCampo(Grupo,'Munic�pio',2),0);
 NFe.Emit.EnderEmit.xMun := copy(LerCampo(Grupo,'Munic�pio'),10,60);
 NFe.Emit.EnderEmit.fone := OnlyAlphaNum(LerCampo(Grupo,' Fone/Fax'));
 NFe.Emit.EnderEmit.UF := LerCampo(Grupo,'UF');
 NFe.Emit.EnderEmit.cPais := StrToIntDef(LerCampo(Grupo,'Pa�s',4),1058);
 NFe.Emit.EnderEmit.xPais := copy(LerCampo(Grupo,'Pa�s'),8,60);
 NFe.Emit.IE      := OnlyAlphaNum(LerCampo(Grupo,'Inscri��o Estadual'));
 NFe.Ide.cMunFG := StrToIntDef(LerCampo(Grupo,'Munic�pio da Ocorr�ncia do Fato Gerador do ICMS'),0);

 Grupo :=  SeparaAte('Dados dos Produtos e Servi�os',ArquivoRestante,ArquivoRestante);

 NFe.Dest.xNome   := LerCampo(Grupo,'Nome / Raz�o social');
 NFe.Dest.CNPJCPF := OnlyNumber(LerCampo(Grupo,'CNPJ/CPF'));
 NFe.Dest.CNPJCPF := OnlyNumber(LerCampo(Grupo,'CNPJ'));

 // altera��o: separar numero do endere�o
 NFe.Dest.EnderDest.xLgr := LerCampo(Grupo,'Endere�o');
 NFe.Dest.EnderDest.xLgr := Copy(NFe.Dest.EnderDest.xLgr,1, pos(',',NFe.Dest.EnderDest.xLgr)-1 );
 NFe.Dest.EnderDest.nro  := copy( LerCampo(Grupo,'Endere�o'), pos(',',LerCampo(Grupo,'Endere�o'))+1, 10 );

 // corre��o, bairro tem espa�o entre as barras
 NFe.Dest.EnderDest.xBairro := LerCampo(Grupo,'Bairro / Distrito');
 NFe.Dest.EnderDest.CEP := StrToIntDef(OnlyNumber(LerCampo(Grupo,'CEP')),0);
 NFe.Dest.EnderDest.cMun := StrToIntDef(LerCampo(Grupo,'Munic�pio',7),0);
 NFe.Dest.EnderDest.xMun := copy(LerCampo(Grupo,'Munic�pio'),10,60);
 NFe.Dest.EnderDest.fone := OnlyAlphaNum(LerCampo(Grupo,' Fone/Fax'));
 NFe.Dest.EnderDest.UF := LerCampo(Grupo,'UF');
 NFe.Dest.EnderDest.cPais := StrToIntDef(LerCampo(Grupo,'Pa�s',4),1058);
 NFe.Dest.EnderDest.xPais := copy(LerCampo(Grupo,'Pa�s'),8,60);
 NFe.Dest.IE      := OnlyAlphaNum(LerCampo(Grupo,'Inscri��o estadual'));

 ArquivoItens :=  SeparaAte('Dados do Transporte',ArquivoRestante,ArquivoItens);

 { Alterado a forma de leitura dos itens devido aos layouts das vers�es (1.10 e 2.00) da NF-e
    no site da receita apresentarem diferen�as. }
 if Trim(Versao) <> '2.00' then
    begin
      while true do
        begin
          ArquivoItensTemp := copy(ArquivoItens, 33, length(ArquivoItens));
           if Grupo = '' then
            begin
              if pos('Num.', ArquivoItensTemp) > 0 then
                begin
                  Grupo := ArquivoItensTemp;
                  ArquivoItens := '';
                end;
              if Grupo = '' then
                Break;
            end;
          with NFe.Det.Add do
            begin
              Prod.nItem := StrToIntDef(LerCampo(Grupo, 'Num.'), 0);
              Prod.xProd := LerCampo(Grupo, 'Descri��o');
              Prod.qCom := ConverteStrToNumero(LerCampo(Grupo, 'Qtd.'));
              Prod.uCom := LerCampo(Grupo, 'Unidade Comercial');
              Prod.vProd := ConverteStrToNumero(LerCampo(Grupo, 'Valor(R$)'));
              Prod.cProd := LerCampo(Grupo, 'C�digo do Produto');
              Prod.NCM := LerCampo(Grupo, 'C�digo NCM');
              Prod.CFOP := LerCampo(Grupo, 'CFOP');
//              Prod.genero := StrToIntDef(LerCampo(Grupo,'G�nero'),0);
              Prod.vFrete := ConverteStrToNumero(LerCampo(Grupo, 'Valor Total do Frete'));
              Prod.cEAN := LerCampo(Grupo, 'C�digo EAN Comercial');
              Prod.qCom := ConverteStrToNumero(LerCampo(Grupo, 'Quantidade Comercial'));
              Prod.cEANTrib := LerCampo(Grupo, 'C�digo EAN Tribut�vel');
              Prod.uTrib := LerCampo(Grupo, 'Unidade Tribut�vel');
              Prod.qTrib := ConverteStrToNumero(LerCampo(Grupo, 'Quantidade Tribut�vel'));
              Prod.vUnCom := ConverteStrToNumero(LerCampo(Grupo, 'Valor unit�rio de comercializa��o'));
              Prod.vUnTrib := ConverteStrToNumero(LerCampo(Grupo, 'Valor unit�rio de tributa��o'));

              with Imposto.ICMS do
                begin
                  orig := StrToOrig(ok, LerCampo(Grupo, 'Origem da Mercadoria', 1));
                  CST := StrToCSTICMS(ok, LerCampo(Grupo, 'Tributa��o do ICMS', 2));
                  //Modalidade Defini��o da BC ICMS NOR
                  vBC := ConverteStrToNumero(LerCampo(Grupo, 'Base de C�lculo do ICMS Normal'));
                  pICMS := ConverteStrToNumero(LerCampo(Grupo, 'Al�quota do ICMS Normal'));
                  vICMS := ConverteStrToNumero(LerCampo(Grupo, 'Valor do ICMS Normal'));
                end;

              with Imposto.IPI do
                begin
                  cEnq := LerCampo(Grupo, 'C�digo de Enquadramento');
                  vBC := ConverteStrToNumero(LerCampo(Grupo, 'Base de C�lculo'));
                  pIPI := ConverteStrToNumero(LerCampo(Grupo, 'Al�quota'));
                  vIPI := ConverteStrToNumero(LerCampo(Grupo, 'Valor'));
                  CST := StrToCSTIPI(ok, LerCampo(Grupo, 'CST', 2));
                end;

            end;
        end;

    end
  else
    begin
      //Faz tratamento alternativo para NFE 2.0
      produtos := 0;
      while true do
        begin
          ArquivoItensTemp := copy(ArquivoItens, 88, length(ArquivoItens));

          //aki faz o teste com o inteiro para achar quantidade de produtos
          for I := 1 to 990 do
            begin
              if pos('|&|' + intTostr(i) + '|&|', ArquivoItensTemp) > 0 then Inc(produtos);
            end;

          for I := 1 to produtos do
            begin

              if i < produtos then
                Grupo := SeparaAte('|&|' + intTostr(i + 1) + '|&|', ArquivoItensTemp, ArquivoItensTemp)
              else
                Grupo := ArquivoItensTemp;

              with NFe.Det.Add do
              begin
                //Prod.nItem := StrToIntDef(LerCampo(Grupo, 'Num.'), 0);
                Prod.nItem := i;
                Prod.xProd := LerCampo(Grupo, '|&|' + intTostr(i) + '|&|');
                 //retira o c�digo '|&|1|&|'
                grupo := copy(grupo, 8, length(grupo));
                //separa at� a pr�xima tag |&|
                Prod.qCom := ConverteStrToNumero(LerCampo(Grupo, '|&|'));
                  //separa at� a pr�xima tag |&|
                grupo := copy(grupo, pos('|&|', grupo) + 3, length(grupo));

                Prod.uCom := LerCampo(Grupo, '|&|');
                  //separa at� a pr�xima tag |&|
                grupo := copy(grupo, pos('|&|', grupo) + 3, length(grupo));

                Prod.vProd := ConverteStrToNumero(LerCampo(Grupo, '|&|'));
                  //separa at� a pr�xima tag |&|
                grupo := copy(grupo, pos('|&|', grupo) + 3, length(grupo));

                //Daqui em diante continua mesmo layout
                Prod.cProd := LerCampo(Grupo, 'C�digo do Produto');
                Prod.NCM := LerCampo(Grupo, 'C�digo NCM');
                Prod.CFOP := LerCampo(Grupo, 'CFOP');
//                  Prod.genero := StrToIntDef(LerCampo(Grupo,'G�nero'),0);
                Prod.vFrete := ConverteStrToNumero(LerCampo(Grupo, 'Valor Total do Frete'));
                Prod.cEAN := LerCampo(Grupo, 'C�digo EAN Comercial');
                Prod.qCom := ConverteStrToNumero(LerCampo(Grupo, 'Quantidade Comercial'));
                Prod.cEANTrib := LerCampo(Grupo, 'C�digo EAN Tribut�vel');
                Prod.uTrib := LerCampo(Grupo, 'Unidade Tribut�vel');
                Prod.qTrib := ConverteStrToNumero(LerCampo(Grupo, 'Quantidade Tribut�vel'));
                Prod.vUnCom := ConverteStrToNumero(LerCampo(Grupo, 'Valor unit�rio de comercializa��o'));
                Prod.vUnTrib := ConverteStrToNumero(LerCampo(Grupo, 'Valor unit�rio de tributa��o'));
                Prod.vDesc := ConverteStrToNumero(LerCampo(Grupo, 'Valor do Desconto'));
                Prod.vOutro := ConverteStrToNumero(LerCampo(Grupo, 'Outras despesas acess�rias'));
                if LerCampo(Grupo,'Chassi do ve�culo ') <> '' then
                begin
                   // preencher as tags referente a ve�culo
                  Prod.veicProd.chassi  := LerCampo(Grupo,'Chassi do ve�culo ');
                  Prod.veicProd.cCor    := LerCampo(Grupo,'Cor ');
                  Prod.veicProd.xCor    := LerCampo(Grupo,'Descri��o da cor ');
                  Prod.veicProd.nSerie  := LerCampo(Grupo,'Serial (S�rie) ');
                  Prod.veicProd.tpComb  := LerCampo(Grupo,'Tipo de Combust�vel ');
                  Prod.veicProd.nMotor  := LerCampo(Grupo,'N�mero de Motor ');
                  //Prod.veicProd.RENAVAM := LerCampo(Grupo,'RENAVAM');
                  Prod.veicProd.anoMod  := StrToInt(LerCampo(Grupo,'Ano Modelo de Fabrica��o '));
                  Prod.veicProd.anoFab  := StrToInt(LerCampo(Grupo,'Ano de Fabrica��o '));
                end;

                with Imposto.ICMS do
                begin
                  orig := StrToOrig(ok, LerCampo(Grupo, 'Origem da Mercadoria', 1));
                  CST := StrToCSTICMS(ok, Trim(LerCampo(Grupo, 'Tributa��o do ICMS', 3)));
                  //Modalidade Defini��o da BC ICMS NOR

                  //separa at� a pr�xima tag
                  grupotmp:=Copy(Grupo,Pos('Modalidade',Grupo),Length(Grupo));
                  if Pos('70',CSTICMSToStr(CST))>0 then
                  begin
                    pRedBC:=ConverteStrToNumero(LerCampo(GrupoTmp,'Percentual Redu��o de BC do ICMS Normal'));
                    vBC := ConverteStrToNumero(LerCampo(GrupoTmp, 'Base de C�lculo'));
                    pICMS := ConverteStrToNumero(LerCampo(GrupoTmp, 'Al�quota'));
                    //separa at� a TAG al�quota
                    GrupoTmp:=Copy(GrupoTmp,Pos('Al�quota',GrupoTmp),Length(GrupoTmp));

                    vICMS := ConverteStrToNumero(LerCampo(GrupoTmp, 'Valor'));
                    pMVAST:=ConverteStrToNumero(LerCampo(GrupoTmp, 'Percentual da Margen de Valor Adicionado do ICMS ST'));
                    pRedBCST:=ConverteStrToNumero(LerCampo(GrupoTmp, 'Percentual da Redu��o de BC do ICMS ST'));
                    vBCST:=ConverteStrToNumero(LerCampo(GrupoTmp, 'Valor da BC do ICMS ST'));
                    pICMSST:=ConverteStrToNumero(LerCampo(GrupoTmp, 'Al�quota do Imposto do ICMS ST'));
                    vICMSST:=ConverteStrToNumero(LerCampo(GrupoTmp, 'Valor do ICMS ST'));
                  end
                  else if Pos('10',CSTICMSToStr(CST))>0 then
                  begin
                    vBC := ConverteStrToNumero(LerCampo(GrupoTmp, 'Base de C�lculo do ICMS Normal'));
                    pICMS := ConverteStrToNumero(LerCampo(GrupoTmp, 'Al�quota ICMS Normal'));
                    //separa at� a TAG al�quota
                    GrupoTmp:=Copy(GrupoTmp,Pos('Al�quota ICMS Normal',GrupoTmp),Length(GrupoTmp));

                    vICMS := ConverteStrToNumero(LerCampo(GrupoTmp, 'Valor do ICMS Normal'));
                    vBCST:=ConverteStrToNumero(LerCampo(GrupoTmp, 'Base de C�lculo do ICMS ST'));
                    pICMSST:=ConverteStrToNumero(LerCampo(GrupoTmp, 'Al�quota do ICMS ST'));
                    vICMSST:=ConverteStrToNumero(LerCampo(GrupoTmp, 'Valor do ICMS ST'));
                  end
                  else
                  begin
                    vBC := ConverteStrToNumero(LerCampo(GrupoTmp, 'Base de C�lculo do ICMS Normal'));
                    pICMS := ConverteStrToNumero(LerCampo(GrupoTmp, 'Al�quota ICMS Normal'));
                    //separa at� a TAG al�quota
                    GrupoTmp:=Copy(GrupoTmp,Pos('Al�quota ICMS Normal',GrupoTmp),Length(GrupoTmp));

                    vICMS := ConverteStrToNumero(LerCampo(GrupoTmp, 'Valor do ICMS Normal'));
                    vBCST:=ConverteStrToNumero(LerCampo(GrupoTmp, 'Base de C�lculo do ICMS ST'));
                    pICMSST:=ConverteStrToNumero(LerCampo(GrupoTmp, 'Al�quota do ICMS ST'));
                    vICMSST:=ConverteStrToNumero(LerCampo(GrupoTmp, 'Valor do ICMS ST'));
                  end;
                end;

                if LerCampo(Grupo,'|&|IMPOSTO SOBRE PRODUTOS INDUSTRIALIZADOS|&|')<>'' then
                begin
                  Grupo := copy(Grupo,pos('|&|IMPOSTO SOBRE PRODUTOS INDUSTRIALIZADOS|&|',grupo),length(grupo));
                  with Imposto.IPI do
                  begin
                    cEnq := LerCampo(Grupo, 'C�digo de Enquadramento');
                    vBC := ConverteStrToNumero(LerCampo(Grupo, 'Base de C�lculo'));
                    pIPI := ConverteStrToNumero(LerCampo(Grupo, 'Al�quota'));
                    vIPI := ConverteStrToNumero(LerCampo(Grupo, 'Valor IPI'));
                    CST := StrToCSTIPI(ok, LerCampo(Grupo, 'CST', 2));
                  end;
                end;
              end;
            end;
            break;
        end;
    end;
   Grupo:=Copy(Grupo,Pos('Totais',Grupo),Length(Grupo));
   NFe.Total.ICMSTot.vBC   := ConverteStrToNumero(LerCampo(Grupo,'Base de C�lculo ICMS'));
   NFe.Total.ICMSTot.vICMS := ConverteStrToNumero(LerCampo(Grupo,'Valor do ICMS'));
   NFe.Total.ICMSTot.vBCST := ConverteStrToNumero(LerCampo(Grupo,'Base de C�lculo ICMS ST'));
   NFe.Total.ICMSTot.vST   := ConverteStrToNumero(LerCampo(Grupo,'Valor ICMS Substitui��o'));

   { Incluida condicional que Verifica a vers�o do XML e ent�o atribui qual o
       texto de busca que dever� ser procurado no arquivo. }
   sTexto := IfThen(Trim(Versao) = '2.00', 'Valor Total dos Produtos', 'Valor dos Produtos');
   NFe.Total.ICMSTot.vProd   := ConverteStrToNumero(LerCampo(Grupo, sTexto));
   NFe.Total.ICMSTot.vFrete:= ConverteStrToNumero(LerCampo(Grupo,'Valor do Frete'));
   NFe.Total.ICMSTot.vSeg  := ConverteStrToNumero(LerCampo(Grupo,'Valor do Seguro'));
   NFe.Total.ICMSTot.vOutro := ConverteStrToNumero(LerCampo(Grupo,'Outras Despesas Acess�rias'));
   NFe.Total.ICMSTot.vIPI  := ConverteStrToNumero(LerCampo(Grupo,'Valor do IPI'));
   NFe.Total.ICMSTot.vNF   := ConverteStrToNumero(LerCampo(Grupo,'Valor Total da NFe'));

   { Incluida condicional que Verifica a vers�o do XML e ent�o atribui qual o
       texto de busca que dever� ser procurado no arquivo. }
   sTexto := IfThen(Trim(Versao) = '2.00', 'Valor Total dos Descontos', 'Valor dos Descontos');
   NFe.Total.ICMSTot.vDesc   := ConverteStrToNumero(LerCampo(Grupo, sTexto));
   NFe.Total.ICMSTot.vII   := ConverteStrToNumero(LerCampo(Grupo,'Valor do II'));
   NFe.Total.ICMSTot.vPIS  := ConverteStrToNumero(LerCampo(Grupo,'Valor do PIS'));
   NFe.Total.ICMSTot.vCOFINS := ConverteStrToNumero(LerCampo(Grupo,'Valor da COFINS'));


 ArquivoRestante := copy(ArquivoRestante,pos(UpperCase('Dados do Transporte'),UpperCase(ArquivoRestante)),length(ArquivoRestante));
 Grupo :=  SeparaAte('Dados de Cobran�a',ArquivoRestante,ArquivoItens);

 NFe.Transp.modFrete := StrTomodFrete( ok, LerCampo(Grupo,'Modalidade do Frete',1) );

 NFe.Transp.Transporta.CNPJCPF := OnlyNumber(LerCampo(Grupo,'CNPJ'));
 NFe.Transp.Transporta.xNome   := LerCampo(Grupo,'Raz�o Social / Nome');
 NFe.Transp.Transporta.IE      := LerCampo(Grupo,'Inscri��o Estadual');
 NFe.Transp.Transporta.xEnder  := LerCampo(Grupo,'Endere�o Completo');
 NFe.Transp.Transporta.xMun    := LerCampo(Grupo,'Munic�pio');
 NFe.Transp.Transporta.UF      := LerCampo(Grupo,'UF');
 NFe.Transp.veicTransp.placa   := LerCampo(Grupo,'Placa');
 NFe.Transp.veicTransp.UF      := LerCampo(Grupo,'UF');
 // Volumes
 if pos('VOLUMES',UpperCase(Grupo)) > 0 then
 begin
   i := 0;
   posIni := pos('VOLUMES',UpperCase(Grupo)) + Length('VOLUMES') + 3;
   ArquivoVolumes := copy(Grupo,posIni,length(Grupo));
   while True do
   begin
     NFe.Transp.Vol.Add;
     NFe.Transp.Vol[i].qVol  := StrToIntDef(LerCampo(Grupo,'Quantidade'),0);
     NFe.Transp.vol[i].esp   := LerCampo(Grupo,'Esp�cie');
     NFe.Transp.Vol[i].marca := LerCampo(Grupo,'Marca');
     NFe.Transp.Vol[i].nVol  := LerCampo(Grupo,'Numera��o');
     NFe.Transp.Vol[i].pesoL := ConverteStrToNumero(LerCampo(Grupo,'Peso L�quido'));
     NFe.Transp.Vol[i].pesoB := ConverteStrToNumero(LerCampo(Grupo,'Peso Bruto'));
     Inc(i);
     break;
     // Falta rotina para pegar v�rios volumes
   end;
 end;

 { Ap�s tentativa de Separar a informa��o at� a parte de 'Dados de Cobran�a', em
     algumas NFe's que n�o possuiam este "node" n�o estava sendo possivel
     armazenar os dados referente aos 'Totais'. Ent�o caso a NFe n�o possua este
     "node" automaticamente ir� ignorar as informa��es relacionadas. }

 if Trim(Grupo) = '' then
 begin
   Grupo :=  SeparaAte('Informa��es Adicionais',ArquivoRestante,ArquivoItens);
   bIgnoraDuplicata := True;
 end;

 Grupo :=  SeparaAte('Informa��es Adicionais',ArquivoRestante,ArquivoItens);

 if not bIgnoraDuplicata then
 begin
   NFe.Cobr.Fat.nFat  := LerCampo(Grupo,'N�mero');
   NFe.Cobr.Fat.vOrig := ConverteStrToNumero(LerCampo(Grupo,'Valor Original'));
   NFe.Cobr.Fat.vDesc := ConverteStrToNumero(LerCampo(Grupo,'Valor Desconto'));
   NFe.Cobr.Fat.vLiq  := ConverteStrToNumero(LerCampo(Grupo,'Valor L�quido'));

   //Duplicatas
   if pos('DUPLICATAS',UpperCase(Grupo)) > 0 then
   begin
      i := 0;
      posIni := pos('DUPLICATAS',UpperCase(Grupo)) + Length('DUPLICATAS') + 3;
      ArquivoDuplicatas := copy(Grupo,posIni,length(Grupo));
      posIni := pos('VALOR',UpperCase(ArquivoDuplicatas)) + Length('VALOR') + 4;
      ArquivoDuplicatas := copy(ArquivoDuplicatas,posIni,Length(ArquivoDuplicatas));
      while True do
       begin
         NFe.Cobr.Dup.Add;
         NFe.Cobr.Dup[i].nDup  := copy(ArquivoDuplicatas,1,pos('|&|',ArquivoDuplicatas)-1);
         ArquivoDuplicatas := copy(ArquivoDuplicatas,pos('|&|',ArquivoDuplicatas)+ 3,Length(ArquivoDuplicatas));
         NFe.Cobr.Dup[i].dVenc := StrToDateDef(copy(ArquivoDuplicatas,1,pos('|&|',ArquivoDuplicatas)-1),0);;
         ArquivoDuplicatas := copy(ArquivoDuplicatas,pos('|&|',ArquivoDuplicatas)+ 3,Length(ArquivoDuplicatas));
         NFe.Cobr.Dup[i].vDup  := ConverteStrToNumero(copy(ArquivoDuplicatas,1,pos('|&|',ArquivoDuplicatas)-1));;;
         ArquivoDuplicatas := copy(ArquivoDuplicatas,pos('|&|',ArquivoDuplicatas)+ 3,Length(ArquivoDuplicatas));
         Inc(i);
         if Length(ArquivoDuplicatas) <= 4 then
            break;
       end;
   end;
 end;

 Grupo := ArquivoItens;
 if pos('INFORMA��ES COMPLEMENTARES DE INTERESSE DO FISCO',UpperCase(Grupo)) > 0 then
  begin
    posIni := pos('INFORMA��ES COMPLEMENTARES DE INTERESSE DO FISCO',UpperCase(Grupo)) + Length('INFORMA��ES COMPLEMENTARES DE INTERESSE DO FISCO') + 4 ;
    posFim := pos('|&|',UpperCase(copy(Grupo,posIni,length(Grupo))))-1;
    NFe.InfAdic.infAdFisco := copy(Grupo,posIni,posFim);
  end;
 if pos('INFORMA��ES COMPLEMENTARES DE INTERESSE DO CONTRIBUINTE',UpperCase(Grupo)) > 0 then
  begin
    posIni := pos('INFORMA��ES COMPLEMENTARES DE INTERESSE DO CONTRIBUINTE',UpperCase(Grupo)) + Length('INFORMA��ES COMPLEMENTARES DE INTERESSE DO CONTRIBUINTE') + 4 ;
    posFim := pos('|&|',UpperCase(copy(Grupo,posIni,length(Grupo))))-1;
    NFe.InfAdic.infCpl     := copy(Grupo,posIni,posFim);
  end;

 Grupo :=  SeparaAte('Dados de Nota Fiscal Avulsa',ArquivoRestante,Grupo);
 //OBSERVA��ES DO CONTRIBUINTE
 if pos('OBSERVA��ES DO CONTRIBUINTE',UpperCase(Grupo)) > 0 then
  begin
    i := 0;
    posIni := pos('OBSERVA��ES DO CONTRIBUINTE',UpperCase(Grupo)) + Length('OBSERVA��ES DO CONTRIBUINTE') + 3;
    ArquivoDuplicatas := copy(Grupo,posIni,length(Grupo));
    posIni := pos('TEXTO',UpperCase(ArquivoDuplicatas)) + Length('TEXTO') + 4;
    ArquivoDuplicatas := copy(ArquivoDuplicatas,posIni,Length(ArquivoDuplicatas));
    while True do
     begin
       NFe.InfAdic.obsCont.Add;
       NFe.InfAdic.obsCont[i].xCampo  := copy(ArquivoDuplicatas,1,pos('|&|',ArquivoDuplicatas)-1);
       ArquivoDuplicatas := copy(ArquivoDuplicatas,pos('|&|',ArquivoDuplicatas)+ 3,Length(ArquivoDuplicatas));
       NFe.InfAdic.obsCont[i].xTexto := copy(ArquivoDuplicatas,1,pos('|&|',ArquivoDuplicatas)-1);
       ArquivoDuplicatas := copy(ArquivoDuplicatas,pos('|&|',ArquivoDuplicatas)+ 3,Length(ArquivoDuplicatas));
       Inc(i);
       if Length(ArquivoDuplicatas) <= 4 then
          break;
     end;
  end;

 GeradorXML := TNFeW.Create(NFe);
 try
    GeradorXML.schema := TsPL005c;
    GeradorXML.GerarXml;
    CaminhoXML := PathWithDelim(ExtractFilePath(Application.ExeName))+copy(NFe.infNFe.ID, (length(NFe.infNFe.ID)-44)+1, 44)+'-nfe.xml';
    GeradorXML.Gerador.SalvarArquivo(CaminhoXML);
    Result := CaminhoXML;
 finally
    GeradorXML.Free;
 end;
 NFe.Free;
end;

end.
