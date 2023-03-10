! Aec32BitAppServer57.f90

! This module contains the COM interfaces of the objects defined in 
! C:\Program Files (x86)\Common Files\Autodesk Shared\Aec32BitAppServer57.tlb
! Generated by the Fortran Module Wizard on 08/15/22

	MODULE Aec32BitAppServer57
		IMPLICIT NONE
	

		! CLSIDs		
		TYPE (GUID), PARAMETER :: CLSID_AecScriptControl = &
			GUID(#E8540E26, #D20E, #483F, &
			  CHAR('9F'X)//CHAR('D5'X)//CHAR('A5'X)//CHAR('A3'X)// &
			  CHAR('55'X)//CHAR('3A'X)//CHAR('75'X)//CHAR('56'X))
		TYPE (GUID), PARAMETER :: CLSID_AecSdfToolkit = &
			GUID(#E8540E32, #D20E, #483F, &
			  CHAR('9F'X)//CHAR('D5'X)//CHAR('A5'X)//CHAR('A3'X)// &
			  CHAR('55'X)//CHAR('3A'X)//CHAR('75'X)//CHAR('56'X))
		TYPE (GUID), PARAMETER :: CLSID_AecSdfToolkit2 = &
			GUID(#E8540E34, #D20E, #483F, &
			  CHAR('9F'X)//CHAR('D5'X)//CHAR('A5'X)//CHAR('A3'X)// &
			  CHAR('55'X)//CHAR('3A'X)//CHAR('75'X)//CHAR('56'X))
		TYPE (GUID), PARAMETER :: CLSID_AecSdfObject = &
			GUID(#E8540E36, #D20E, #483F, &
			  CHAR('9F'X)//CHAR('D5'X)//CHAR('A5'X)//CHAR('A3'X)// &
			  CHAR('55'X)//CHAR('3A'X)//CHAR('75'X)//CHAR('56'X))
		TYPE (GUID), PARAMETER :: CLSID_AecSdfObjectGeometry = &
			GUID(#E8540E38, #D20E, #483F, &
			  CHAR('9F'X)//CHAR('D5'X)//CHAR('A5'X)//CHAR('A3'X)// &
			  CHAR('55'X)//CHAR('3A'X)//CHAR('75'X)//CHAR('56'X))
		TYPE (GUID), PARAMETER :: CLSID_AecSdfObjectGeometrySegment = &
			GUID(#E8540E3A, #D20E, #483F, &
			  CHAR('9F'X)//CHAR('D5'X)//CHAR('A5'X)//CHAR('A3'X)// &
			  CHAR('55'X)//CHAR('3A'X)//CHAR('75'X)//CHAR('56'X))
		TYPE (GUID), PARAMETER :: CLSID_AecSdfDoublePoint = &
			GUID(#E8540E3C, #D20E, #483F, &
			  CHAR('9F'X)//CHAR('D5'X)//CHAR('A5'X)//CHAR('A3'X)// &
			  CHAR('55'X)//CHAR('3A'X)//CHAR('75'X)//CHAR('56'X))
		TYPE (GUID), PARAMETER :: CLSID_AecSdfCoordinateSystemMetadata = &
			GUID(#E8540E3E, #D20E, #483F, &
			  CHAR('9F'X)//CHAR('D5'X)//CHAR('A5'X)//CHAR('A3'X)// &
			  CHAR('55'X)//CHAR('3A'X)//CHAR('75'X)//CHAR('56'X))
		TYPE (GUID), PARAMETER :: CLSID_AecSdfBoundingBox = &
			GUID(#E8540E40, #D20E, #483F, &
			  CHAR('9F'X)//CHAR('D5'X)//CHAR('A5'X)//CHAR('A3'X)// &
			  CHAR('55'X)//CHAR('3A'X)//CHAR('75'X)//CHAR('56'X))
		TYPE (GUID), PARAMETER :: CLSID_AecADOMgr = &
			GUID(#E8540E60, #D20E, #483F, &
			  CHAR('9F'X)//CHAR('D5'X)//CHAR('A5'X)//CHAR('A3'X)// &
			  CHAR('55'X)//CHAR('3A'X)//CHAR('75'X)//CHAR('56'X))
		TYPE (GUID), PARAMETER :: CLSID_AecDBPromptInitialize = &
			GUID(#E8540E62, #D20E, #483F, &
			  CHAR('9F'X)//CHAR('D5'X)//CHAR('A5'X)//CHAR('A3'X)// &
			  CHAR('55'X)//CHAR('3A'X)//CHAR('75'X)//CHAR('56'X))
		TYPE (GUID), PARAMETER :: CLSID_AecDataInitialize = &
			GUID(#E8540E64, #D20E, #483F, &
			  CHAR('9F'X)//CHAR('D5'X)//CHAR('A5'X)//CHAR('A3'X)// &
			  CHAR('55'X)//CHAR('3A'X)//CHAR('75'X)//CHAR('56'X))
		TYPE (GUID), PARAMETER :: CLSID_JetDbMgr = &
			GUID(#E8540EA0, #D20E, #483F, &
			  CHAR('9F'X)//CHAR('D5'X)//CHAR('A5'X)//CHAR('A3'X)// &
			  CHAR('55'X)//CHAR('3A'X)//CHAR('75'X)//CHAR('56'X))

		! Enums		
		! AecSdfObjectType 
			INTEGER, PARAMETER ::	sdfUndefinedObject = -1	
			INTEGER, PARAMETER ::	sdfPointObject = 0	
			INTEGER, PARAMETER ::	sdfPolylineObject = 2	
			INTEGER, PARAMETER ::	sdfPolyPolylineObject = 3	
			INTEGER, PARAMETER ::	sdfPolygonObject = 4	
			INTEGER, PARAMETER ::	sdfPolyPolygonObject = 5	
			INTEGER, PARAMETER ::	sdfDeletedObject = 10	
		! No interfaces of the type requested were found
	END MODULE
