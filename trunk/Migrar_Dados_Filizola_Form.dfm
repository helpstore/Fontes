�
 TFRMMIGRADADOSFILIZOLA 0g  TPF0TFrmMigraDadosFilizolaFrmMigraDadosFilizolaLeft%Top� Width�Height#BorderIconsbiSystemMenu CaptionMigrar Dados para FilizolaColor	clBtnFaceFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style OldCreateOrderPositionpoScreenCenterOnCreate
FormCreatePixelsPerInch`
TextHeight TPanel	pnlClientLeft Top Width�HeightAlignalClient
BevelInnerbvRaised
BevelOuter	bvLoweredColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameTahoma
Font.Style 
ParentFontTabOrder  TBevelBevel1LeftTopWidth�HeightAlignalBottomShape	bsTopLine  TBevelb2LeftTop#Width� HeightShape	bsTopLine  TcxLabel	LblTituloLeftTopCaptionMigrar Dados Filizola
ParentFontTransparent	  TPanelPanel2LeftTop� Width�Height(AlignalBottom
BevelInnerbvRaised
BevelOuter	bvLoweredTabOrder  TcxLabel	LblStatusLeft� TopCaptionStatus
ParentFontTransparent	Visible  	TcxButton	RzBitBtn2LeftTopWidth[HeightCursorcrHandPointCancel	Caption&FecharFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameTahoma
Font.StylefsBold 
ParentFontTabOrder OnClickRzBitBtn2Click
Glyph.Data
z  v  BMv      v   (                                    �  �   �� �   � � ��   ���   �  �   �� �   � � ��  ��� 3     33wwwww33����33w?33333���33s�3333���337?3333��3333333��3333333��3333333��3333333��3333333��333�333���333w3333��3333333��33?3333���333333���33w��33     33wwwwws3	NumGlyphs  TProgressBarbarraLefthTopWidth� HeightTabOrderVisible   TcxPageControlPCLeftTop Width�Height� 
ActivePagedxTabSheet1AlignalBottomTabOrderClientRectBottom� ClientRectRight�ClientRectTop TcxTabSheetdxTabSheet1CaptionExportar Dados TcxLabelLabel2LeftTopCaption Arquivo externo de produtos
ParentFontTransparent	  TdxEditPathDestinoLeftTopWidthgFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameTahoma
Font.Style 
ParentFontStyle.BorderColorclBtnShadowStyle.BorderStyle	xbsSingleTabOrder TextC:\Filizola\CADTXT.TXTReadOnly	StoredValues@  	TcxButtonBtnCriarLeftTop� Width� HeightCursorcrHandPointAction
ActExportaFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameTahoma
Font.StylefsBold 
ParentFontTabOrder
Glyph.Data
�   �   BM�       v   (               �                    �  �   �� �   � � ��  ��� ���   � ���  �� �   ��� ��  ��� �������ڭ���������� ��ڭ���������
���    ���������ڭ������������Э�������������    ������
��ڭ��������� ��ڭ������  	TcxButtonBtnDirLeftmTopWidthHeightCursorcrHandPointActionActAbreCaption...Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameTahoma
Font.StylefsBold 
ParentFontTabOrder     TActionListActionsLeft8Top��   TAction	ActFecharCaption&FecharShortCut	OnExecuteActFecharExecute  TActionActAbreCaptionAbre	OnExecuteActAbreExecute  TAction
ActExportaCaptionExporta	OnExecuteActExportaExecute   TIBQueryPRODUTOSDatabaseDmApp.DatabaseTransactionDmApp.Transaction
BeforeOpenPRODUTOSBeforeOpenSQL.Strings
select *  #from PCD_EXPORTA_BALANCA(:cnpj,'F') Left� Top	ParamDataDataType	ftUnknownNameCNPJ	ParamType	ptUnknown   TIBBCDFieldPRODUTOSPRC_VENDA	FieldName	PRC_VENDAOrigin!"PCD_EXPORTA_BALANCA"."PRC_VENDA"DisplayFormat
###,##0.00	PrecisionSize  TIBStringFieldPRODUTOSNOME	FieldNameNOMEOrigin"PCD_EXPORTA_BALANCA"."NOME"Size2  TIntegerFieldPRODUTOSVALIDADE	FieldNameVALIDADEOrigin "PCD_EXPORTA_BALANCA"."VALIDADE"  TIBStringFieldPRODUTOSPROD_PESAVEL	FieldNamePROD_PESAVELOrigin$"PCD_EXPORTA_BALANCA"."PROD_PESAVEL"	FixedChar	Size  TIBStringFieldPRODUTOSCODIGO	FieldNameCODIGOOrigin"PCD_EXPORTA_BALANCA"."CODIGO"Size   TOpenDialogDIR
DefaultExtdbFilter*.TXTLeftTopH  TcxPropertiesStorestgFrmMigraDadosFilizola
Components	ComponentPathDestinoProperties.Strings	AlignmentAnchors
AutoSelectAutoSizeCharCaseColorConstraintsCursor
DragCursorDragKindDragModeEnabledFontHeightHelpContextHideSelectionHintImeModeImeNameLeft	MaxLengthName
OEMConvertParentColor
ParentFontParentShowHintPasswordChar	PopupMenuReadOnlyShowHintStyleStyleControllerTabOrderTabStopTagTextTopVisibleWidth   StorageNamestgFrmMigraDadosFilizolaLeftTop�    