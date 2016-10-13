(define llvm-enums-lst (quote (
   ("LLVMVerifierFailureAction" "unsigned int" (
       ("LLVMAbortProcessAction" 0)
       ("LLVMPrintMessageAction" 1)
       ("LLVMReturnStatusAction" 2)
   ))
   ("LLVMAttribute" "int" (
       ("LLVMZExtAttribute" 1)
       ("LLVMSExtAttribute" 2)
       ("LLVMNoReturnAttribute" 4)
       ("LLVMInRegAttribute" 8)
       ("LLVMStructRetAttribute" 16)
       ("LLVMNoUnwindAttribute" 32)
       ("LLVMNoAliasAttribute" 64)
       ("LLVMByValAttribute" 128)
       ("LLVMNestAttribute" 256)
       ("LLVMReadNoneAttribute" 512)
       ("LLVMReadOnlyAttribute" 1024)
       ("LLVMNoInlineAttribute" 2048)
       ("LLVMAlwaysInlineAttribute" 4096)
       ("LLVMOptimizeForSizeAttribute" 8192)
       ("LLVMStackProtectAttribute" 16384)
       ("LLVMStackProtectReqAttribute" 32768)
       ("LLVMAlignment" 2031616)
       ("LLVMNoCaptureAttribute" 2097152)
       ("LLVMNoRedZoneAttribute" 4194304)
       ("LLVMNoImplicitFloatAttribute" 8388608)
       ("LLVMNakedAttribute" 16777216)
       ("LLVMInlineHintAttribute" 33554432)
       ("LLVMStackAlignment" 469762048)
       ("LLVMReturnsTwice" 536870912)
       ("LLVMUWTable" 1073741824)
       ("LLVMNonLazyBind" -2147483648)
   ))
   ("LLVMOpcode" "unsigned int" (
       ("LLVMRet" 1)
       ("LLVMBr" 2)
       ("LLVMSwitch" 3)
       ("LLVMIndirectBr" 4)
       ("LLVMInvoke" 5)
       ("LLVMUnreachable" 7)
       ("LLVMAdd" 8)
       ("LLVMFAdd" 9)
       ("LLVMSub" 10)
       ("LLVMFSub" 11)
       ("LLVMMul" 12)
       ("LLVMFMul" 13)
       ("LLVMUDiv" 14)
       ("LLVMSDiv" 15)
       ("LLVMFDiv" 16)
       ("LLVMURem" 17)
       ("LLVMSRem" 18)
       ("LLVMFRem" 19)
       ("LLVMShl" 20)
       ("LLVMLShr" 21)
       ("LLVMAShr" 22)
       ("LLVMAnd" 23)
       ("LLVMOr" 24)
       ("LLVMXor" 25)
       ("LLVMAlloca" 26)
       ("LLVMLoad" 27)
       ("LLVMStore" 28)
       ("LLVMGetElementPtr" 29)
       ("LLVMTrunc" 30)
       ("LLVMZExt" 31)
       ("LLVMSExt" 32)
       ("LLVMFPToUI" 33)
       ("LLVMFPToSI" 34)
       ("LLVMUIToFP" 35)
       ("LLVMSIToFP" 36)
       ("LLVMFPTrunc" 37)
       ("LLVMFPExt" 38)
       ("LLVMPtrToInt" 39)
       ("LLVMIntToPtr" 40)
       ("LLVMBitCast" 41)
       ("LLVMAddrSpaceCast" 60)
       ("LLVMICmp" 42)
       ("LLVMFCmp" 43)
       ("LLVMPHI" 44)
       ("LLVMCall" 45)
       ("LLVMSelect" 46)
       ("LLVMUserOp1" 47)
       ("LLVMUserOp2" 48)
       ("LLVMVAArg" 49)
       ("LLVMExtractElement" 50)
       ("LLVMInsertElement" 51)
       ("LLVMShuffleVector" 52)
       ("LLVMExtractValue" 53)
       ("LLVMInsertValue" 54)
       ("LLVMFence" 55)
       ("LLVMAtomicCmpXchg" 56)
       ("LLVMAtomicRMW" 57)
       ("LLVMResume" 58)
       ("LLVMLandingPad" 59)
       ("LLVMCleanupRet" 61)
       ("LLVMCatchRet" 62)
       ("LLVMCatchPad" 63)
       ("LLVMCleanupPad" 64)
       ("LLVMCatchSwitch" 65)
   ))
   ("LLVMTypeKind" "unsigned int" (
       ("LLVMVoidTypeKind" 0)
       ("LLVMHalfTypeKind" 1)
       ("LLVMFloatTypeKind" 2)
       ("LLVMDoubleTypeKind" 3)
       ("LLVMX86_FP80TypeKind" 4)
       ("LLVMFP128TypeKind" 5)
       ("LLVMPPC_FP128TypeKind" 6)
       ("LLVMLabelTypeKind" 7)
       ("LLVMIntegerTypeKind" 8)
       ("LLVMFunctionTypeKind" 9)
       ("LLVMStructTypeKind" 10)
       ("LLVMArrayTypeKind" 11)
       ("LLVMPointerTypeKind" 12)
       ("LLVMVectorTypeKind" 13)
       ("LLVMMetadataTypeKind" 14)
       ("LLVMX86_MMXTypeKind" 15)
       ("LLVMTokenTypeKind" 16)
   ))
   ("LLVMLinkage" "unsigned int" (
       ("LLVMExternalLinkage" 0)
       ("LLVMAvailableExternallyLinkage" 1)
       ("LLVMLinkOnceAnyLinkage" 2)
       ("LLVMLinkOnceODRLinkage" 3)
       ("LLVMLinkOnceODRAutoHideLinkage" 4)
       ("LLVMWeakAnyLinkage" 5)
       ("LLVMWeakODRLinkage" 6)
       ("LLVMAppendingLinkage" 7)
       ("LLVMInternalLinkage" 8)
       ("LLVMPrivateLinkage" 9)
       ("LLVMDLLImportLinkage" 10)
       ("LLVMDLLExportLinkage" 11)
       ("LLVMExternalWeakLinkage" 12)
       ("LLVMGhostLinkage" 13)
       ("LLVMCommonLinkage" 14)
       ("LLVMLinkerPrivateLinkage" 15)
       ("LLVMLinkerPrivateWeakLinkage" 16)
   ))
   ("LLVMVisibility" "unsigned int" (
       ("LLVMDefaultVisibility" 0)
       ("LLVMHiddenVisibility" 1)
       ("LLVMProtectedVisibility" 2)
   ))
   ("LLVMDLLStorageClass" "unsigned int" (
       ("LLVMDefaultStorageClass" 0)
       ("LLVMDLLImportStorageClass" 1)
       ("LLVMDLLExportStorageClass" 2)
   ))
   ("LLVMCallConv" "unsigned int" (
       ("LLVMCCallConv" 0)
       ("LLVMFastCallConv" 8)
       ("LLVMColdCallConv" 9)
       ("LLVMWebKitJSCallConv" 12)
       ("LLVMAnyRegCallConv" 13)
       ("LLVMX86StdcallCallConv" 64)
       ("LLVMX86FastcallCallConv" 65)
   ))
   ("LLVMIntPredicate" "unsigned int" (
       ("LLVMIntEQ" 32)
       ("LLVMIntNE" 33)
       ("LLVMIntUGT" 34)
       ("LLVMIntUGE" 35)
       ("LLVMIntULT" 36)
       ("LLVMIntULE" 37)
       ("LLVMIntSGT" 38)
       ("LLVMIntSGE" 39)
       ("LLVMIntSLT" 40)
       ("LLVMIntSLE" 41)
   ))
   ("LLVMRealPredicate" "unsigned int" (
       ("LLVMRealPredicateFalse" 0)
       ("LLVMRealOEQ" 1)
       ("LLVMRealOGT" 2)
       ("LLVMRealOGE" 3)
       ("LLVMRealOLT" 4)
       ("LLVMRealOLE" 5)
       ("LLVMRealONE" 6)
       ("LLVMRealORD" 7)
       ("LLVMRealUNO" 8)
       ("LLVMRealUEQ" 9)
       ("LLVMRealUGT" 10)
       ("LLVMRealUGE" 11)
       ("LLVMRealULT" 12)
       ("LLVMRealULE" 13)
       ("LLVMRealUNE" 14)
       ("LLVMRealPredicateTrue" 15)
   ))
   ("LLVMLandingPadClauseTy" "unsigned int" (
       ("LLVMLandingPadCatch" 0)
       ("LLVMLandingPadFilter" 1)
   ))
   ("LLVMThreadLocalMode" "unsigned int" (
       ("LLVMNotThreadLocal" 0)
       ("LLVMGeneralDynamicTLSModel" 1)
       ("LLVMLocalDynamicTLSModel" 2)
       ("LLVMInitialExecTLSModel" 3)
       ("LLVMLocalExecTLSModel" 4)
   ))
   ("LLVMAtomicOrdering" "unsigned int" (
       ("LLVMAtomicOrderingNotAtomic" 0)
       ("LLVMAtomicOrderingUnordered" 1)
       ("LLVMAtomicOrderingMonotonic" 2)
       ("LLVMAtomicOrderingAcquire" 4)
       ("LLVMAtomicOrderingRelease" 5)
       ("LLVMAtomicOrderingAcquireRelease" 6)
       ("LLVMAtomicOrderingSequentiallyConsistent" 7)
   ))
   ("LLVMAtomicRMWBinOp" "unsigned int" (
       ("LLVMAtomicRMWBinOpXchg" 0)
       ("LLVMAtomicRMWBinOpAdd" 1)
       ("LLVMAtomicRMWBinOpSub" 2)
       ("LLVMAtomicRMWBinOpAnd" 3)
       ("LLVMAtomicRMWBinOpNand" 4)
       ("LLVMAtomicRMWBinOpOr" 5)
       ("LLVMAtomicRMWBinOpXor" 6)
       ("LLVMAtomicRMWBinOpMax" 7)
       ("LLVMAtomicRMWBinOpMin" 8)
       ("LLVMAtomicRMWBinOpUMax" 9)
       ("LLVMAtomicRMWBinOpUMin" 10)
   ))
   ("LLVMDiagnosticSeverity" "unsigned int" (
       ("LLVMDSError" 0)
       ("LLVMDSWarning" 1)
       ("LLVMDSRemark" 2)
       ("LLVMDSNote" 3)
   ))
   ("LLVMCodeGenOptLevel" "unsigned int" (
       ("LLVMCodeGenLevelNone" 0)
       ("LLVMCodeGenLevelLess" 1)
       ("LLVMCodeGenLevelDefault" 2)
       ("LLVMCodeGenLevelAggressive" 3)
   ))
   ("LLVMRelocMode" "unsigned int" (
       ("LLVMRelocDefault" 0)
       ("LLVMRelocStatic" 1)
       ("LLVMRelocPIC" 2)
       ("LLVMRelocDynamicNoPic" 3)
   ))
   ("LLVMCodeModel" "unsigned int" (
       ("LLVMCodeModelDefault" 0)
       ("LLVMCodeModelJITDefault" 1)
       ("LLVMCodeModelSmall" 2)
       ("LLVMCodeModelKernel" 3)
       ("LLVMCodeModelMedium" 4)
       ("LLVMCodeModelLarge" 5)
   ))
   ("LLVMCodeGenFileType" "unsigned int" (
       ("LLVMAssemblyFile" 0)
       ("LLVMObjectFile" 1)
   ))
)))
(define llvm-bindings-lst (quote (
   ("LLVMVerifyModule" "LLVMBool" (
       ("M" "LLVMModuleRef")
       ("Action" "LLVMVerifierFailureAction")
       ("OutMessage" "char **")
   ))
   ("LLVMVerifyFunction" "LLVMBool" (
       ("Fn" "LLVMValueRef")
       ("Action" "LLVMVerifierFailureAction")
   ))
   ("LLVMViewFunctionCFG" "void" (
       ("Fn" "LLVMValueRef")
   ))
   ("LLVMViewFunctionCFGOnly" "void" (
       ("Fn" "LLVMValueRef")
   ))
   ("LLVMParseBitcode" "LLVMBool" (
       ("MemBuf" "LLVMMemoryBufferRef")
       ("OutModule" "LLVMModuleRef *")
       ("OutMessage" "char **")
   ))
   ("LLVMParseBitcode2" "LLVMBool" (
       ("MemBuf" "LLVMMemoryBufferRef")
       ("OutModule" "LLVMModuleRef *")
   ))
   ("LLVMParseBitcodeInContext" "LLVMBool" (
       ("ContextRef" "LLVMContextRef")
       ("MemBuf" "LLVMMemoryBufferRef")
       ("OutModule" "LLVMModuleRef *")
       ("OutMessage" "char **")
   ))
   ("LLVMParseBitcodeInContext2" "LLVMBool" (
       ("ContextRef" "LLVMContextRef")
       ("MemBuf" "LLVMMemoryBufferRef")
       ("OutModule" "LLVMModuleRef *")
   ))
   ("LLVMGetBitcodeModuleInContext" "LLVMBool" (
       ("ContextRef" "LLVMContextRef")
       ("MemBuf" "LLVMMemoryBufferRef")
       ("OutM" "LLVMModuleRef *")
       ("OutMessage" "char **")
   ))
   ("LLVMGetBitcodeModuleInContext2" "LLVMBool" (
       ("ContextRef" "LLVMContextRef")
       ("MemBuf" "LLVMMemoryBufferRef")
       ("OutM" "LLVMModuleRef *")
   ))
   ("LLVMGetBitcodeModule" "LLVMBool" (
       ("MemBuf" "LLVMMemoryBufferRef")
       ("OutM" "LLVMModuleRef *")
       ("OutMessage" "char **")
   ))
   ("LLVMGetBitcodeModule2" "LLVMBool" (
       ("MemBuf" "LLVMMemoryBufferRef")
       ("OutM" "LLVMModuleRef *")
   ))
   ("LLVMWriteBitcodeToFile" "int" (
       ("M" "LLVMModuleRef")
       ("Path" "const char *")
   ))
   ("LLVMWriteBitcodeToFD" "int" (
       ("M" "LLVMModuleRef")
       ("FD" "int")
       ("ShouldClose" "int")
       ("Unbuffered" "int")
   ))
   ("LLVMWriteBitcodeToFileHandle" "int" (
       ("M" "LLVMModuleRef")
       ("Handle" "int")
   ))
   ("LLVMWriteBitcodeToMemoryBuffer" "LLVMMemoryBufferRef" (
       ("M" "LLVMModuleRef")
   ))
   ("LLVMInstallFatalErrorHandler" "void" (
       ("Handler" "LLVMFatalErrorHandler")
   ))
   ("LLVMResetFatalErrorHandler" "void" (
   ))
   ("LLVMEnablePrettyStackTrace" "void" (
   ))
   ("LLVMInitializeCore" "void" (
       ("R" "LLVMPassRegistryRef")
   ))
   ("LLVMShutdown" "void" (
   ))
   ("LLVMCreateMessage" "char *" (
       ("Message" "const char *")
   ))
   ("LLVMDisposeMessage" "void" (
       ("Message" "char *")
   ))
   ("LLVMContextCreate" "LLVMContextRef" (
   ))
   ("LLVMGetGlobalContext" "LLVMContextRef" (
   ))
   ("LLVMContextSetDiagnosticHandler" "void" (
       ("C" "LLVMContextRef")
       ("Handler" "LLVMDiagnosticHandler")
       ("DiagnosticContext" "void *")
   ))
   ("LLVMContextSetYieldCallback" "void" (
       ("C" "LLVMContextRef")
       ("Callback" "LLVMYieldCallback")
       ("OpaqueHandle" "void *")
   ))
   ("LLVMContextDispose" "void" (
       ("C" "LLVMContextRef")
   ))
   ("LLVMGetDiagInfoDescription" "char *" (
       ("DI" "LLVMDiagnosticInfoRef")
   ))
   ("LLVMGetDiagInfoSeverity" "LLVMDiagnosticSeverity" (
       ("DI" "LLVMDiagnosticInfoRef")
   ))
   ("LLVMGetMDKindIDInContext" "unsigned int" (
       ("C" "LLVMContextRef")
       ("Name" "const char *")
       ("SLen" "unsigned int")
   ))
   ("LLVMGetMDKindID" "unsigned int" (
       ("Name" "const char *")
       ("SLen" "unsigned int")
   ))
   ("LLVMModuleCreateWithName" "LLVMModuleRef" (
       ("ModuleID" "const char *")
   ))
   ("LLVMModuleCreateWithNameInContext" "LLVMModuleRef" (
       ("ModuleID" "const char *")
       ("C" "LLVMContextRef")
   ))
   ("LLVMCloneModule" "LLVMModuleRef" (
       ("M" "LLVMModuleRef")
   ))
   ("LLVMDisposeModule" "void" (
       ("M" "LLVMModuleRef")
   ))
   ("LLVMGetDataLayoutStr" "const char *" (
       ("M" "LLVMModuleRef")
   ))
   ("LLVMGetDataLayout" "const char *" (
       ("M" "LLVMModuleRef")
   ))
   ("LLVMSetDataLayout" "void" (
       ("M" "LLVMModuleRef")
       ("DataLayoutStr" "const char *")
   ))
   ("LLVMGetTarget" "const char *" (
       ("M" "LLVMModuleRef")
   ))
   ("LLVMSetTarget" "void" (
       ("M" "LLVMModuleRef")
       ("Triple" "const char *")
   ))
   ("LLVMDumpModule" "void" (
       ("M" "LLVMModuleRef")
   ))
   ("LLVMPrintModuleToFile" "LLVMBool" (
       ("M" "LLVMModuleRef")
       ("Filename" "const char *")
       ("ErrorMessage" "char **")
   ))
   ("LLVMPrintModuleToString" "char *" (
       ("M" "LLVMModuleRef")
   ))
   ("LLVMSetModuleInlineAsm" "void" (
       ("M" "LLVMModuleRef")
       ("Asm" "const char *")
   ))
   ("LLVMGetModuleContext" "LLVMContextRef" (
       ("M" "LLVMModuleRef")
   ))
   ("LLVMGetTypeByName" "LLVMTypeRef" (
       ("M" "LLVMModuleRef")
       ("Name" "const char *")
   ))
   ("LLVMGetNamedMetadataNumOperands" "unsigned int" (
       ("M" "LLVMModuleRef")
       ("name" "const char *")
   ))
   ("LLVMGetNamedMetadataOperands" "void" (
       ("M" "LLVMModuleRef")
       ("name" "const char *")
       ("Dest" "LLVMValueRef *")
   ))
   ("LLVMAddNamedMetadataOperand" "void" (
       ("M" "LLVMModuleRef")
       ("name" "const char *")
       ("Val" "LLVMValueRef")
   ))
   ("LLVMAddFunction" "LLVMValueRef" (
       ("M" "LLVMModuleRef")
       ("Name" "const char *")
       ("FunctionTy" "LLVMTypeRef")
   ))
   ("LLVMGetNamedFunction" "LLVMValueRef" (
       ("M" "LLVMModuleRef")
       ("Name" "const char *")
   ))
   ("LLVMGetFirstFunction" "LLVMValueRef" (
       ("M" "LLVMModuleRef")
   ))
   ("LLVMGetLastFunction" "LLVMValueRef" (
       ("M" "LLVMModuleRef")
   ))
   ("LLVMGetNextFunction" "LLVMValueRef" (
       ("Fn" "LLVMValueRef")
   ))
   ("LLVMGetPreviousFunction" "LLVMValueRef" (
       ("Fn" "LLVMValueRef")
   ))
   ("LLVMGetTypeKind" "LLVMTypeKind" (
       ("Ty" "LLVMTypeRef")
   ))
   ("LLVMTypeIsSized" "LLVMBool" (
       ("Ty" "LLVMTypeRef")
   ))
   ("LLVMGetTypeContext" "LLVMContextRef" (
       ("Ty" "LLVMTypeRef")
   ))
   ("LLVMDumpType" "void" (
       ("Val" "LLVMTypeRef")
   ))
   ("LLVMPrintTypeToString" "char *" (
       ("Val" "LLVMTypeRef")
   ))
   ("LLVMInt1TypeInContext" "LLVMTypeRef" (
       ("C" "LLVMContextRef")
   ))
   ("LLVMInt8TypeInContext" "LLVMTypeRef" (
       ("C" "LLVMContextRef")
   ))
   ("LLVMInt16TypeInContext" "LLVMTypeRef" (
       ("C" "LLVMContextRef")
   ))
   ("LLVMInt32TypeInContext" "LLVMTypeRef" (
       ("C" "LLVMContextRef")
   ))
   ("LLVMInt64TypeInContext" "LLVMTypeRef" (
       ("C" "LLVMContextRef")
   ))
   ("LLVMInt128TypeInContext" "LLVMTypeRef" (
       ("C" "LLVMContextRef")
   ))
   ("LLVMIntTypeInContext" "LLVMTypeRef" (
       ("C" "LLVMContextRef")
       ("NumBits" "unsigned int")
   ))
   ("LLVMInt1Type" "LLVMTypeRef" (
   ))
   ("LLVMInt8Type" "LLVMTypeRef" (
   ))
   ("LLVMInt16Type" "LLVMTypeRef" (
   ))
   ("LLVMInt32Type" "LLVMTypeRef" (
   ))
   ("LLVMInt64Type" "LLVMTypeRef" (
   ))
   ("LLVMInt128Type" "LLVMTypeRef" (
   ))
   ("LLVMIntType" "LLVMTypeRef" (
       ("NumBits" "unsigned int")
   ))
   ("LLVMGetIntTypeWidth" "unsigned int" (
       ("IntegerTy" "LLVMTypeRef")
   ))
   ("LLVMHalfTypeInContext" "LLVMTypeRef" (
       ("C" "LLVMContextRef")
   ))
   ("LLVMFloatTypeInContext" "LLVMTypeRef" (
       ("C" "LLVMContextRef")
   ))
   ("LLVMDoubleTypeInContext" "LLVMTypeRef" (
       ("C" "LLVMContextRef")
   ))
   ("LLVMX86FP80TypeInContext" "LLVMTypeRef" (
       ("C" "LLVMContextRef")
   ))
   ("LLVMFP128TypeInContext" "LLVMTypeRef" (
       ("C" "LLVMContextRef")
   ))
   ("LLVMPPCFP128TypeInContext" "LLVMTypeRef" (
       ("C" "LLVMContextRef")
   ))
   ("LLVMHalfType" "LLVMTypeRef" (
   ))
   ("LLVMFloatType" "LLVMTypeRef" (
   ))
   ("LLVMDoubleType" "LLVMTypeRef" (
   ))
   ("LLVMX86FP80Type" "LLVMTypeRef" (
   ))
   ("LLVMFP128Type" "LLVMTypeRef" (
   ))
   ("LLVMPPCFP128Type" "LLVMTypeRef" (
   ))
   ("LLVMFunctionType" "LLVMTypeRef" (
       ("ReturnType" "LLVMTypeRef")
       ("ParamTypes" "LLVMTypeRef *")
       ("ParamCount" "unsigned int")
       ("IsVarArg" "LLVMBool")
   ))
   ("LLVMIsFunctionVarArg" "LLVMBool" (
       ("FunctionTy" "LLVMTypeRef")
   ))
   ("LLVMGetReturnType" "LLVMTypeRef" (
       ("FunctionTy" "LLVMTypeRef")
   ))
   ("LLVMCountParamTypes" "unsigned int" (
       ("FunctionTy" "LLVMTypeRef")
   ))
   ("LLVMGetParamTypes" "void" (
       ("FunctionTy" "LLVMTypeRef")
       ("Dest" "LLVMTypeRef *")
   ))
   ("LLVMStructTypeInContext" "LLVMTypeRef" (
       ("C" "LLVMContextRef")
       ("ElementTypes" "LLVMTypeRef *")
       ("ElementCount" "unsigned int")
       ("Packed" "LLVMBool")
   ))
   ("LLVMStructType" "LLVMTypeRef" (
       ("ElementTypes" "LLVMTypeRef *")
       ("ElementCount" "unsigned int")
       ("Packed" "LLVMBool")
   ))
   ("LLVMStructCreateNamed" "LLVMTypeRef" (
       ("C" "LLVMContextRef")
       ("Name" "const char *")
   ))
   ("LLVMGetStructName" "const char *" (
       ("Ty" "LLVMTypeRef")
   ))
   ("LLVMStructSetBody" "void" (
       ("StructTy" "LLVMTypeRef")
       ("ElementTypes" "LLVMTypeRef *")
       ("ElementCount" "unsigned int")
       ("Packed" "LLVMBool")
   ))
   ("LLVMCountStructElementTypes" "unsigned int" (
       ("StructTy" "LLVMTypeRef")
   ))
   ("LLVMGetStructElementTypes" "void" (
       ("StructTy" "LLVMTypeRef")
       ("Dest" "LLVMTypeRef *")
   ))
   ("LLVMStructGetTypeAtIndex" "LLVMTypeRef" (
       ("StructTy" "LLVMTypeRef")
       ("i" "unsigned int")
   ))
   ("LLVMIsPackedStruct" "LLVMBool" (
       ("StructTy" "LLVMTypeRef")
   ))
   ("LLVMIsOpaqueStruct" "LLVMBool" (
       ("StructTy" "LLVMTypeRef")
   ))
   ("LLVMGetElementType" "LLVMTypeRef" (
       ("Ty" "LLVMTypeRef")
   ))
   ("LLVMArrayType" "LLVMTypeRef" (
       ("ElementType" "LLVMTypeRef")
       ("ElementCount" "unsigned int")
   ))
   ("LLVMGetArrayLength" "unsigned int" (
       ("ArrayTy" "LLVMTypeRef")
   ))
   ("LLVMPointerType" "LLVMTypeRef" (
       ("ElementType" "LLVMTypeRef")
       ("AddressSpace" "unsigned int")
   ))
   ("LLVMGetPointerAddressSpace" "unsigned int" (
       ("PointerTy" "LLVMTypeRef")
   ))
   ("LLVMVectorType" "LLVMTypeRef" (
       ("ElementType" "LLVMTypeRef")
       ("ElementCount" "unsigned int")
   ))
   ("LLVMGetVectorSize" "unsigned int" (
       ("VectorTy" "LLVMTypeRef")
   ))
   ("LLVMVoidTypeInContext" "LLVMTypeRef" (
       ("C" "LLVMContextRef")
   ))
   ("LLVMLabelTypeInContext" "LLVMTypeRef" (
       ("C" "LLVMContextRef")
   ))
   ("LLVMX86MMXTypeInContext" "LLVMTypeRef" (
       ("C" "LLVMContextRef")
   ))
   ("LLVMVoidType" "LLVMTypeRef" (
   ))
   ("LLVMLabelType" "LLVMTypeRef" (
   ))
   ("LLVMX86MMXType" "LLVMTypeRef" (
   ))
   ("LLVMTypeOf" "LLVMTypeRef" (
       ("Val" "LLVMValueRef")
   ))
   ("LLVMGetValueName" "const char *" (
       ("Val" "LLVMValueRef")
   ))
   ("LLVMSetValueName" "void" (
       ("Val" "LLVMValueRef")
       ("Name" "const char *")
   ))
   ("LLVMDumpValue" "void" (
       ("Val" "LLVMValueRef")
   ))
   ("LLVMPrintValueToString" "char *" (
       ("Val" "LLVMValueRef")
   ))
   ("LLVMReplaceAllUsesWith" "void" (
       ("OldVal" "LLVMValueRef")
       ("NewVal" "LLVMValueRef")
   ))
   ("LLVMIsConstant" "LLVMBool" (
       ("Val" "LLVMValueRef")
   ))
   ("LLVMIsUndef" "LLVMBool" (
       ("Val" "LLVMValueRef")
   ))
   ("LLVMIsAArgument" "LLVMValueRef" (
       ("Val" "LLVMValueRef")
   ))
   ("LLVMIsABasicBlock" "LLVMValueRef" (
       ("Val" "LLVMValueRef")
   ))
   ("LLVMIsAInlineAsm" "LLVMValueRef" (
       ("Val" "LLVMValueRef")
   ))
   ("LLVMIsAUser" "LLVMValueRef" (
       ("Val" "LLVMValueRef")
   ))
   ("LLVMIsAConstant" "LLVMValueRef" (
       ("Val" "LLVMValueRef")
   ))
   ("LLVMIsABlockAddress" "LLVMValueRef" (
       ("Val" "LLVMValueRef")
   ))
   ("LLVMIsAConstantAggregateZero" "LLVMValueRef" (
       ("Val" "LLVMValueRef")
   ))
   ("LLVMIsAConstantArray" "LLVMValueRef" (
       ("Val" "LLVMValueRef")
   ))
   ("LLVMIsAConstantDataSequential" "LLVMValueRef" (
       ("Val" "LLVMValueRef")
   ))
   ("LLVMIsAConstantDataArray" "LLVMValueRef" (
       ("Val" "LLVMValueRef")
   ))
   ("LLVMIsAConstantDataVector" "LLVMValueRef" (
       ("Val" "LLVMValueRef")
   ))
   ("LLVMIsAConstantExpr" "LLVMValueRef" (
       ("Val" "LLVMValueRef")
   ))
   ("LLVMIsAConstantFP" "LLVMValueRef" (
       ("Val" "LLVMValueRef")
   ))
   ("LLVMIsAConstantInt" "LLVMValueRef" (
       ("Val" "LLVMValueRef")
   ))
   ("LLVMIsAConstantPointerNull" "LLVMValueRef" (
       ("Val" "LLVMValueRef")
   ))
   ("LLVMIsAConstantStruct" "LLVMValueRef" (
       ("Val" "LLVMValueRef")
   ))
   ("LLVMIsAConstantTokenNone" "LLVMValueRef" (
       ("Val" "LLVMValueRef")
   ))
   ("LLVMIsAConstantVector" "LLVMValueRef" (
       ("Val" "LLVMValueRef")
   ))
   ("LLVMIsAGlobalValue" "LLVMValueRef" (
       ("Val" "LLVMValueRef")
   ))
   ("LLVMIsAGlobalAlias" "LLVMValueRef" (
       ("Val" "LLVMValueRef")
   ))
   ("LLVMIsAGlobalObject" "LLVMValueRef" (
       ("Val" "LLVMValueRef")
   ))
   ("LLVMIsAFunction" "LLVMValueRef" (
       ("Val" "LLVMValueRef")
   ))
   ("LLVMIsAGlobalVariable" "LLVMValueRef" (
       ("Val" "LLVMValueRef")
   ))
   ("LLVMIsAUndefValue" "LLVMValueRef" (
       ("Val" "LLVMValueRef")
   ))
   ("LLVMIsAInstruction" "LLVMValueRef" (
       ("Val" "LLVMValueRef")
   ))
   ("LLVMIsABinaryOperator" "LLVMValueRef" (
       ("Val" "LLVMValueRef")
   ))
   ("LLVMIsACallInst" "LLVMValueRef" (
       ("Val" "LLVMValueRef")
   ))
   ("LLVMIsAIntrinsicInst" "LLVMValueRef" (
       ("Val" "LLVMValueRef")
   ))
   ("LLVMIsADbgInfoIntrinsic" "LLVMValueRef" (
       ("Val" "LLVMValueRef")
   ))
   ("LLVMIsADbgDeclareInst" "LLVMValueRef" (
       ("Val" "LLVMValueRef")
   ))
   ("LLVMIsAMemIntrinsic" "LLVMValueRef" (
       ("Val" "LLVMValueRef")
   ))
   ("LLVMIsAMemCpyInst" "LLVMValueRef" (
       ("Val" "LLVMValueRef")
   ))
   ("LLVMIsAMemMoveInst" "LLVMValueRef" (
       ("Val" "LLVMValueRef")
   ))
   ("LLVMIsAMemSetInst" "LLVMValueRef" (
       ("Val" "LLVMValueRef")
   ))
   ("LLVMIsACmpInst" "LLVMValueRef" (
       ("Val" "LLVMValueRef")
   ))
   ("LLVMIsAFCmpInst" "LLVMValueRef" (
       ("Val" "LLVMValueRef")
   ))
   ("LLVMIsAICmpInst" "LLVMValueRef" (
       ("Val" "LLVMValueRef")
   ))
   ("LLVMIsAExtractElementInst" "LLVMValueRef" (
       ("Val" "LLVMValueRef")
   ))
   ("LLVMIsAGetElementPtrInst" "LLVMValueRef" (
       ("Val" "LLVMValueRef")
   ))
   ("LLVMIsAInsertElementInst" "LLVMValueRef" (
       ("Val" "LLVMValueRef")
   ))
   ("LLVMIsAInsertValueInst" "LLVMValueRef" (
       ("Val" "LLVMValueRef")
   ))
   ("LLVMIsALandingPadInst" "LLVMValueRef" (
       ("Val" "LLVMValueRef")
   ))
   ("LLVMIsAPHINode" "LLVMValueRef" (
       ("Val" "LLVMValueRef")
   ))
   ("LLVMIsASelectInst" "LLVMValueRef" (
       ("Val" "LLVMValueRef")
   ))
   ("LLVMIsAShuffleVectorInst" "LLVMValueRef" (
       ("Val" "LLVMValueRef")
   ))
   ("LLVMIsAStoreInst" "LLVMValueRef" (
       ("Val" "LLVMValueRef")
   ))
   ("LLVMIsATerminatorInst" "LLVMValueRef" (
       ("Val" "LLVMValueRef")
   ))
   ("LLVMIsABranchInst" "LLVMValueRef" (
       ("Val" "LLVMValueRef")
   ))
   ("LLVMIsAIndirectBrInst" "LLVMValueRef" (
       ("Val" "LLVMValueRef")
   ))
   ("LLVMIsAInvokeInst" "LLVMValueRef" (
       ("Val" "LLVMValueRef")
   ))
   ("LLVMIsAReturnInst" "LLVMValueRef" (
       ("Val" "LLVMValueRef")
   ))
   ("LLVMIsASwitchInst" "LLVMValueRef" (
       ("Val" "LLVMValueRef")
   ))
   ("LLVMIsAUnreachableInst" "LLVMValueRef" (
       ("Val" "LLVMValueRef")
   ))
   ("LLVMIsAResumeInst" "LLVMValueRef" (
       ("Val" "LLVMValueRef")
   ))
   ("LLVMIsACleanupReturnInst" "LLVMValueRef" (
       ("Val" "LLVMValueRef")
   ))
   ("LLVMIsACatchReturnInst" "LLVMValueRef" (
       ("Val" "LLVMValueRef")
   ))
   ("LLVMIsAFuncletPadInst" "LLVMValueRef" (
       ("Val" "LLVMValueRef")
   ))
   ("LLVMIsACatchPadInst" "LLVMValueRef" (
       ("Val" "LLVMValueRef")
   ))
   ("LLVMIsACleanupPadInst" "LLVMValueRef" (
       ("Val" "LLVMValueRef")
   ))
   ("LLVMIsAUnaryInstruction" "LLVMValueRef" (
       ("Val" "LLVMValueRef")
   ))
   ("LLVMIsAAllocaInst" "LLVMValueRef" (
       ("Val" "LLVMValueRef")
   ))
   ("LLVMIsACastInst" "LLVMValueRef" (
       ("Val" "LLVMValueRef")
   ))
   ("LLVMIsAAddrSpaceCastInst" "LLVMValueRef" (
       ("Val" "LLVMValueRef")
   ))
   ("LLVMIsABitCastInst" "LLVMValueRef" (
       ("Val" "LLVMValueRef")
   ))
   ("LLVMIsAFPExtInst" "LLVMValueRef" (
       ("Val" "LLVMValueRef")
   ))
   ("LLVMIsAFPToSIInst" "LLVMValueRef" (
       ("Val" "LLVMValueRef")
   ))
   ("LLVMIsAFPToUIInst" "LLVMValueRef" (
       ("Val" "LLVMValueRef")
   ))
   ("LLVMIsAFPTruncInst" "LLVMValueRef" (
       ("Val" "LLVMValueRef")
   ))
   ("LLVMIsAIntToPtrInst" "LLVMValueRef" (
       ("Val" "LLVMValueRef")
   ))
   ("LLVMIsAPtrToIntInst" "LLVMValueRef" (
       ("Val" "LLVMValueRef")
   ))
   ("LLVMIsASExtInst" "LLVMValueRef" (
       ("Val" "LLVMValueRef")
   ))
   ("LLVMIsASIToFPInst" "LLVMValueRef" (
       ("Val" "LLVMValueRef")
   ))
   ("LLVMIsATruncInst" "LLVMValueRef" (
       ("Val" "LLVMValueRef")
   ))
   ("LLVMIsAUIToFPInst" "LLVMValueRef" (
       ("Val" "LLVMValueRef")
   ))
   ("LLVMIsAZExtInst" "LLVMValueRef" (
       ("Val" "LLVMValueRef")
   ))
   ("LLVMIsAExtractValueInst" "LLVMValueRef" (
       ("Val" "LLVMValueRef")
   ))
   ("LLVMIsALoadInst" "LLVMValueRef" (
       ("Val" "LLVMValueRef")
   ))
   ("LLVMIsAVAArgInst" "LLVMValueRef" (
       ("Val" "LLVMValueRef")
   ))
   ("LLVMIsAMDNode" "LLVMValueRef" (
       ("Val" "LLVMValueRef")
   ))
   ("LLVMIsAMDString" "LLVMValueRef" (
       ("Val" "LLVMValueRef")
   ))
   ("LLVMGetFirstUse" "LLVMUseRef" (
       ("Val" "LLVMValueRef")
   ))
   ("LLVMGetNextUse" "LLVMUseRef" (
       ("U" "LLVMUseRef")
   ))
   ("LLVMGetUser" "LLVMValueRef" (
       ("U" "LLVMUseRef")
   ))
   ("LLVMGetUsedValue" "LLVMValueRef" (
       ("U" "LLVMUseRef")
   ))
   ("LLVMGetOperand" "LLVMValueRef" (
       ("Val" "LLVMValueRef")
       ("Index" "unsigned int")
   ))
   ("LLVMGetOperandUse" "LLVMUseRef" (
       ("Val" "LLVMValueRef")
       ("Index" "unsigned int")
   ))
   ("LLVMSetOperand" "void" (
       ("User" "LLVMValueRef")
       ("Index" "unsigned int")
       ("Val" "LLVMValueRef")
   ))
   ("LLVMGetNumOperands" "int" (
       ("Val" "LLVMValueRef")
   ))
   ("LLVMConstNull" "LLVMValueRef" (
       ("Ty" "LLVMTypeRef")
   ))
   ("LLVMConstAllOnes" "LLVMValueRef" (
       ("Ty" "LLVMTypeRef")
   ))
   ("LLVMGetUndef" "LLVMValueRef" (
       ("Ty" "LLVMTypeRef")
   ))
   ("LLVMIsNull" "LLVMBool" (
       ("Val" "LLVMValueRef")
   ))
   ("LLVMConstPointerNull" "LLVMValueRef" (
       ("Ty" "LLVMTypeRef")
   ))
   ("LLVMConstInt" "LLVMValueRef" (
       ("IntTy" "LLVMTypeRef")
       ("N" "unsigned long long")
       ("SignExtend" "LLVMBool")
   ))
   ("LLVMConstIntOfArbitraryPrecision" "LLVMValueRef" (
       ("IntTy" "LLVMTypeRef")
       ("NumWords" "unsigned int")
       ("Words" "const uint64_t *")
   ))
   ("LLVMConstIntOfString" "LLVMValueRef" (
       ("IntTy" "LLVMTypeRef")
       ("Text" "const char *")
       ("Radix" "uint8_t")
   ))
   ("LLVMConstIntOfStringAndSize" "LLVMValueRef" (
       ("IntTy" "LLVMTypeRef")
       ("Text" "const char *")
       ("SLen" "unsigned int")
       ("Radix" "uint8_t")
   ))
   ("LLVMConstReal" "LLVMValueRef" (
       ("RealTy" "LLVMTypeRef")
       ("N" "double")
   ))
   ("LLVMConstRealOfString" "LLVMValueRef" (
       ("RealTy" "LLVMTypeRef")
       ("Text" "const char *")
   ))
   ("LLVMConstRealOfStringAndSize" "LLVMValueRef" (
       ("RealTy" "LLVMTypeRef")
       ("Text" "const char *")
       ("SLen" "unsigned int")
   ))
   ("LLVMConstIntGetZExtValue" "unsigned long long" (
       ("ConstantVal" "LLVMValueRef")
   ))
   ("LLVMConstIntGetSExtValue" "long long" (
       ("ConstantVal" "LLVMValueRef")
   ))
   ("LLVMConstRealGetDouble" "double" (
       ("ConstantVal" "LLVMValueRef")
       ("losesInfo" "LLVMBool *")
   ))
   ("LLVMConstStringInContext" "LLVMValueRef" (
       ("C" "LLVMContextRef")
       ("Str" "const char *")
       ("Length" "unsigned int")
       ("DontNullTerminate" "LLVMBool")
   ))
   ("LLVMConstString" "LLVMValueRef" (
       ("Str" "const char *")
       ("Length" "unsigned int")
       ("DontNullTerminate" "LLVMBool")
   ))
   ("LLVMIsConstantString" "LLVMBool" (
       ("c" "LLVMValueRef")
   ))
   ("LLVMGetAsString" "const char *" (
       ("c" "LLVMValueRef")
       ("out" "size_t *")
   ))
   ("LLVMConstStructInContext" "LLVMValueRef" (
       ("C" "LLVMContextRef")
       ("ConstantVals" "LLVMValueRef *")
       ("Count" "unsigned int")
       ("Packed" "LLVMBool")
   ))
   ("LLVMConstStruct" "LLVMValueRef" (
       ("ConstantVals" "LLVMValueRef *")
       ("Count" "unsigned int")
       ("Packed" "LLVMBool")
   ))
   ("LLVMConstArray" "LLVMValueRef" (
       ("ElementTy" "LLVMTypeRef")
       ("ConstantVals" "LLVMValueRef *")
       ("Length" "unsigned int")
   ))
   ("LLVMConstNamedStruct" "LLVMValueRef" (
       ("StructTy" "LLVMTypeRef")
       ("ConstantVals" "LLVMValueRef *")
       ("Count" "unsigned int")
   ))
   ("LLVMGetElementAsConstant" "LLVMValueRef" (
       ("C" "LLVMValueRef")
       ("idx" "unsigned int")
   ))
   ("LLVMConstVector" "LLVMValueRef" (
       ("ScalarConstantVals" "LLVMValueRef *")
       ("Size" "unsigned int")
   ))
   ("LLVMGetConstOpcode" "LLVMOpcode" (
       ("ConstantVal" "LLVMValueRef")
   ))
   ("LLVMAlignOf" "LLVMValueRef" (
       ("Ty" "LLVMTypeRef")
   ))
   ("LLVMSizeOf" "LLVMValueRef" (
       ("Ty" "LLVMTypeRef")
   ))
   ("LLVMConstNeg" "LLVMValueRef" (
       ("ConstantVal" "LLVMValueRef")
   ))
   ("LLVMConstNSWNeg" "LLVMValueRef" (
       ("ConstantVal" "LLVMValueRef")
   ))
   ("LLVMConstNUWNeg" "LLVMValueRef" (
       ("ConstantVal" "LLVMValueRef")
   ))
   ("LLVMConstFNeg" "LLVMValueRef" (
       ("ConstantVal" "LLVMValueRef")
   ))
   ("LLVMConstNot" "LLVMValueRef" (
       ("ConstantVal" "LLVMValueRef")
   ))
   ("LLVMConstAdd" "LLVMValueRef" (
       ("LHSConstant" "LLVMValueRef")
       ("RHSConstant" "LLVMValueRef")
   ))
   ("LLVMConstNSWAdd" "LLVMValueRef" (
       ("LHSConstant" "LLVMValueRef")
       ("RHSConstant" "LLVMValueRef")
   ))
   ("LLVMConstNUWAdd" "LLVMValueRef" (
       ("LHSConstant" "LLVMValueRef")
       ("RHSConstant" "LLVMValueRef")
   ))
   ("LLVMConstFAdd" "LLVMValueRef" (
       ("LHSConstant" "LLVMValueRef")
       ("RHSConstant" "LLVMValueRef")
   ))
   ("LLVMConstSub" "LLVMValueRef" (
       ("LHSConstant" "LLVMValueRef")
       ("RHSConstant" "LLVMValueRef")
   ))
   ("LLVMConstNSWSub" "LLVMValueRef" (
       ("LHSConstant" "LLVMValueRef")
       ("RHSConstant" "LLVMValueRef")
   ))
   ("LLVMConstNUWSub" "LLVMValueRef" (
       ("LHSConstant" "LLVMValueRef")
       ("RHSConstant" "LLVMValueRef")
   ))
   ("LLVMConstFSub" "LLVMValueRef" (
       ("LHSConstant" "LLVMValueRef")
       ("RHSConstant" "LLVMValueRef")
   ))
   ("LLVMConstMul" "LLVMValueRef" (
       ("LHSConstant" "LLVMValueRef")
       ("RHSConstant" "LLVMValueRef")
   ))
   ("LLVMConstNSWMul" "LLVMValueRef" (
       ("LHSConstant" "LLVMValueRef")
       ("RHSConstant" "LLVMValueRef")
   ))
   ("LLVMConstNUWMul" "LLVMValueRef" (
       ("LHSConstant" "LLVMValueRef")
       ("RHSConstant" "LLVMValueRef")
   ))
   ("LLVMConstFMul" "LLVMValueRef" (
       ("LHSConstant" "LLVMValueRef")
       ("RHSConstant" "LLVMValueRef")
   ))
   ("LLVMConstUDiv" "LLVMValueRef" (
       ("LHSConstant" "LLVMValueRef")
       ("RHSConstant" "LLVMValueRef")
   ))
   ("LLVMConstSDiv" "LLVMValueRef" (
       ("LHSConstant" "LLVMValueRef")
       ("RHSConstant" "LLVMValueRef")
   ))
   ("LLVMConstExactSDiv" "LLVMValueRef" (
       ("LHSConstant" "LLVMValueRef")
       ("RHSConstant" "LLVMValueRef")
   ))
   ("LLVMConstFDiv" "LLVMValueRef" (
       ("LHSConstant" "LLVMValueRef")
       ("RHSConstant" "LLVMValueRef")
   ))
   ("LLVMConstURem" "LLVMValueRef" (
       ("LHSConstant" "LLVMValueRef")
       ("RHSConstant" "LLVMValueRef")
   ))
   ("LLVMConstSRem" "LLVMValueRef" (
       ("LHSConstant" "LLVMValueRef")
       ("RHSConstant" "LLVMValueRef")
   ))
   ("LLVMConstFRem" "LLVMValueRef" (
       ("LHSConstant" "LLVMValueRef")
       ("RHSConstant" "LLVMValueRef")
   ))
   ("LLVMConstAnd" "LLVMValueRef" (
       ("LHSConstant" "LLVMValueRef")
       ("RHSConstant" "LLVMValueRef")
   ))
   ("LLVMConstOr" "LLVMValueRef" (
       ("LHSConstant" "LLVMValueRef")
       ("RHSConstant" "LLVMValueRef")
   ))
   ("LLVMConstXor" "LLVMValueRef" (
       ("LHSConstant" "LLVMValueRef")
       ("RHSConstant" "LLVMValueRef")
   ))
   ("LLVMConstICmp" "LLVMValueRef" (
       ("Predicate" "LLVMIntPredicate")
       ("LHSConstant" "LLVMValueRef")
       ("RHSConstant" "LLVMValueRef")
   ))
   ("LLVMConstFCmp" "LLVMValueRef" (
       ("Predicate" "LLVMRealPredicate")
       ("LHSConstant" "LLVMValueRef")
       ("RHSConstant" "LLVMValueRef")
   ))
   ("LLVMConstShl" "LLVMValueRef" (
       ("LHSConstant" "LLVMValueRef")
       ("RHSConstant" "LLVMValueRef")
   ))
   ("LLVMConstLShr" "LLVMValueRef" (
       ("LHSConstant" "LLVMValueRef")
       ("RHSConstant" "LLVMValueRef")
   ))
   ("LLVMConstAShr" "LLVMValueRef" (
       ("LHSConstant" "LLVMValueRef")
       ("RHSConstant" "LLVMValueRef")
   ))
   ("LLVMConstGEP" "LLVMValueRef" (
       ("ConstantVal" "LLVMValueRef")
       ("ConstantIndices" "LLVMValueRef *")
       ("NumIndices" "unsigned int")
   ))
   ("LLVMConstInBoundsGEP" "LLVMValueRef" (
       ("ConstantVal" "LLVMValueRef")
       ("ConstantIndices" "LLVMValueRef *")
       ("NumIndices" "unsigned int")
   ))
   ("LLVMConstTrunc" "LLVMValueRef" (
       ("ConstantVal" "LLVMValueRef")
       ("ToType" "LLVMTypeRef")
   ))
   ("LLVMConstSExt" "LLVMValueRef" (
       ("ConstantVal" "LLVMValueRef")
       ("ToType" "LLVMTypeRef")
   ))
   ("LLVMConstZExt" "LLVMValueRef" (
       ("ConstantVal" "LLVMValueRef")
       ("ToType" "LLVMTypeRef")
   ))
   ("LLVMConstFPTrunc" "LLVMValueRef" (
       ("ConstantVal" "LLVMValueRef")
       ("ToType" "LLVMTypeRef")
   ))
   ("LLVMConstFPExt" "LLVMValueRef" (
       ("ConstantVal" "LLVMValueRef")
       ("ToType" "LLVMTypeRef")
   ))
   ("LLVMConstUIToFP" "LLVMValueRef" (
       ("ConstantVal" "LLVMValueRef")
       ("ToType" "LLVMTypeRef")
   ))
   ("LLVMConstSIToFP" "LLVMValueRef" (
       ("ConstantVal" "LLVMValueRef")
       ("ToType" "LLVMTypeRef")
   ))
   ("LLVMConstFPToUI" "LLVMValueRef" (
       ("ConstantVal" "LLVMValueRef")
       ("ToType" "LLVMTypeRef")
   ))
   ("LLVMConstFPToSI" "LLVMValueRef" (
       ("ConstantVal" "LLVMValueRef")
       ("ToType" "LLVMTypeRef")
   ))
   ("LLVMConstPtrToInt" "LLVMValueRef" (
       ("ConstantVal" "LLVMValueRef")
       ("ToType" "LLVMTypeRef")
   ))
   ("LLVMConstIntToPtr" "LLVMValueRef" (
       ("ConstantVal" "LLVMValueRef")
       ("ToType" "LLVMTypeRef")
   ))
   ("LLVMConstBitCast" "LLVMValueRef" (
       ("ConstantVal" "LLVMValueRef")
       ("ToType" "LLVMTypeRef")
   ))
   ("LLVMConstAddrSpaceCast" "LLVMValueRef" (
       ("ConstantVal" "LLVMValueRef")
       ("ToType" "LLVMTypeRef")
   ))
   ("LLVMConstZExtOrBitCast" "LLVMValueRef" (
       ("ConstantVal" "LLVMValueRef")
       ("ToType" "LLVMTypeRef")
   ))
   ("LLVMConstSExtOrBitCast" "LLVMValueRef" (
       ("ConstantVal" "LLVMValueRef")
       ("ToType" "LLVMTypeRef")
   ))
   ("LLVMConstTruncOrBitCast" "LLVMValueRef" (
       ("ConstantVal" "LLVMValueRef")
       ("ToType" "LLVMTypeRef")
   ))
   ("LLVMConstPointerCast" "LLVMValueRef" (
       ("ConstantVal" "LLVMValueRef")
       ("ToType" "LLVMTypeRef")
   ))
   ("LLVMConstIntCast" "LLVMValueRef" (
       ("ConstantVal" "LLVMValueRef")
       ("ToType" "LLVMTypeRef")
       ("isSigned" "LLVMBool")
   ))
   ("LLVMConstFPCast" "LLVMValueRef" (
       ("ConstantVal" "LLVMValueRef")
       ("ToType" "LLVMTypeRef")
   ))
   ("LLVMConstSelect" "LLVMValueRef" (
       ("ConstantCondition" "LLVMValueRef")
       ("ConstantIfTrue" "LLVMValueRef")
       ("ConstantIfFalse" "LLVMValueRef")
   ))
   ("LLVMConstExtractElement" "LLVMValueRef" (
       ("VectorConstant" "LLVMValueRef")
       ("IndexConstant" "LLVMValueRef")
   ))
   ("LLVMConstInsertElement" "LLVMValueRef" (
       ("VectorConstant" "LLVMValueRef")
       ("ElementValueConstant" "LLVMValueRef")
       ("IndexConstant" "LLVMValueRef")
   ))
   ("LLVMConstShuffleVector" "LLVMValueRef" (
       ("VectorAConstant" "LLVMValueRef")
       ("VectorBConstant" "LLVMValueRef")
       ("MaskConstant" "LLVMValueRef")
   ))
   ("LLVMConstExtractValue" "LLVMValueRef" (
       ("AggConstant" "LLVMValueRef")
       ("IdxList" "unsigned int *")
       ("NumIdx" "unsigned int")
   ))
   ("LLVMConstInsertValue" "LLVMValueRef" (
       ("AggConstant" "LLVMValueRef")
       ("ElementValueConstant" "LLVMValueRef")
       ("IdxList" "unsigned int *")
       ("NumIdx" "unsigned int")
   ))
   ("LLVMConstInlineAsm" "LLVMValueRef" (
       ("Ty" "LLVMTypeRef")
       ("AsmString" "const char *")
       ("Constraints" "const char *")
       ("HasSideEffects" "LLVMBool")
       ("IsAlignStack" "LLVMBool")
   ))
   ("LLVMBlockAddress" "LLVMValueRef" (
       ("F" "LLVMValueRef")
       ("BB" "LLVMBasicBlockRef")
   ))
   ("LLVMGetGlobalParent" "LLVMModuleRef" (
       ("Global" "LLVMValueRef")
   ))
   ("LLVMIsDeclaration" "LLVMBool" (
       ("Global" "LLVMValueRef")
   ))
   ("LLVMGetLinkage" "LLVMLinkage" (
       ("Global" "LLVMValueRef")
   ))
   ("LLVMSetLinkage" "void" (
       ("Global" "LLVMValueRef")
       ("Linkage" "LLVMLinkage")
   ))
   ("LLVMGetSection" "const char *" (
       ("Global" "LLVMValueRef")
   ))
   ("LLVMSetSection" "void" (
       ("Global" "LLVMValueRef")
       ("Section" "const char *")
   ))
   ("LLVMGetVisibility" "LLVMVisibility" (
       ("Global" "LLVMValueRef")
   ))
   ("LLVMSetVisibility" "void" (
       ("Global" "LLVMValueRef")
       ("Viz" "LLVMVisibility")
   ))
   ("LLVMGetDLLStorageClass" "LLVMDLLStorageClass" (
       ("Global" "LLVMValueRef")
   ))
   ("LLVMSetDLLStorageClass" "void" (
       ("Global" "LLVMValueRef")
       ("Class" "LLVMDLLStorageClass")
   ))
   ("LLVMHasUnnamedAddr" "LLVMBool" (
       ("Global" "LLVMValueRef")
   ))
   ("LLVMSetUnnamedAddr" "void" (
       ("Global" "LLVMValueRef")
       ("HasUnnamedAddr" "LLVMBool")
   ))
   ("LLVMGetAlignment" "unsigned int" (
       ("V" "LLVMValueRef")
   ))
   ("LLVMSetAlignment" "void" (
       ("V" "LLVMValueRef")
       ("Bytes" "unsigned int")
   ))
   ("LLVMAddGlobal" "LLVMValueRef" (
       ("M" "LLVMModuleRef")
       ("Ty" "LLVMTypeRef")
       ("Name" "const char *")
   ))
   ("LLVMAddGlobalInAddressSpace" "LLVMValueRef" (
       ("M" "LLVMModuleRef")
       ("Ty" "LLVMTypeRef")
       ("Name" "const char *")
       ("AddressSpace" "unsigned int")
   ))
   ("LLVMGetNamedGlobal" "LLVMValueRef" (
       ("M" "LLVMModuleRef")
       ("Name" "const char *")
   ))
   ("LLVMGetFirstGlobal" "LLVMValueRef" (
       ("M" "LLVMModuleRef")
   ))
   ("LLVMGetLastGlobal" "LLVMValueRef" (
       ("M" "LLVMModuleRef")
   ))
   ("LLVMGetNextGlobal" "LLVMValueRef" (
       ("GlobalVar" "LLVMValueRef")
   ))
   ("LLVMGetPreviousGlobal" "LLVMValueRef" (
       ("GlobalVar" "LLVMValueRef")
   ))
   ("LLVMDeleteGlobal" "void" (
       ("GlobalVar" "LLVMValueRef")
   ))
   ("LLVMGetInitializer" "LLVMValueRef" (
       ("GlobalVar" "LLVMValueRef")
   ))
   ("LLVMSetInitializer" "void" (
       ("GlobalVar" "LLVMValueRef")
       ("ConstantVal" "LLVMValueRef")
   ))
   ("LLVMIsThreadLocal" "LLVMBool" (
       ("GlobalVar" "LLVMValueRef")
   ))
   ("LLVMSetThreadLocal" "void" (
       ("GlobalVar" "LLVMValueRef")
       ("IsThreadLocal" "LLVMBool")
   ))
   ("LLVMIsGlobalConstant" "LLVMBool" (
       ("GlobalVar" "LLVMValueRef")
   ))
   ("LLVMSetGlobalConstant" "void" (
       ("GlobalVar" "LLVMValueRef")
       ("IsConstant" "LLVMBool")
   ))
   ("LLVMGetThreadLocalMode" "LLVMThreadLocalMode" (
       ("GlobalVar" "LLVMValueRef")
   ))
   ("LLVMSetThreadLocalMode" "void" (
       ("GlobalVar" "LLVMValueRef")
       ("Mode" "LLVMThreadLocalMode")
   ))
   ("LLVMIsExternallyInitialized" "LLVMBool" (
       ("GlobalVar" "LLVMValueRef")
   ))
   ("LLVMSetExternallyInitialized" "void" (
       ("GlobalVar" "LLVMValueRef")
       ("IsExtInit" "LLVMBool")
   ))
   ("LLVMAddAlias" "LLVMValueRef" (
       ("M" "LLVMModuleRef")
       ("Ty" "LLVMTypeRef")
       ("Aliasee" "LLVMValueRef")
       ("Name" "const char *")
   ))
   ("LLVMDeleteFunction" "void" (
       ("Fn" "LLVMValueRef")
   ))
   ("LLVMHasPersonalityFn" "LLVMBool" (
       ("Fn" "LLVMValueRef")
   ))
   ("LLVMGetPersonalityFn" "LLVMValueRef" (
       ("Fn" "LLVMValueRef")
   ))
   ("LLVMSetPersonalityFn" "void" (
       ("Fn" "LLVMValueRef")
       ("PersonalityFn" "LLVMValueRef")
   ))
   ("LLVMGetIntrinsicID" "unsigned int" (
       ("Fn" "LLVMValueRef")
   ))
   ("LLVMGetFunctionCallConv" "unsigned int" (
       ("Fn" "LLVMValueRef")
   ))
   ("LLVMSetFunctionCallConv" "void" (
       ("Fn" "LLVMValueRef")
       ("CC" "unsigned int")
   ))
   ("LLVMGetGC" "const char *" (
       ("Fn" "LLVMValueRef")
   ))
   ("LLVMSetGC" "void" (
       ("Fn" "LLVMValueRef")
       ("Name" "const char *")
   ))
   ("LLVMAddFunctionAttr" "void" (
       ("Fn" "LLVMValueRef")
       ("PA" "LLVMAttribute")
   ))
   ("LLVMAddTargetDependentFunctionAttr" "void" (
       ("Fn" "LLVMValueRef")
       ("A" "const char *")
       ("V" "const char *")
   ))
   ("LLVMGetFunctionAttr" "LLVMAttribute" (
       ("Fn" "LLVMValueRef")
   ))
   ("LLVMRemoveFunctionAttr" "void" (
       ("Fn" "LLVMValueRef")
       ("PA" "LLVMAttribute")
   ))
   ("LLVMCountParams" "unsigned int" (
       ("Fn" "LLVMValueRef")
   ))
   ("LLVMGetParams" "void" (
       ("Fn" "LLVMValueRef")
       ("Params" "LLVMValueRef *")
   ))
   ("LLVMGetParam" "LLVMValueRef" (
       ("Fn" "LLVMValueRef")
       ("Index" "unsigned int")
   ))
   ("LLVMGetParamParent" "LLVMValueRef" (
       ("Inst" "LLVMValueRef")
   ))
   ("LLVMGetFirstParam" "LLVMValueRef" (
       ("Fn" "LLVMValueRef")
   ))
   ("LLVMGetLastParam" "LLVMValueRef" (
       ("Fn" "LLVMValueRef")
   ))
   ("LLVMGetNextParam" "LLVMValueRef" (
       ("Arg" "LLVMValueRef")
   ))
   ("LLVMGetPreviousParam" "LLVMValueRef" (
       ("Arg" "LLVMValueRef")
   ))
   ("LLVMAddAttribute" "void" (
       ("Arg" "LLVMValueRef")
       ("PA" "LLVMAttribute")
   ))
   ("LLVMRemoveAttribute" "void" (
       ("Arg" "LLVMValueRef")
       ("PA" "LLVMAttribute")
   ))
   ("LLVMGetAttribute" "LLVMAttribute" (
       ("Arg" "LLVMValueRef")
   ))
   ("LLVMSetParamAlignment" "void" (
       ("Arg" "LLVMValueRef")
       ("align" "unsigned int")
   ))
   ("LLVMMDStringInContext" "LLVMValueRef" (
       ("C" "LLVMContextRef")
       ("Str" "const char *")
       ("SLen" "unsigned int")
   ))
   ("LLVMMDString" "LLVMValueRef" (
       ("Str" "const char *")
       ("SLen" "unsigned int")
   ))
   ("LLVMMDNodeInContext" "LLVMValueRef" (
       ("C" "LLVMContextRef")
       ("Vals" "LLVMValueRef *")
       ("Count" "unsigned int")
   ))
   ("LLVMMDNode" "LLVMValueRef" (
       ("Vals" "LLVMValueRef *")
       ("Count" "unsigned int")
   ))
   ("LLVMGetMDString" "const char *" (
       ("V" "LLVMValueRef")
       ("Len" "unsigned int *")
   ))
   ("LLVMGetMDNodeNumOperands" "unsigned int" (
       ("V" "LLVMValueRef")
   ))
   ("LLVMGetMDNodeOperands" "void" (
       ("V" "LLVMValueRef")
       ("Dest" "LLVMValueRef *")
   ))
   ("LLVMBasicBlockAsValue" "LLVMValueRef" (
       ("BB" "LLVMBasicBlockRef")
   ))
   ("LLVMValueIsBasicBlock" "LLVMBool" (
       ("Val" "LLVMValueRef")
   ))
   ("LLVMValueAsBasicBlock" "LLVMBasicBlockRef" (
       ("Val" "LLVMValueRef")
   ))
   ("LLVMGetBasicBlockName" "const char *" (
       ("BB" "LLVMBasicBlockRef")
   ))
   ("LLVMGetBasicBlockParent" "LLVMValueRef" (
       ("BB" "LLVMBasicBlockRef")
   ))
   ("LLVMGetBasicBlockTerminator" "LLVMValueRef" (
       ("BB" "LLVMBasicBlockRef")
   ))
   ("LLVMCountBasicBlocks" "unsigned int" (
       ("Fn" "LLVMValueRef")
   ))
   ("LLVMGetBasicBlocks" "void" (
       ("Fn" "LLVMValueRef")
       ("BasicBlocks" "LLVMBasicBlockRef *")
   ))
   ("LLVMGetFirstBasicBlock" "LLVMBasicBlockRef" (
       ("Fn" "LLVMValueRef")
   ))
   ("LLVMGetLastBasicBlock" "LLVMBasicBlockRef" (
       ("Fn" "LLVMValueRef")
   ))
   ("LLVMGetNextBasicBlock" "LLVMBasicBlockRef" (
       ("BB" "LLVMBasicBlockRef")
   ))
   ("LLVMGetPreviousBasicBlock" "LLVMBasicBlockRef" (
       ("BB" "LLVMBasicBlockRef")
   ))
   ("LLVMGetEntryBasicBlock" "LLVMBasicBlockRef" (
       ("Fn" "LLVMValueRef")
   ))
   ("LLVMAppendBasicBlockInContext" "LLVMBasicBlockRef" (
       ("C" "LLVMContextRef")
       ("Fn" "LLVMValueRef")
       ("Name" "const char *")
   ))
   ("LLVMAppendBasicBlock" "LLVMBasicBlockRef" (
       ("Fn" "LLVMValueRef")
       ("Name" "const char *")
   ))
   ("LLVMInsertBasicBlockInContext" "LLVMBasicBlockRef" (
       ("C" "LLVMContextRef")
       ("BB" "LLVMBasicBlockRef")
       ("Name" "const char *")
   ))
   ("LLVMInsertBasicBlock" "LLVMBasicBlockRef" (
       ("InsertBeforeBB" "LLVMBasicBlockRef")
       ("Name" "const char *")
   ))
   ("LLVMDeleteBasicBlock" "void" (
       ("BB" "LLVMBasicBlockRef")
   ))
   ("LLVMRemoveBasicBlockFromParent" "void" (
       ("BB" "LLVMBasicBlockRef")
   ))
   ("LLVMMoveBasicBlockBefore" "void" (
       ("BB" "LLVMBasicBlockRef")
       ("MovePos" "LLVMBasicBlockRef")
   ))
   ("LLVMMoveBasicBlockAfter" "void" (
       ("BB" "LLVMBasicBlockRef")
       ("MovePos" "LLVMBasicBlockRef")
   ))
   ("LLVMGetFirstInstruction" "LLVMValueRef" (
       ("BB" "LLVMBasicBlockRef")
   ))
   ("LLVMGetLastInstruction" "LLVMValueRef" (
       ("BB" "LLVMBasicBlockRef")
   ))
   ("LLVMHasMetadata" "int" (
       ("Val" "LLVMValueRef")
   ))
   ("LLVMGetMetadata" "LLVMValueRef" (
       ("Val" "LLVMValueRef")
       ("KindID" "unsigned int")
   ))
   ("LLVMSetMetadata" "void" (
       ("Val" "LLVMValueRef")
       ("KindID" "unsigned int")
       ("Node" "LLVMValueRef")
   ))
   ("LLVMGetInstructionParent" "LLVMBasicBlockRef" (
       ("Inst" "LLVMValueRef")
   ))
   ("LLVMGetNextInstruction" "LLVMValueRef" (
       ("Inst" "LLVMValueRef")
   ))
   ("LLVMGetPreviousInstruction" "LLVMValueRef" (
       ("Inst" "LLVMValueRef")
   ))
   ("LLVMInstructionRemoveFromParent" "void" (
       ("Inst" "LLVMValueRef")
   ))
   ("LLVMInstructionEraseFromParent" "void" (
       ("Inst" "LLVMValueRef")
   ))
   ("LLVMGetInstructionOpcode" "LLVMOpcode" (
       ("Inst" "LLVMValueRef")
   ))
   ("LLVMGetICmpPredicate" "LLVMIntPredicate" (
       ("Inst" "LLVMValueRef")
   ))
   ("LLVMGetFCmpPredicate" "LLVMRealPredicate" (
       ("Inst" "LLVMValueRef")
   ))
   ("LLVMInstructionClone" "LLVMValueRef" (
       ("Inst" "LLVMValueRef")
   ))
   ("LLVMGetNumArgOperands" "unsigned int" (
       ("Instr" "LLVMValueRef")
   ))
   ("LLVMSetInstructionCallConv" "void" (
       ("Instr" "LLVMValueRef")
       ("CC" "unsigned int")
   ))
   ("LLVMGetInstructionCallConv" "unsigned int" (
       ("Instr" "LLVMValueRef")
   ))
   ("LLVMAddInstrAttribute" "void" (
       ("Instr" "LLVMValueRef")
       ("index" "unsigned int")
       ("A0" "LLVMAttribute")
   ))
   ("LLVMRemoveInstrAttribute" "void" (
       ("Instr" "LLVMValueRef")
       ("index" "unsigned int")
       ("A0" "LLVMAttribute")
   ))
   ("LLVMSetInstrParamAlignment" "void" (
       ("Instr" "LLVMValueRef")
       ("index" "unsigned int")
       ("align" "unsigned int")
   ))
   ("LLVMGetCalledValue" "LLVMValueRef" (
       ("Instr" "LLVMValueRef")
   ))
   ("LLVMIsTailCall" "LLVMBool" (
       ("CallInst" "LLVMValueRef")
   ))
   ("LLVMSetTailCall" "void" (
       ("CallInst" "LLVMValueRef")
       ("IsTailCall" "LLVMBool")
   ))
   ("LLVMGetNormalDest" "LLVMBasicBlockRef" (
       ("InvokeInst" "LLVMValueRef")
   ))
   ("LLVMGetUnwindDest" "LLVMBasicBlockRef" (
       ("InvokeInst" "LLVMValueRef")
   ))
   ("LLVMSetNormalDest" "void" (
       ("InvokeInst" "LLVMValueRef")
       ("B" "LLVMBasicBlockRef")
   ))
   ("LLVMSetUnwindDest" "void" (
       ("InvokeInst" "LLVMValueRef")
       ("B" "LLVMBasicBlockRef")
   ))
   ("LLVMGetNumSuccessors" "unsigned int" (
       ("Term" "LLVMValueRef")
   ))
   ("LLVMGetSuccessor" "LLVMBasicBlockRef" (
       ("Term" "LLVMValueRef")
       ("i" "unsigned int")
   ))
   ("LLVMSetSuccessor" "void" (
       ("Term" "LLVMValueRef")
       ("i" "unsigned int")
       ("block" "LLVMBasicBlockRef")
   ))
   ("LLVMIsConditional" "LLVMBool" (
       ("Branch" "LLVMValueRef")
   ))
   ("LLVMGetCondition" "LLVMValueRef" (
       ("Branch" "LLVMValueRef")
   ))
   ("LLVMSetCondition" "void" (
       ("Branch" "LLVMValueRef")
       ("Cond" "LLVMValueRef")
   ))
   ("LLVMGetSwitchDefaultDest" "LLVMBasicBlockRef" (
       ("SwitchInstr" "LLVMValueRef")
   ))
   ("LLVMGetAllocatedType" "LLVMTypeRef" (
       ("Alloca" "LLVMValueRef")
   ))
   ("LLVMIsInBounds" "LLVMBool" (
       ("GEP" "LLVMValueRef")
   ))
   ("LLVMSetIsInBounds" "void" (
       ("GEP" "LLVMValueRef")
       ("b" "LLVMBool")
   ))
   ("LLVMAddIncoming" "void" (
       ("PhiNode" "LLVMValueRef")
       ("IncomingValues" "LLVMValueRef *")
       ("IncomingBlocks" "LLVMBasicBlockRef *")
       ("Count" "unsigned int")
   ))
   ("LLVMCountIncoming" "unsigned int" (
       ("PhiNode" "LLVMValueRef")
   ))
   ("LLVMGetIncomingValue" "LLVMValueRef" (
       ("PhiNode" "LLVMValueRef")
       ("Index" "unsigned int")
   ))
   ("LLVMGetIncomingBlock" "LLVMBasicBlockRef" (
       ("PhiNode" "LLVMValueRef")
       ("Index" "unsigned int")
   ))
   ("LLVMGetNumIndices" "unsigned int" (
       ("Inst" "LLVMValueRef")
   ))
   ("LLVMGetIndices" "const unsigned int *" (
       ("Inst" "LLVMValueRef")
   ))
   ("LLVMCreateBuilderInContext" "LLVMBuilderRef" (
       ("C" "LLVMContextRef")
   ))
   ("LLVMCreateBuilder" "LLVMBuilderRef" (
   ))
   ("LLVMPositionBuilder" "void" (
       ("Builder" "LLVMBuilderRef")
       ("Block" "LLVMBasicBlockRef")
       ("Instr" "LLVMValueRef")
   ))
   ("LLVMPositionBuilderBefore" "void" (
       ("Builder" "LLVMBuilderRef")
       ("Instr" "LLVMValueRef")
   ))
   ("LLVMPositionBuilderAtEnd" "void" (
       ("Builder" "LLVMBuilderRef")
       ("Block" "LLVMBasicBlockRef")
   ))
   ("LLVMGetInsertBlock" "LLVMBasicBlockRef" (
       ("Builder" "LLVMBuilderRef")
   ))
   ("LLVMClearInsertionPosition" "void" (
       ("Builder" "LLVMBuilderRef")
   ))
   ("LLVMInsertIntoBuilder" "void" (
       ("Builder" "LLVMBuilderRef")
       ("Instr" "LLVMValueRef")
   ))
   ("LLVMInsertIntoBuilderWithName" "void" (
       ("Builder" "LLVMBuilderRef")
       ("Instr" "LLVMValueRef")
       ("Name" "const char *")
   ))
   ("LLVMDisposeBuilder" "void" (
       ("Builder" "LLVMBuilderRef")
   ))
   ("LLVMSetCurrentDebugLocation" "void" (
       ("Builder" "LLVMBuilderRef")
       ("L" "LLVMValueRef")
   ))
   ("LLVMGetCurrentDebugLocation" "LLVMValueRef" (
       ("Builder" "LLVMBuilderRef")
   ))
   ("LLVMSetInstDebugLocation" "void" (
       ("Builder" "LLVMBuilderRef")
       ("Inst" "LLVMValueRef")
   ))
   ("LLVMBuildRetVoid" "LLVMValueRef" (
       ("A0" "LLVMBuilderRef")
   ))
   ("LLVMBuildRet" "LLVMValueRef" (
       ("A0" "LLVMBuilderRef")
       ("V" "LLVMValueRef")
   ))
   ("LLVMBuildAggregateRet" "LLVMValueRef" (
       ("A0" "LLVMBuilderRef")
       ("RetVals" "LLVMValueRef *")
       ("N" "unsigned int")
   ))
   ("LLVMBuildBr" "LLVMValueRef" (
       ("A0" "LLVMBuilderRef")
       ("Dest" "LLVMBasicBlockRef")
   ))
   ("LLVMBuildCondBr" "LLVMValueRef" (
       ("A0" "LLVMBuilderRef")
       ("If" "LLVMValueRef")
       ("Then" "LLVMBasicBlockRef")
       ("Else" "LLVMBasicBlockRef")
   ))
   ("LLVMBuildSwitch" "LLVMValueRef" (
       ("A0" "LLVMBuilderRef")
       ("V" "LLVMValueRef")
       ("Else" "LLVMBasicBlockRef")
       ("NumCases" "unsigned int")
   ))
   ("LLVMBuildIndirectBr" "LLVMValueRef" (
       ("B" "LLVMBuilderRef")
       ("Addr" "LLVMValueRef")
       ("NumDests" "unsigned int")
   ))
   ("LLVMBuildInvoke" "LLVMValueRef" (
       ("A0" "LLVMBuilderRef")
       ("Fn" "LLVMValueRef")
       ("Args" "LLVMValueRef *")
       ("NumArgs" "unsigned int")
       ("Then" "LLVMBasicBlockRef")
       ("Catch" "LLVMBasicBlockRef")
       ("Name" "const char *")
   ))
   ("LLVMBuildLandingPad" "LLVMValueRef" (
       ("B" "LLVMBuilderRef")
       ("Ty" "LLVMTypeRef")
       ("PersFn" "LLVMValueRef")
       ("NumClauses" "unsigned int")
       ("Name" "const char *")
   ))
   ("LLVMBuildResume" "LLVMValueRef" (
       ("B" "LLVMBuilderRef")
       ("Exn" "LLVMValueRef")
   ))
   ("LLVMBuildUnreachable" "LLVMValueRef" (
       ("A0" "LLVMBuilderRef")
   ))
   ("LLVMAddCase" "void" (
       ("Switch" "LLVMValueRef")
       ("OnVal" "LLVMValueRef")
       ("Dest" "LLVMBasicBlockRef")
   ))
   ("LLVMAddDestination" "void" (
       ("IndirectBr" "LLVMValueRef")
       ("Dest" "LLVMBasicBlockRef")
   ))
   ("LLVMGetNumClauses" "unsigned int" (
       ("LandingPad" "LLVMValueRef")
   ))
   ("LLVMGetClause" "LLVMValueRef" (
       ("LandingPad" "LLVMValueRef")
       ("Idx" "unsigned int")
   ))
   ("LLVMAddClause" "void" (
       ("LandingPad" "LLVMValueRef")
       ("ClauseVal" "LLVMValueRef")
   ))
   ("LLVMIsCleanup" "LLVMBool" (
       ("LandingPad" "LLVMValueRef")
   ))
   ("LLVMSetCleanup" "void" (
       ("LandingPad" "LLVMValueRef")
       ("Val" "LLVMBool")
   ))
   ("LLVMBuildAdd" "LLVMValueRef" (
       ("A0" "LLVMBuilderRef")
       ("LHS" "LLVMValueRef")
       ("RHS" "LLVMValueRef")
       ("Name" "const char *")
   ))
   ("LLVMBuildNSWAdd" "LLVMValueRef" (
       ("A0" "LLVMBuilderRef")
       ("LHS" "LLVMValueRef")
       ("RHS" "LLVMValueRef")
       ("Name" "const char *")
   ))
   ("LLVMBuildNUWAdd" "LLVMValueRef" (
       ("A0" "LLVMBuilderRef")
       ("LHS" "LLVMValueRef")
       ("RHS" "LLVMValueRef")
       ("Name" "const char *")
   ))
   ("LLVMBuildFAdd" "LLVMValueRef" (
       ("A0" "LLVMBuilderRef")
       ("LHS" "LLVMValueRef")
       ("RHS" "LLVMValueRef")
       ("Name" "const char *")
   ))
   ("LLVMBuildSub" "LLVMValueRef" (
       ("A0" "LLVMBuilderRef")
       ("LHS" "LLVMValueRef")
       ("RHS" "LLVMValueRef")
       ("Name" "const char *")
   ))
   ("LLVMBuildNSWSub" "LLVMValueRef" (
       ("A0" "LLVMBuilderRef")
       ("LHS" "LLVMValueRef")
       ("RHS" "LLVMValueRef")
       ("Name" "const char *")
   ))
   ("LLVMBuildNUWSub" "LLVMValueRef" (
       ("A0" "LLVMBuilderRef")
       ("LHS" "LLVMValueRef")
       ("RHS" "LLVMValueRef")
       ("Name" "const char *")
   ))
   ("LLVMBuildFSub" "LLVMValueRef" (
       ("A0" "LLVMBuilderRef")
       ("LHS" "LLVMValueRef")
       ("RHS" "LLVMValueRef")
       ("Name" "const char *")
   ))
   ("LLVMBuildMul" "LLVMValueRef" (
       ("A0" "LLVMBuilderRef")
       ("LHS" "LLVMValueRef")
       ("RHS" "LLVMValueRef")
       ("Name" "const char *")
   ))
   ("LLVMBuildNSWMul" "LLVMValueRef" (
       ("A0" "LLVMBuilderRef")
       ("LHS" "LLVMValueRef")
       ("RHS" "LLVMValueRef")
       ("Name" "const char *")
   ))
   ("LLVMBuildNUWMul" "LLVMValueRef" (
       ("A0" "LLVMBuilderRef")
       ("LHS" "LLVMValueRef")
       ("RHS" "LLVMValueRef")
       ("Name" "const char *")
   ))
   ("LLVMBuildFMul" "LLVMValueRef" (
       ("A0" "LLVMBuilderRef")
       ("LHS" "LLVMValueRef")
       ("RHS" "LLVMValueRef")
       ("Name" "const char *")
   ))
   ("LLVMBuildUDiv" "LLVMValueRef" (
       ("A0" "LLVMBuilderRef")
       ("LHS" "LLVMValueRef")
       ("RHS" "LLVMValueRef")
       ("Name" "const char *")
   ))
   ("LLVMBuildSDiv" "LLVMValueRef" (
       ("A0" "LLVMBuilderRef")
       ("LHS" "LLVMValueRef")
       ("RHS" "LLVMValueRef")
       ("Name" "const char *")
   ))
   ("LLVMBuildExactSDiv" "LLVMValueRef" (
       ("A0" "LLVMBuilderRef")
       ("LHS" "LLVMValueRef")
       ("RHS" "LLVMValueRef")
       ("Name" "const char *")
   ))
   ("LLVMBuildFDiv" "LLVMValueRef" (
       ("A0" "LLVMBuilderRef")
       ("LHS" "LLVMValueRef")
       ("RHS" "LLVMValueRef")
       ("Name" "const char *")
   ))
   ("LLVMBuildURem" "LLVMValueRef" (
       ("A0" "LLVMBuilderRef")
       ("LHS" "LLVMValueRef")
       ("RHS" "LLVMValueRef")
       ("Name" "const char *")
   ))
   ("LLVMBuildSRem" "LLVMValueRef" (
       ("A0" "LLVMBuilderRef")
       ("LHS" "LLVMValueRef")
       ("RHS" "LLVMValueRef")
       ("Name" "const char *")
   ))
   ("LLVMBuildFRem" "LLVMValueRef" (
       ("A0" "LLVMBuilderRef")
       ("LHS" "LLVMValueRef")
       ("RHS" "LLVMValueRef")
       ("Name" "const char *")
   ))
   ("LLVMBuildShl" "LLVMValueRef" (
       ("A0" "LLVMBuilderRef")
       ("LHS" "LLVMValueRef")
       ("RHS" "LLVMValueRef")
       ("Name" "const char *")
   ))
   ("LLVMBuildLShr" "LLVMValueRef" (
       ("A0" "LLVMBuilderRef")
       ("LHS" "LLVMValueRef")
       ("RHS" "LLVMValueRef")
       ("Name" "const char *")
   ))
   ("LLVMBuildAShr" "LLVMValueRef" (
       ("A0" "LLVMBuilderRef")
       ("LHS" "LLVMValueRef")
       ("RHS" "LLVMValueRef")
       ("Name" "const char *")
   ))
   ("LLVMBuildAnd" "LLVMValueRef" (
       ("A0" "LLVMBuilderRef")
       ("LHS" "LLVMValueRef")
       ("RHS" "LLVMValueRef")
       ("Name" "const char *")
   ))
   ("LLVMBuildOr" "LLVMValueRef" (
       ("A0" "LLVMBuilderRef")
       ("LHS" "LLVMValueRef")
       ("RHS" "LLVMValueRef")
       ("Name" "const char *")
   ))
   ("LLVMBuildXor" "LLVMValueRef" (
       ("A0" "LLVMBuilderRef")
       ("LHS" "LLVMValueRef")
       ("RHS" "LLVMValueRef")
       ("Name" "const char *")
   ))
   ("LLVMBuildBinOp" "LLVMValueRef" (
       ("B" "LLVMBuilderRef")
       ("Op" "LLVMOpcode")
       ("LHS" "LLVMValueRef")
       ("RHS" "LLVMValueRef")
       ("Name" "const char *")
   ))
   ("LLVMBuildNeg" "LLVMValueRef" (
       ("A0" "LLVMBuilderRef")
       ("V" "LLVMValueRef")
       ("Name" "const char *")
   ))
   ("LLVMBuildNSWNeg" "LLVMValueRef" (
       ("B" "LLVMBuilderRef")
       ("V" "LLVMValueRef")
       ("Name" "const char *")
   ))
   ("LLVMBuildNUWNeg" "LLVMValueRef" (
       ("B" "LLVMBuilderRef")
       ("V" "LLVMValueRef")
       ("Name" "const char *")
   ))
   ("LLVMBuildFNeg" "LLVMValueRef" (
       ("A0" "LLVMBuilderRef")
       ("V" "LLVMValueRef")
       ("Name" "const char *")
   ))
   ("LLVMBuildNot" "LLVMValueRef" (
       ("A0" "LLVMBuilderRef")
       ("V" "LLVMValueRef")
       ("Name" "const char *")
   ))
   ("LLVMBuildMalloc" "LLVMValueRef" (
       ("A0" "LLVMBuilderRef")
       ("Ty" "LLVMTypeRef")
       ("Name" "const char *")
   ))
   ("LLVMBuildArrayMalloc" "LLVMValueRef" (
       ("A0" "LLVMBuilderRef")
       ("Ty" "LLVMTypeRef")
       ("Val" "LLVMValueRef")
       ("Name" "const char *")
   ))
   ("LLVMBuildAlloca" "LLVMValueRef" (
       ("A0" "LLVMBuilderRef")
       ("Ty" "LLVMTypeRef")
       ("Name" "const char *")
   ))
   ("LLVMBuildArrayAlloca" "LLVMValueRef" (
       ("A0" "LLVMBuilderRef")
       ("Ty" "LLVMTypeRef")
       ("Val" "LLVMValueRef")
       ("Name" "const char *")
   ))
   ("LLVMBuildFree" "LLVMValueRef" (
       ("A0" "LLVMBuilderRef")
       ("PointerVal" "LLVMValueRef")
   ))
   ("LLVMBuildLoad" "LLVMValueRef" (
       ("A0" "LLVMBuilderRef")
       ("PointerVal" "LLVMValueRef")
       ("Name" "const char *")
   ))
   ("LLVMBuildStore" "LLVMValueRef" (
       ("A0" "LLVMBuilderRef")
       ("Val" "LLVMValueRef")
       ("Ptr" "LLVMValueRef")
   ))
   ("LLVMBuildGEP" "LLVMValueRef" (
       ("B" "LLVMBuilderRef")
       ("Pointer" "LLVMValueRef")
       ("Indices" "LLVMValueRef *")
       ("NumIndices" "unsigned int")
       ("Name" "const char *")
   ))
   ("LLVMBuildInBoundsGEP" "LLVMValueRef" (
       ("B" "LLVMBuilderRef")
       ("Pointer" "LLVMValueRef")
       ("Indices" "LLVMValueRef *")
       ("NumIndices" "unsigned int")
       ("Name" "const char *")
   ))
   ("LLVMBuildStructGEP" "LLVMValueRef" (
       ("B" "LLVMBuilderRef")
       ("Pointer" "LLVMValueRef")
       ("Idx" "unsigned int")
       ("Name" "const char *")
   ))
   ("LLVMBuildGlobalString" "LLVMValueRef" (
       ("B" "LLVMBuilderRef")
       ("Str" "const char *")
       ("Name" "const char *")
   ))
   ("LLVMBuildGlobalStringPtr" "LLVMValueRef" (
       ("B" "LLVMBuilderRef")
       ("Str" "const char *")
       ("Name" "const char *")
   ))
   ("LLVMGetVolatile" "LLVMBool" (
       ("MemoryAccessInst" "LLVMValueRef")
   ))
   ("LLVMSetVolatile" "void" (
       ("MemoryAccessInst" "LLVMValueRef")
       ("IsVolatile" "LLVMBool")
   ))
   ("LLVMGetOrdering" "LLVMAtomicOrdering" (
       ("MemoryAccessInst" "LLVMValueRef")
   ))
   ("LLVMSetOrdering" "void" (
       ("MemoryAccessInst" "LLVMValueRef")
       ("Ordering" "LLVMAtomicOrdering")
   ))
   ("LLVMBuildTrunc" "LLVMValueRef" (
       ("A0" "LLVMBuilderRef")
       ("Val" "LLVMValueRef")
       ("DestTy" "LLVMTypeRef")
       ("Name" "const char *")
   ))
   ("LLVMBuildZExt" "LLVMValueRef" (
       ("A0" "LLVMBuilderRef")
       ("Val" "LLVMValueRef")
       ("DestTy" "LLVMTypeRef")
       ("Name" "const char *")
   ))
   ("LLVMBuildSExt" "LLVMValueRef" (
       ("A0" "LLVMBuilderRef")
       ("Val" "LLVMValueRef")
       ("DestTy" "LLVMTypeRef")
       ("Name" "const char *")
   ))
   ("LLVMBuildFPToUI" "LLVMValueRef" (
       ("A0" "LLVMBuilderRef")
       ("Val" "LLVMValueRef")
       ("DestTy" "LLVMTypeRef")
       ("Name" "const char *")
   ))
   ("LLVMBuildFPToSI" "LLVMValueRef" (
       ("A0" "LLVMBuilderRef")
       ("Val" "LLVMValueRef")
       ("DestTy" "LLVMTypeRef")
       ("Name" "const char *")
   ))
   ("LLVMBuildUIToFP" "LLVMValueRef" (
       ("A0" "LLVMBuilderRef")
       ("Val" "LLVMValueRef")
       ("DestTy" "LLVMTypeRef")
       ("Name" "const char *")
   ))
   ("LLVMBuildSIToFP" "LLVMValueRef" (
       ("A0" "LLVMBuilderRef")
       ("Val" "LLVMValueRef")
       ("DestTy" "LLVMTypeRef")
       ("Name" "const char *")
   ))
   ("LLVMBuildFPTrunc" "LLVMValueRef" (
       ("A0" "LLVMBuilderRef")
       ("Val" "LLVMValueRef")
       ("DestTy" "LLVMTypeRef")
       ("Name" "const char *")
   ))
   ("LLVMBuildFPExt" "LLVMValueRef" (
       ("A0" "LLVMBuilderRef")
       ("Val" "LLVMValueRef")
       ("DestTy" "LLVMTypeRef")
       ("Name" "const char *")
   ))
   ("LLVMBuildPtrToInt" "LLVMValueRef" (
       ("A0" "LLVMBuilderRef")
       ("Val" "LLVMValueRef")
       ("DestTy" "LLVMTypeRef")
       ("Name" "const char *")
   ))
   ("LLVMBuildIntToPtr" "LLVMValueRef" (
       ("A0" "LLVMBuilderRef")
       ("Val" "LLVMValueRef")
       ("DestTy" "LLVMTypeRef")
       ("Name" "const char *")
   ))
   ("LLVMBuildBitCast" "LLVMValueRef" (
       ("A0" "LLVMBuilderRef")
       ("Val" "LLVMValueRef")
       ("DestTy" "LLVMTypeRef")
       ("Name" "const char *")
   ))
   ("LLVMBuildAddrSpaceCast" "LLVMValueRef" (
       ("A0" "LLVMBuilderRef")
       ("Val" "LLVMValueRef")
       ("DestTy" "LLVMTypeRef")
       ("Name" "const char *")
   ))
   ("LLVMBuildZExtOrBitCast" "LLVMValueRef" (
       ("A0" "LLVMBuilderRef")
       ("Val" "LLVMValueRef")
       ("DestTy" "LLVMTypeRef")
       ("Name" "const char *")
   ))
   ("LLVMBuildSExtOrBitCast" "LLVMValueRef" (
       ("A0" "LLVMBuilderRef")
       ("Val" "LLVMValueRef")
       ("DestTy" "LLVMTypeRef")
       ("Name" "const char *")
   ))
   ("LLVMBuildTruncOrBitCast" "LLVMValueRef" (
       ("A0" "LLVMBuilderRef")
       ("Val" "LLVMValueRef")
       ("DestTy" "LLVMTypeRef")
       ("Name" "const char *")
   ))
   ("LLVMBuildCast" "LLVMValueRef" (
       ("B" "LLVMBuilderRef")
       ("Op" "LLVMOpcode")
       ("Val" "LLVMValueRef")
       ("DestTy" "LLVMTypeRef")
       ("Name" "const char *")
   ))
   ("LLVMBuildPointerCast" "LLVMValueRef" (
       ("A0" "LLVMBuilderRef")
       ("Val" "LLVMValueRef")
       ("DestTy" "LLVMTypeRef")
       ("Name" "const char *")
   ))
   ("LLVMBuildIntCast" "LLVMValueRef" (
       ("A0" "LLVMBuilderRef")
       ("Val" "LLVMValueRef")
       ("DestTy" "LLVMTypeRef")
       ("Name" "const char *")
   ))
   ("LLVMBuildFPCast" "LLVMValueRef" (
       ("A0" "LLVMBuilderRef")
       ("Val" "LLVMValueRef")
       ("DestTy" "LLVMTypeRef")
       ("Name" "const char *")
   ))
   ("LLVMBuildICmp" "LLVMValueRef" (
       ("A0" "LLVMBuilderRef")
       ("Op" "LLVMIntPredicate")
       ("LHS" "LLVMValueRef")
       ("RHS" "LLVMValueRef")
       ("Name" "const char *")
   ))
   ("LLVMBuildFCmp" "LLVMValueRef" (
       ("A0" "LLVMBuilderRef")
       ("Op" "LLVMRealPredicate")
       ("LHS" "LLVMValueRef")
       ("RHS" "LLVMValueRef")
       ("Name" "const char *")
   ))
   ("LLVMBuildPhi" "LLVMValueRef" (
       ("A0" "LLVMBuilderRef")
       ("Ty" "LLVMTypeRef")
       ("Name" "const char *")
   ))
   ("LLVMBuildCall" "LLVMValueRef" (
       ("A0" "LLVMBuilderRef")
       ("Fn" "LLVMValueRef")
       ("Args" "LLVMValueRef *")
       ("NumArgs" "unsigned int")
       ("Name" "const char *")
   ))
   ("LLVMBuildSelect" "LLVMValueRef" (
       ("A0" "LLVMBuilderRef")
       ("If" "LLVMValueRef")
       ("Then" "LLVMValueRef")
       ("Else" "LLVMValueRef")
       ("Name" "const char *")
   ))
   ("LLVMBuildVAArg" "LLVMValueRef" (
       ("A0" "LLVMBuilderRef")
       ("List" "LLVMValueRef")
       ("Ty" "LLVMTypeRef")
       ("Name" "const char *")
   ))
   ("LLVMBuildExtractElement" "LLVMValueRef" (
       ("A0" "LLVMBuilderRef")
       ("VecVal" "LLVMValueRef")
       ("Index" "LLVMValueRef")
       ("Name" "const char *")
   ))
   ("LLVMBuildInsertElement" "LLVMValueRef" (
       ("A0" "LLVMBuilderRef")
       ("VecVal" "LLVMValueRef")
       ("EltVal" "LLVMValueRef")
       ("Index" "LLVMValueRef")
       ("Name" "const char *")
   ))
   ("LLVMBuildShuffleVector" "LLVMValueRef" (
       ("A0" "LLVMBuilderRef")
       ("V1" "LLVMValueRef")
       ("V2" "LLVMValueRef")
       ("Mask" "LLVMValueRef")
       ("Name" "const char *")
   ))
   ("LLVMBuildExtractValue" "LLVMValueRef" (
       ("A0" "LLVMBuilderRef")
       ("AggVal" "LLVMValueRef")
       ("Index" "unsigned int")
       ("Name" "const char *")
   ))
   ("LLVMBuildInsertValue" "LLVMValueRef" (
       ("A0" "LLVMBuilderRef")
       ("AggVal" "LLVMValueRef")
       ("EltVal" "LLVMValueRef")
       ("Index" "unsigned int")
       ("Name" "const char *")
   ))
   ("LLVMBuildIsNull" "LLVMValueRef" (
       ("A0" "LLVMBuilderRef")
       ("Val" "LLVMValueRef")
       ("Name" "const char *")
   ))
   ("LLVMBuildIsNotNull" "LLVMValueRef" (
       ("A0" "LLVMBuilderRef")
       ("Val" "LLVMValueRef")
       ("Name" "const char *")
   ))
   ("LLVMBuildPtrDiff" "LLVMValueRef" (
       ("A0" "LLVMBuilderRef")
       ("LHS" "LLVMValueRef")
       ("RHS" "LLVMValueRef")
       ("Name" "const char *")
   ))
   ("LLVMBuildFence" "LLVMValueRef" (
       ("B" "LLVMBuilderRef")
       ("ordering" "LLVMAtomicOrdering")
       ("singleThread" "LLVMBool")
       ("Name" "const char *")
   ))
   ("LLVMBuildAtomicRMW" "LLVMValueRef" (
       ("B" "LLVMBuilderRef")
       ("op" "LLVMAtomicRMWBinOp")
       ("PTR" "LLVMValueRef")
       ("Val" "LLVMValueRef")
       ("ordering" "LLVMAtomicOrdering")
       ("singleThread" "LLVMBool")
   ))
   ("LLVMBuildAtomicCmpXchg" "LLVMValueRef" (
       ("B" "LLVMBuilderRef")
       ("Ptr" "LLVMValueRef")
       ("Cmp" "LLVMValueRef")
       ("New" "LLVMValueRef")
       ("SuccessOrdering" "LLVMAtomicOrdering")
       ("FailureOrdering" "LLVMAtomicOrdering")
       ("SingleThread" "LLVMBool")
   ))
   ("LLVMIsAtomicSingleThread" "LLVMBool" (
       ("AtomicInst" "LLVMValueRef")
   ))
   ("LLVMSetAtomicSingleThread" "void" (
       ("AtomicInst" "LLVMValueRef")
       ("SingleThread" "LLVMBool")
   ))
   ("LLVMGetCmpXchgSuccessOrdering" "LLVMAtomicOrdering" (
       ("CmpXchgInst" "LLVMValueRef")
   ))
   ("LLVMSetCmpXchgSuccessOrdering" "void" (
       ("CmpXchgInst" "LLVMValueRef")
       ("Ordering" "LLVMAtomicOrdering")
   ))
   ("LLVMGetCmpXchgFailureOrdering" "LLVMAtomicOrdering" (
       ("CmpXchgInst" "LLVMValueRef")
   ))
   ("LLVMSetCmpXchgFailureOrdering" "void" (
       ("CmpXchgInst" "LLVMValueRef")
       ("Ordering" "LLVMAtomicOrdering")
   ))
   ("LLVMCreateModuleProviderForExistingModule" "LLVMModuleProviderRef" (
       ("M" "LLVMModuleRef")
   ))
   ("LLVMDisposeModuleProvider" "void" (
       ("M" "LLVMModuleProviderRef")
   ))
   ("LLVMCreateMemoryBufferWithContentsOfFile" "LLVMBool" (
       ("Path" "const char *")
       ("OutMemBuf" "LLVMMemoryBufferRef *")
       ("OutMessage" "char **")
   ))
   ("LLVMCreateMemoryBufferWithSTDIN" "LLVMBool" (
       ("OutMemBuf" "LLVMMemoryBufferRef *")
       ("OutMessage" "char **")
   ))
   ("LLVMCreateMemoryBufferWithMemoryRange" "LLVMMemoryBufferRef" (
       ("InputData" "const char *")
       ("InputDataLength" "size_t")
       ("BufferName" "const char *")
       ("RequiresNullTerminator" "LLVMBool")
   ))
   ("LLVMCreateMemoryBufferWithMemoryRangeCopy" "LLVMMemoryBufferRef" (
       ("InputData" "const char *")
       ("InputDataLength" "size_t")
       ("BufferName" "const char *")
   ))
   ("LLVMGetBufferStart" "const char *" (
       ("MemBuf" "LLVMMemoryBufferRef")
   ))
   ("LLVMGetBufferSize" "size_t" (
       ("MemBuf" "LLVMMemoryBufferRef")
   ))
   ("LLVMDisposeMemoryBuffer" "void" (
       ("MemBuf" "LLVMMemoryBufferRef")
   ))
   ("LLVMGetGlobalPassRegistry" "LLVMPassRegistryRef" (
   ))
   ("LLVMCreatePassManager" "LLVMPassManagerRef" (
   ))
   ("LLVMCreateFunctionPassManagerForModule" "LLVMPassManagerRef" (
       ("M" "LLVMModuleRef")
   ))
   ("LLVMCreateFunctionPassManager" "LLVMPassManagerRef" (
       ("MP" "LLVMModuleProviderRef")
   ))
   ("LLVMRunPassManager" "LLVMBool" (
       ("PM" "LLVMPassManagerRef")
       ("M" "LLVMModuleRef")
   ))
   ("LLVMInitializeFunctionPassManager" "LLVMBool" (
       ("FPM" "LLVMPassManagerRef")
   ))
   ("LLVMRunFunctionPassManager" "LLVMBool" (
       ("FPM" "LLVMPassManagerRef")
       ("F" "LLVMValueRef")
   ))
   ("LLVMFinalizeFunctionPassManager" "LLVMBool" (
       ("FPM" "LLVMPassManagerRef")
   ))
   ("LLVMDisposePassManager" "void" (
       ("PM" "LLVMPassManagerRef")
   ))
   ("LLVMStartMultithreaded" "LLVMBool" (
   ))
   ("LLVMStopMultithreaded" "void" (
   ))
   ("LLVMIsMultithreaded" "LLVMBool" (
   ))
   ("LLVMInitializeAArch64TargetInfo" "void" (
   ))
   ("LLVMInitializeAMDGPUTargetInfo" "void" (
   ))
   ("LLVMInitializeARMTargetInfo" "void" (
   ))
   ("LLVMInitializeBPFTargetInfo" "void" (
   ))
   ("LLVMInitializeHexagonTargetInfo" "void" (
   ))
   ("LLVMInitializeMipsTargetInfo" "void" (
   ))
   ("LLVMInitializeMSP430TargetInfo" "void" (
   ))
   ("LLVMInitializeNVPTXTargetInfo" "void" (
   ))
   ("LLVMInitializePowerPCTargetInfo" "void" (
   ))
   ("LLVMInitializeSparcTargetInfo" "void" (
   ))
   ("LLVMInitializeSystemZTargetInfo" "void" (
   ))
   ("LLVMInitializeX86TargetInfo" "void" (
   ))
   ("LLVMInitializeXCoreTargetInfo" "void" (
   ))
   ("LLVMInitializeAArch64Target" "void" (
   ))
   ("LLVMInitializeAMDGPUTarget" "void" (
   ))
   ("LLVMInitializeARMTarget" "void" (
   ))
   ("LLVMInitializeBPFTarget" "void" (
   ))
   ("LLVMInitializeHexagonTarget" "void" (
   ))
   ("LLVMInitializeMipsTarget" "void" (
   ))
   ("LLVMInitializeMSP430Target" "void" (
   ))
   ("LLVMInitializeNVPTXTarget" "void" (
   ))
   ("LLVMInitializePowerPCTarget" "void" (
   ))
   ("LLVMInitializeSparcTarget" "void" (
   ))
   ("LLVMInitializeSystemZTarget" "void" (
   ))
   ("LLVMInitializeX86Target" "void" (
   ))
   ("LLVMInitializeXCoreTarget" "void" (
   ))
   ("LLVMInitializeAArch64TargetMC" "void" (
   ))
   ("LLVMInitializeAMDGPUTargetMC" "void" (
   ))
   ("LLVMInitializeARMTargetMC" "void" (
   ))
   ("LLVMInitializeBPFTargetMC" "void" (
   ))
   ("LLVMInitializeHexagonTargetMC" "void" (
   ))
   ("LLVMInitializeMipsTargetMC" "void" (
   ))
   ("LLVMInitializeMSP430TargetMC" "void" (
   ))
   ("LLVMInitializeNVPTXTargetMC" "void" (
   ))
   ("LLVMInitializePowerPCTargetMC" "void" (
   ))
   ("LLVMInitializeSparcTargetMC" "void" (
   ))
   ("LLVMInitializeSystemZTargetMC" "void" (
   ))
   ("LLVMInitializeX86TargetMC" "void" (
   ))
   ("LLVMInitializeXCoreTargetMC" "void" (
   ))
   ("LLVMInitializeAArch64AsmPrinter" "void" (
   ))
   ("LLVMInitializeAMDGPUAsmPrinter" "void" (
   ))
   ("LLVMInitializeARMAsmPrinter" "void" (
   ))
   ("LLVMInitializeBPFAsmPrinter" "void" (
   ))
   ("LLVMInitializeHexagonAsmPrinter" "void" (
   ))
   ("LLVMInitializeMipsAsmPrinter" "void" (
   ))
   ("LLVMInitializeMSP430AsmPrinter" "void" (
   ))
   ("LLVMInitializeNVPTXAsmPrinter" "void" (
   ))
   ("LLVMInitializePowerPCAsmPrinter" "void" (
   ))
   ("LLVMInitializeSparcAsmPrinter" "void" (
   ))
   ("LLVMInitializeSystemZAsmPrinter" "void" (
   ))
   ("LLVMInitializeX86AsmPrinter" "void" (
   ))
   ("LLVMInitializeXCoreAsmPrinter" "void" (
   ))
   ("LLVMInitializeAArch64AsmParser" "void" (
   ))
   ("LLVMInitializeAMDGPUAsmParser" "void" (
   ))
   ("LLVMInitializeARMAsmParser" "void" (
   ))
   ("LLVMInitializeHexagonAsmParser" "void" (
   ))
   ("LLVMInitializeMipsAsmParser" "void" (
   ))
   ("LLVMInitializePowerPCAsmParser" "void" (
   ))
   ("LLVMInitializeSparcAsmParser" "void" (
   ))
   ("LLVMInitializeSystemZAsmParser" "void" (
   ))
   ("LLVMInitializeX86AsmParser" "void" (
   ))
   ("LLVMInitializeAArch64Disassembler" "void" (
   ))
   ("LLVMInitializeAMDGPUDisassembler" "void" (
   ))
   ("LLVMInitializeARMDisassembler" "void" (
   ))
   ("LLVMInitializeHexagonDisassembler" "void" (
   ))
   ("LLVMInitializeMipsDisassembler" "void" (
   ))
   ("LLVMInitializePowerPCDisassembler" "void" (
   ))
   ("LLVMInitializeSparcDisassembler" "void" (
   ))
   ("LLVMInitializeSystemZDisassembler" "void" (
   ))
   ("LLVMInitializeX86Disassembler" "void" (
   ))
   ("LLVMInitializeXCoreDisassembler" "void" (
   ))
   ("LLVMInitializeAllTargetInfos" "void" (
   ))
   ("LLVMInitializeAllTargets" "void" (
   ))
   ("LLVMInitializeAllTargetMCs" "void" (
   ))
   ("LLVMInitializeAllAsmPrinters" "void" (
   ))
   ("LLVMInitializeAllAsmParsers" "void" (
   ))
   ("LLVMInitializeAllDisassemblers" "void" (
   ))
   ("LLVMInitializeNativeTarget" "LLVMBool" (
   ))
   ("LLVMInitializeNativeAsmParser" "LLVMBool" (
   ))
   ("LLVMInitializeNativeAsmPrinter" "LLVMBool" (
   ))
   ("LLVMInitializeNativeDisassembler" "LLVMBool" (
   ))
   ("LLVMGetModuleDataLayout" "LLVMTargetDataRef" (
       ("M" "LLVMModuleRef")
   ))
   ("LLVMSetModuleDataLayout" "void" (
       ("M" "LLVMModuleRef")
       ("DL" "LLVMTargetDataRef")
   ))
   ("LLVMCreateTargetData" "LLVMTargetDataRef" (
       ("StringRep" "const char *")
   ))
   ("LLVMDisposeTargetData" "void" (
       ("TD" "LLVMTargetDataRef")
   ))
   ("LLVMAddTargetLibraryInfo" "void" (
       ("TLI" "LLVMTargetLibraryInfoRef")
       ("PM" "LLVMPassManagerRef")
   ))
   ("LLVMCopyStringRepOfTargetData" "char *" (
       ("TD" "LLVMTargetDataRef")
   ))
   ("LLVMByteOrder" "enum LLVMByteOrdering" (
       ("TD" "LLVMTargetDataRef")
   ))
   ("LLVMPointerSize" "unsigned int" (
       ("TD" "LLVMTargetDataRef")
   ))
   ("LLVMPointerSizeForAS" "unsigned int" (
       ("TD" "LLVMTargetDataRef")
       ("AS" "unsigned int")
   ))
   ("LLVMIntPtrType" "LLVMTypeRef" (
       ("TD" "LLVMTargetDataRef")
   ))
   ("LLVMIntPtrTypeForAS" "LLVMTypeRef" (
       ("TD" "LLVMTargetDataRef")
       ("AS" "unsigned int")
   ))
   ("LLVMIntPtrTypeInContext" "LLVMTypeRef" (
       ("C" "LLVMContextRef")
       ("TD" "LLVMTargetDataRef")
   ))
   ("LLVMIntPtrTypeForASInContext" "LLVMTypeRef" (
       ("C" "LLVMContextRef")
       ("TD" "LLVMTargetDataRef")
       ("AS" "unsigned int")
   ))
   ("LLVMSizeOfTypeInBits" "unsigned long long" (
       ("TD" "LLVMTargetDataRef")
       ("Ty" "LLVMTypeRef")
   ))
   ("LLVMStoreSizeOfType" "unsigned long long" (
       ("TD" "LLVMTargetDataRef")
       ("Ty" "LLVMTypeRef")
   ))
   ("LLVMABISizeOfType" "unsigned long long" (
       ("TD" "LLVMTargetDataRef")
       ("Ty" "LLVMTypeRef")
   ))
   ("LLVMABIAlignmentOfType" "unsigned int" (
       ("TD" "LLVMTargetDataRef")
       ("Ty" "LLVMTypeRef")
   ))
   ("LLVMCallFrameAlignmentOfType" "unsigned int" (
       ("TD" "LLVMTargetDataRef")
       ("Ty" "LLVMTypeRef")
   ))
   ("LLVMPreferredAlignmentOfType" "unsigned int" (
       ("TD" "LLVMTargetDataRef")
       ("Ty" "LLVMTypeRef")
   ))
   ("LLVMPreferredAlignmentOfGlobal" "unsigned int" (
       ("TD" "LLVMTargetDataRef")
       ("GlobalVar" "LLVMValueRef")
   ))
   ("LLVMElementAtOffset" "unsigned int" (
       ("TD" "LLVMTargetDataRef")
       ("StructTy" "LLVMTypeRef")
       ("Offset" "unsigned long long")
   ))
   ("LLVMOffsetOfElement" "unsigned long long" (
       ("TD" "LLVMTargetDataRef")
       ("StructTy" "LLVMTypeRef")
       ("Element" "unsigned int")
   ))
   ("LLVMGetFirstTarget" "LLVMTargetRef" (
   ))
   ("LLVMGetNextTarget" "LLVMTargetRef" (
       ("T" "LLVMTargetRef")
   ))
   ("LLVMGetTargetFromName" "LLVMTargetRef" (
       ("Name" "const char *")
   ))
   ("LLVMGetTargetFromTriple" "LLVMBool" (
       ("Triple" "const char *")
       ("T" "LLVMTargetRef *")
       ("ErrorMessage" "char **")
   ))
   ("LLVMGetTargetName" "const char *" (
       ("T" "LLVMTargetRef")
   ))
   ("LLVMGetTargetDescription" "const char *" (
       ("T" "LLVMTargetRef")
   ))
   ("LLVMTargetHasJIT" "LLVMBool" (
       ("T" "LLVMTargetRef")
   ))
   ("LLVMTargetHasTargetMachine" "LLVMBool" (
       ("T" "LLVMTargetRef")
   ))
   ("LLVMTargetHasAsmBackend" "LLVMBool" (
       ("T" "LLVMTargetRef")
   ))
   ("LLVMCreateTargetMachine" "LLVMTargetMachineRef" (
       ("T" "LLVMTargetRef")
       ("Triple" "const char *")
       ("CPU" "const char *")
       ("Features" "const char *")
       ("Level" "LLVMCodeGenOptLevel")
       ("Reloc" "LLVMRelocMode")
       ("CodeModel" "LLVMCodeModel")
   ))
   ("LLVMDisposeTargetMachine" "void" (
       ("T" "LLVMTargetMachineRef")
   ))
   ("LLVMGetTargetMachineTarget" "LLVMTargetRef" (
       ("T" "LLVMTargetMachineRef")
   ))
   ("LLVMGetTargetMachineTriple" "char *" (
       ("T" "LLVMTargetMachineRef")
   ))
   ("LLVMGetTargetMachineCPU" "char *" (
       ("T" "LLVMTargetMachineRef")
   ))
   ("LLVMGetTargetMachineFeatureString" "char *" (
       ("T" "LLVMTargetMachineRef")
   ))
   ("LLVMCreateTargetDataLayout" "LLVMTargetDataRef" (
       ("T" "LLVMTargetMachineRef")
   ))
   ("LLVMSetTargetMachineAsmVerbosity" "void" (
       ("T" "LLVMTargetMachineRef")
       ("VerboseAsm" "LLVMBool")
   ))
   ("LLVMTargetMachineEmitToFile" "LLVMBool" (
       ("T" "LLVMTargetMachineRef")
       ("M" "LLVMModuleRef")
       ("Filename" "char *")
       ("codegen" "LLVMCodeGenFileType")
       ("ErrorMessage" "char **")
   ))
   ("LLVMTargetMachineEmitToMemoryBuffer" "LLVMBool" (
       ("T" "LLVMTargetMachineRef")
       ("M" "LLVMModuleRef")
       ("codegen" "LLVMCodeGenFileType")
       ("ErrorMessage" "char **")
       ("OutMemBuf" "LLVMMemoryBufferRef *")
   ))
   ("LLVMGetDefaultTargetTriple" "char *" (
   ))
   ("LLVMAddAnalysisPasses" "void" (
       ("T" "LLVMTargetMachineRef")
       ("PM" "LLVMPassManagerRef")
   ))
   ("LLVMLinkInMCJIT" "void" (
   ))
   ("LLVMLinkInInterpreter" "void" (
   ))
   ("LLVMCreateGenericValueOfInt" "LLVMGenericValueRef" (
       ("Ty" "LLVMTypeRef")
       ("N" "unsigned long long")
       ("IsSigned" "LLVMBool")
   ))
   ("LLVMCreateGenericValueOfPointer" "LLVMGenericValueRef" (
       ("P" "void *")
   ))
   ("LLVMCreateGenericValueOfFloat" "LLVMGenericValueRef" (
       ("Ty" "LLVMTypeRef")
       ("N" "double")
   ))
   ("LLVMGenericValueIntWidth" "unsigned int" (
       ("GenValRef" "LLVMGenericValueRef")
   ))
   ("LLVMGenericValueToInt" "unsigned long long" (
       ("GenVal" "LLVMGenericValueRef")
       ("IsSigned" "LLVMBool")
   ))
   ("LLVMGenericValueToPointer" "void *" (
       ("GenVal" "LLVMGenericValueRef")
   ))
   ("LLVMGenericValueToFloat" "double" (
       ("TyRef" "LLVMTypeRef")
       ("GenVal" "LLVMGenericValueRef")
   ))
   ("LLVMDisposeGenericValue" "void" (
       ("GenVal" "LLVMGenericValueRef")
   ))
   ("LLVMCreateExecutionEngineForModule" "LLVMBool" (
       ("OutEE" "LLVMExecutionEngineRef *")
       ("M" "LLVMModuleRef")
       ("OutError" "char **")
   ))
   ("LLVMCreateInterpreterForModule" "LLVMBool" (
       ("OutInterp" "LLVMExecutionEngineRef *")
       ("M" "LLVMModuleRef")
       ("OutError" "char **")
   ))
   ("LLVMCreateJITCompilerForModule" "LLVMBool" (
       ("OutJIT" "LLVMExecutionEngineRef *")
       ("M" "LLVMModuleRef")
       ("OptLevel" "unsigned int")
       ("OutError" "char **")
   ))
   ("LLVMInitializeMCJITCompilerOptions" "void" (
       ("Options" "struct LLVMMCJITCompilerOptions *")
       ("SizeOfOptions" "size_t")
   ))
   ("LLVMCreateMCJITCompilerForModule" "LLVMBool" (
       ("OutJIT" "LLVMExecutionEngineRef *")
       ("M" "LLVMModuleRef")
       ("Options" "struct LLVMMCJITCompilerOptions *")
       ("SizeOfOptions" "size_t")
       ("OutError" "char **")
   ))
   ("LLVMDisposeExecutionEngine" "void" (
       ("EE" "LLVMExecutionEngineRef")
   ))
   ("LLVMRunStaticConstructors" "void" (
       ("EE" "LLVMExecutionEngineRef")
   ))
   ("LLVMRunStaticDestructors" "void" (
       ("EE" "LLVMExecutionEngineRef")
   ))
   ("LLVMRunFunctionAsMain" "int" (
       ("EE" "LLVMExecutionEngineRef")
       ("F" "LLVMValueRef")
       ("ArgC" "unsigned int")
       ("ArgV" "const char *const *")
       ("EnvP" "const char *const *")
   ))
   ("LLVMRunFunction" "LLVMGenericValueRef" (
       ("EE" "LLVMExecutionEngineRef")
       ("F" "LLVMValueRef")
       ("NumArgs" "unsigned int")
       ("Args" "LLVMGenericValueRef *")
   ))
   ("LLVMFreeMachineCodeForFunction" "void" (
       ("EE" "LLVMExecutionEngineRef")
       ("F" "LLVMValueRef")
   ))
   ("LLVMAddModule" "void" (
       ("EE" "LLVMExecutionEngineRef")
       ("M" "LLVMModuleRef")
   ))
   ("LLVMRemoveModule" "LLVMBool" (
       ("EE" "LLVMExecutionEngineRef")
       ("M" "LLVMModuleRef")
       ("OutMod" "LLVMModuleRef *")
       ("OutError" "char **")
   ))
   ("LLVMFindFunction" "LLVMBool" (
       ("EE" "LLVMExecutionEngineRef")
       ("Name" "const char *")
       ("OutFn" "LLVMValueRef *")
   ))
   ("LLVMRecompileAndRelinkFunction" "void *" (
       ("EE" "LLVMExecutionEngineRef")
       ("Fn" "LLVMValueRef")
   ))
   ("LLVMGetExecutionEngineTargetData" "LLVMTargetDataRef" (
       ("EE" "LLVMExecutionEngineRef")
   ))
   ("LLVMGetExecutionEngineTargetMachine" "LLVMTargetMachineRef" (
       ("EE" "LLVMExecutionEngineRef")
   ))
   ("LLVMAddGlobalMapping" "void" (
       ("EE" "LLVMExecutionEngineRef")
       ("Global" "LLVMValueRef")
       ("Addr" "void *")
   ))
   ("LLVMGetPointerToGlobal" "void *" (
       ("EE" "LLVMExecutionEngineRef")
       ("Global" "LLVMValueRef")
   ))
   ("LLVMGetGlobalValueAddress" "uint64_t" (
       ("EE" "LLVMExecutionEngineRef")
       ("Name" "const char *")
   ))
   ("LLVMGetFunctionAddress" "uint64_t" (
       ("EE" "LLVMExecutionEngineRef")
       ("Name" "const char *")
   ))
   ("LLVMCreateSimpleMCJITMemoryManager" "LLVMMCJITMemoryManagerRef" (
       ("Opaque" "void *")
       ("AllocateCodeSection" "LLVMMemoryManagerAllocateCodeSectionCallback")
       ("AllocateDataSection" "LLVMMemoryManagerAllocateDataSectionCallback")
       ("FinalizeMemory" "LLVMMemoryManagerFinalizeMemoryCallback")
       ("Destroy" "LLVMMemoryManagerDestroyCallback")
   ))
   ("LLVMDisposeMCJITMemoryManager" "void" (
       ("MM" "LLVMMCJITMemoryManagerRef")
   ))
   ("LLVMAddArgumentPromotionPass" "void" (
       ("PM" "LLVMPassManagerRef")
   ))
   ("LLVMAddConstantMergePass" "void" (
       ("PM" "LLVMPassManagerRef")
   ))
   ("LLVMAddDeadArgEliminationPass" "void" (
       ("PM" "LLVMPassManagerRef")
   ))
   ("LLVMAddFunctionAttrsPass" "void" (
       ("PM" "LLVMPassManagerRef")
   ))
   ("LLVMAddFunctionInliningPass" "void" (
       ("PM" "LLVMPassManagerRef")
   ))
   ("LLVMAddAlwaysInlinerPass" "void" (
       ("PM" "LLVMPassManagerRef")
   ))
   ("LLVMAddGlobalDCEPass" "void" (
       ("PM" "LLVMPassManagerRef")
   ))
   ("LLVMAddGlobalOptimizerPass" "void" (
       ("PM" "LLVMPassManagerRef")
   ))
   ("LLVMAddIPConstantPropagationPass" "void" (
       ("PM" "LLVMPassManagerRef")
   ))
   ("LLVMAddPruneEHPass" "void" (
       ("PM" "LLVMPassManagerRef")
   ))
   ("LLVMAddIPSCCPPass" "void" (
       ("PM" "LLVMPassManagerRef")
   ))
   ("LLVMAddInternalizePass" "void" (
       ("A0" "LLVMPassManagerRef")
       ("AllButMain" "unsigned int")
   ))
   ("LLVMAddStripDeadPrototypesPass" "void" (
       ("PM" "LLVMPassManagerRef")
   ))
   ("LLVMAddStripSymbolsPass" "void" (
       ("PM" "LLVMPassManagerRef")
   ))
   ("LLVMAddAggressiveDCEPass" "void" (
       ("PM" "LLVMPassManagerRef")
   ))
   ("LLVMAddBitTrackingDCEPass" "void" (
       ("PM" "LLVMPassManagerRef")
   ))
   ("LLVMAddAlignmentFromAssumptionsPass" "void" (
       ("PM" "LLVMPassManagerRef")
   ))
   ("LLVMAddCFGSimplificationPass" "void" (
       ("PM" "LLVMPassManagerRef")
   ))
   ("LLVMAddDeadStoreEliminationPass" "void" (
       ("PM" "LLVMPassManagerRef")
   ))
   ("LLVMAddScalarizerPass" "void" (
       ("PM" "LLVMPassManagerRef")
   ))
   ("LLVMAddMergedLoadStoreMotionPass" "void" (
       ("PM" "LLVMPassManagerRef")
   ))
   ("LLVMAddGVNPass" "void" (
       ("PM" "LLVMPassManagerRef")
   ))
   ("LLVMAddIndVarSimplifyPass" "void" (
       ("PM" "LLVMPassManagerRef")
   ))
   ("LLVMAddInstructionCombiningPass" "void" (
       ("PM" "LLVMPassManagerRef")
   ))
   ("LLVMAddJumpThreadingPass" "void" (
       ("PM" "LLVMPassManagerRef")
   ))
   ("LLVMAddLICMPass" "void" (
       ("PM" "LLVMPassManagerRef")
   ))
   ("LLVMAddLoopDeletionPass" "void" (
       ("PM" "LLVMPassManagerRef")
   ))
   ("LLVMAddLoopIdiomPass" "void" (
       ("PM" "LLVMPassManagerRef")
   ))
   ("LLVMAddLoopRotatePass" "void" (
       ("PM" "LLVMPassManagerRef")
   ))
   ("LLVMAddLoopRerollPass" "void" (
       ("PM" "LLVMPassManagerRef")
   ))
   ("LLVMAddLoopUnrollPass" "void" (
       ("PM" "LLVMPassManagerRef")
   ))
   ("LLVMAddLoopUnswitchPass" "void" (
       ("PM" "LLVMPassManagerRef")
   ))
   ("LLVMAddMemCpyOptPass" "void" (
       ("PM" "LLVMPassManagerRef")
   ))
   ("LLVMAddPartiallyInlineLibCallsPass" "void" (
       ("PM" "LLVMPassManagerRef")
   ))
   ("LLVMAddLowerSwitchPass" "void" (
       ("PM" "LLVMPassManagerRef")
   ))
   ("LLVMAddPromoteMemoryToRegisterPass" "void" (
       ("PM" "LLVMPassManagerRef")
   ))
   ("LLVMAddReassociatePass" "void" (
       ("PM" "LLVMPassManagerRef")
   ))
   ("LLVMAddSCCPPass" "void" (
       ("PM" "LLVMPassManagerRef")
   ))
   ("LLVMAddScalarReplAggregatesPass" "void" (
       ("PM" "LLVMPassManagerRef")
   ))
   ("LLVMAddScalarReplAggregatesPassSSA" "void" (
       ("PM" "LLVMPassManagerRef")
   ))
   ("LLVMAddScalarReplAggregatesPassWithThreshold" "void" (
       ("PM" "LLVMPassManagerRef")
       ("Threshold" "int")
   ))
   ("LLVMAddSimplifyLibCallsPass" "void" (
       ("PM" "LLVMPassManagerRef")
   ))
   ("LLVMAddTailCallEliminationPass" "void" (
       ("PM" "LLVMPassManagerRef")
   ))
   ("LLVMAddConstantPropagationPass" "void" (
       ("PM" "LLVMPassManagerRef")
   ))
   ("LLVMAddDemoteMemoryToRegisterPass" "void" (
       ("PM" "LLVMPassManagerRef")
   ))
   ("LLVMAddVerifierPass" "void" (
       ("PM" "LLVMPassManagerRef")
   ))
   ("LLVMAddCorrelatedValuePropagationPass" "void" (
       ("PM" "LLVMPassManagerRef")
   ))
   ("LLVMAddEarlyCSEPass" "void" (
       ("PM" "LLVMPassManagerRef")
   ))
   ("LLVMAddLowerExpectIntrinsicPass" "void" (
       ("PM" "LLVMPassManagerRef")
   ))
   ("LLVMAddTypeBasedAliasAnalysisPass" "void" (
       ("PM" "LLVMPassManagerRef")
   ))
   ("LLVMAddScopedNoAliasAAPass" "void" (
       ("PM" "LLVMPassManagerRef")
   ))
   ("LLVMAddBasicAliasAnalysisPass" "void" (
       ("PM" "LLVMPassManagerRef")
   ))
   ("LLVMPassManagerBuilderCreate" "LLVMPassManagerBuilderRef" (
   ))
   ("LLVMPassManagerBuilderDispose" "void" (
       ("PMB" "LLVMPassManagerBuilderRef")
   ))
   ("LLVMPassManagerBuilderSetOptLevel" "void" (
       ("PMB" "LLVMPassManagerBuilderRef")
       ("OptLevel" "unsigned int")
   ))
   ("LLVMPassManagerBuilderSetSizeLevel" "void" (
       ("PMB" "LLVMPassManagerBuilderRef")
       ("SizeLevel" "unsigned int")
   ))
   ("LLVMPassManagerBuilderSetDisableUnitAtATime" "void" (
       ("PMB" "LLVMPassManagerBuilderRef")
       ("Value" "LLVMBool")
   ))
   ("LLVMPassManagerBuilderSetDisableUnrollLoops" "void" (
       ("PMB" "LLVMPassManagerBuilderRef")
       ("Value" "LLVMBool")
   ))
   ("LLVMPassManagerBuilderSetDisableSimplifyLibCalls" "void" (
       ("PMB" "LLVMPassManagerBuilderRef")
       ("Value" "LLVMBool")
   ))
   ("LLVMPassManagerBuilderUseInlinerWithThreshold" "void" (
       ("PMB" "LLVMPassManagerBuilderRef")
       ("Threshold" "unsigned int")
   ))
   ("LLVMPassManagerBuilderPopulateFunctionPassManager" "void" (
       ("PMB" "LLVMPassManagerBuilderRef")
       ("PM" "LLVMPassManagerRef")
   ))
   ("LLVMPassManagerBuilderPopulateModulePassManager" "void" (
       ("PMB" "LLVMPassManagerBuilderRef")
       ("PM" "LLVMPassManagerRef")
   ))
   ("LLVMPassManagerBuilderPopulateLTOPassManager" "void" (
       ("PMB" "LLVMPassManagerBuilderRef")
       ("PM" "LLVMPassManagerRef")
       ("Internalize" "LLVMBool")
       ("RunInliner" "LLVMBool")
   ))
)))
