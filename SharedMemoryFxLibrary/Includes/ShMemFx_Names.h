#pragma once

#define DllImport __declspec( dllimport )
#define DllExport __declspec( dllexport )

#ifdef EXPORTING
#define CLASS_DECLSPEC DllExport
#else
#define CLASS_DECLSPEC DllImport
#endif