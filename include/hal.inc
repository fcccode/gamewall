; made with protoize by f0dder
; with a few hand-made fixes
; Four-F, four-f@mail.ru
; last update 10-Dec-2002

HalGetInterruptVector PROTO STDCALL :DWORD, :DWORD, :DWORD, :DWORD, :DWORD, :DWORD
HalAdjustResourceList PROTO STDCALL :DWORD
HalAssignSlotResources PROTO STDCALL :DWORD, :DWORD, :DWORD, :DWORD, :DWORD, :DWORD, :DWORD, :DWORD
IoAssignDriveLetters PROTO STDCALL :DWORD, :DWORD, :DWORD, :DWORD
IoReadPartitionTable PROTO STDCALL :DWORD, :DWORD, :DWORD, :DWORD
IoSetPartitionInformation PROTO STDCALL :DWORD, :DWORD, :DWORD, :DWORD
IoWritePartitionTable PROTO STDCALL :DWORD, :DWORD, :DWORD, :DWORD, :DWORD
HalAcquireDisplayOwnership PROTO STDCALL :DWORD
HalDisplayString PROTO STDCALL :DWORD
HalSetDisplayParameters PROTO STDCALL :DWORD, :DWORD
HalQueryDisplayParameters PROTO STDCALL :DWORD, :DWORD, :DWORD, :DWORD
HalMakeBeep PROTO STDCALL :DWORD
HalGetBusData PROTO STDCALL :DWORD, :DWORD, :DWORD, :DWORD, :DWORD
HalSetBusData PROTO STDCALL :DWORD, :DWORD, :DWORD, :DWORD, :DWORD
HalAllocateAdapterChannel PROTO STDCALL :DWORD, :DWORD, :DWORD, :DWORD
HalAllocateCommonBuffer PROTO STDCALL :DWORD, :DWORD, :DWORD, :DWORD
HalFlushCommonBuffer PROTO STDCALL :DWORD, :DWORD, :DWORD, :DWORD, :DWORD
HalFreeCommonBuffer PROTO STDCALL :DWORD, :DWORD, :DWORD, :DWORD, :DWORD, :DWORD
HalReadDmaCounter PROTO STDCALL :DWORD
IoFlushAdapterBuffers PROTO STDCALL :DWORD, :DWORD, :DWORD, :DWORD, :DWORD, :DWORD
IoFreeAdapterChannel PROTO STDCALL :DWORD
IoFreeMapRegisters PROTO STDCALL :DWORD, :DWORD, :DWORD
IoMapTransfer PROTO STDCALL :DWORD, :DWORD, :DWORD, :DWORD, :DWORD, :DWORD
HalGetAdapter PROTO STDCALL :DWORD, :DWORD
HalSetBusDataByOffset PROTO STDCALL :DWORD, :DWORD, :DWORD, :DWORD, :DWORD, :DWORD
HalGetBusDataByOffset PROTO STDCALL :DWORD, :DWORD, :DWORD, :DWORD, :DWORD, :DWORD
HalAllocateCrashDumpRegisters PROTO STDCALL :DWORD, :DWORD
HalAllProcessorsStarted PROTO STDCALL
HalCalibratePerformanceCounter PROTO STDCALL :DWORD, :DWORD, :DWORD
HalDisableSystemInterrupt PROTO STDCALL :DWORD, :DWORD
HalEnableSystemInterrupt PROTO STDCALL :DWORD, :DWORD, :DWORD
HalGetEnvironmentVariable PROTO STDCALL :DWORD, :DWORD, :DWORD
HalInitializeProcessor PROTO STDCALL :DWORD, :DWORD
HalInitSystem PROTO STDCALL :DWORD, :DWORD
HalProcessorIdle PROTO STDCALL
HalQueryRealTimeClock PROTO STDCALL :DWORD
HalReportResourceUsage PROTO STDCALL
HalRequestIpi PROTO STDCALL :DWORD
HalReturnToFirmware PROTO STDCALL :DWORD
HalSetEnvironmentVariable PROTO STDCALL :DWORD, :DWORD
HalSetProfileInterval PROTO STDCALL :DWORD
HalSetRealTimeClock PROTO STDCALL :DWORD
HalSetTimeIncrement PROTO STDCALL :DWORD
HalStartNextProcessor PROTO STDCALL :DWORD, :DWORD
HalStartProfileInterrupt PROTO STDCALL :DWORD
HalStopProfileInterrupt PROTO STDCALL :DWORD
HalTranslateBusAddress PROTO STDCALL :DWORD, :DWORD, :DWORD, :DWORD, :DWORD, :DWORD
KdPortGetByte PROTO STDCALL :DWORD
KdPortInitialize PROTO STDCALL :DWORD, :DWORD, :DWORD
KdPortPollByte PROTO STDCALL :DWORD
KdPortPutByte PROTO STDCALL :DWORD
KdPortRestore PROTO STDCALL
KdPortSave PROTO STDCALL
KeFlushWriteBuffer PROTO STDCALL
KeQueryPerformanceCounter PROTO STDCALL :DWORD
KeStallExecutionProcessor PROTO STDCALL :DWORD
KeRaiseIrql PROTO STDCALL :DWORD, :DWORD
KeLowerIrql PROTO STDCALL :DWORD
KeRaiseIrqlToDpcLevel PROTO STDCALL
KeRaiseIrqlToSynchLevel PROTO STDCALL
KeGetCurrentIrql PROTO STDCALL
KeAcquireSpinLock PROTO STDCALL :DWORD, :DWORD
KeReleaseSpinLock PROTO STDCALL :DWORD, :DWORD
HalBeginSystemInterrupt PROTO STDCALL :DWORD, :DWORD, :DWORD
HalEndSystemInterrupt PROTO STDCALL :DWORD, :DWORD
HalHandleNMI PROTO STDCALL :DWORD
READ_PORT_UCHAR PROTO STDCALL :DWORD
READ_PORT_USHORT PROTO STDCALL :DWORD
READ_PORT_ULONG PROTO STDCALL :DWORD
READ_PORT_BUFFER_UCHAR PROTO STDCALL :DWORD, :DWORD, :DWORD
READ_PORT_BUFFER_USHORT PROTO STDCALL :DWORD, :DWORD, :DWORD
READ_PORT_BUFFER_ULONG PROTO STDCALL :DWORD, :DWORD, :DWORD
WRITE_PORT_UCHAR PROTO STDCALL :DWORD, :DWORD
WRITE_PORT_USHORT PROTO STDCALL :DWORD, :DWORD
WRITE_PORT_ULONG PROTO STDCALL :DWORD, :DWORD
WRITE_PORT_BUFFER_UCHAR PROTO STDCALL :DWORD, :DWORD, :DWORD
WRITE_PORT_BUFFER_USHORT PROTO STDCALL :DWORD, :DWORD, :DWORD
WRITE_PORT_BUFFER_ULONG PROTO STDCALL :DWORD, :DWORD, :DWORD

KdComPortInUse PROTO C;???

; FASTCALL functions
EXTERNDEF SYSCALL @KfRaiseIrql@4:PROC
KfRaiseIrql TEXTEQU <@KfRaiseIrql@4>
EXTERNDEF SYSCALL @KfLowerIrql@4:PROC
KfLowerIrql TEXTEQU <@KfLowerIrql@4>
EXTERNDEF SYSCALL @KfAcquireSpinLock@4:PROC
KfAcquireSpinLock TEXTEQU <@KfAcquireSpinLock@4>
EXTERNDEF SYSCALL @KfReleaseSpinLock@8:PROC
KfReleaseSpinLock TEXTEQU <@KfReleaseSpinLock@8>
EXTERNDEF SYSCALL @KeAcquireSpinLockRaiseToSynch@4:PROC
KeAcquireSpinLockRaiseToSynch TEXTEQU <@KeAcquireSpinLockRaiseToSynch@4>
EXTERNDEF SYSCALL @KeAcquireQueuedSpinLock@4:PROC
KeAcquireQueuedSpinLock TEXTEQU <@KeAcquireQueuedSpinLock@4>
EXTERNDEF SYSCALL @KeAcquireQueuedSpinLockRaiseToSynch@4:PROC
KeAcquireQueuedSpinLockRaiseToSynch TEXTEQU <@KeAcquireQueuedSpinLockRaiseToSynch@4>
EXTERNDEF SYSCALL @KeReleaseQueuedSpinLock@8:PROC
KeReleaseQueuedSpinLock TEXTEQU <@KeReleaseQueuedSpinLock@8>
EXTERNDEF SYSCALL @KeTryToAcquireQueuedSpinLock@8:PROC
KeTryToAcquireQueuedSpinLock TEXTEQU <@KeTryToAcquireQueuedSpinLock@8>
EXTERNDEF SYSCALL @KeTryToAcquireQueuedSpinLockRaiseToSynch@8:PROC
KeTryToAcquireQueuedSpinLockRaiseToSynch TEXTEQU <@KeTryToAcquireQueuedSpinLockRaiseToSynch@8>
EXTERNDEF SYSCALL @ExAcquireFastMutex@4:PROC
ExAcquireFastMutex TEXTEQU <@ExAcquireFastMutex@4>
EXTERNDEF SYSCALL @ExTryToAcquireFastMutex@4:PROC
ExTryToAcquireFastMutex TEXTEQU <@ExTryToAcquireFastMutex@4>
EXTERNDEF SYSCALL @ExReleaseFastMutex@4:PROC
ExReleaseFastMutex TEXTEQU <@ExReleaseFastMutex@4>
EXTERNDEF SYSCALL @HalClearSoftwareInterrupt@4:PROC
HalClearSoftwareInterrupt TEXTEQU <@HalClearSoftwareInterrupt@4>
EXTERNDEF SYSCALL @HalRequestSoftwareInterrupt@4:PROC
HalRequestSoftwareInterrupt TEXTEQU <@HalRequestSoftwareInterrupt@4>
EXTERNDEF SYSCALL @HalSystemVectorDispatchEntry@12:PROC
HalSystemVectorDispatchEntry TEXTEQU <@HalSystemVectorDispatchEntry@12>
