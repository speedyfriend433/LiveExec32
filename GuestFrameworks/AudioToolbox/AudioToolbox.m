#import <AudioToolbox/AudioToolbox.h>

// TODO: stub

OSStatus AudioServicesCreateSystemSoundID(CFURLRef inFileURL, SystemSoundID *outSystemSoundID) {
    //static hostAddr = host_dlsym("AudioServicesCreateSystemSoundID");
    return 0;
}

OSStatus AudioServicesDisposeSystemSoundID(SystemSoundID inSystemSoundID) {
    return 0;
}

void AudioServicesPlaySystemSound(SystemSoundID inSystemSoundID) {
    
}

OSStatus AudioQueueAddPropertyListener(AudioQueueRef inAQ, AudioQueuePropertyID inID, AudioQueuePropertyListenerProc inProc, void * inUserData) {
    return 0;
}

OSStatus AudioServicesSetProperty(AudioServicesPropertyID inPropertyID, UInt32 inSpecifierSize, const void * inSpecifier, UInt32 inPropertyDataSize, const void * inPropertyData) {
    return 0;
}

OSStatus AudioQueueAllocateBuffer(AudioQueueRef inAQ, UInt32 inBufferByteSize, AudioQueueBufferRef * outBuffer) {
    return 0;
}

OSStatus AudioQueueDispose(AudioQueueRef inAQ, Boolean inImmediate) {
    return 0;
}

OSStatus AudioQueueEnqueueBuffer(AudioQueueRef inAQ, AudioQueueBufferRef inBuffer, UInt32 inNumPacketDescs, const AudioStreamPacketDescription * inPacketDescs) {
    return 0;
}

OSStatus AudioQueueFreeBuffer(AudioQueueRef inAQ, AudioQueueBufferRef inBuffer) {
    return 0;
}

OSStatus AudioQueueGetProperty(AudioQueueRef inAQ, AudioQueuePropertyID inID, void * outData, UInt32 * ioDataSize) {
    return 0;
}

OSStatus AudioQueueNewInput(const AudioStreamBasicDescription * inFormat, AudioQueueInputCallback inCallbackProc, void * inUserData, CFRunLoopRef inCallbackRunLoop, CFStringRef inCallbackRunLoopMode, UInt32 inFlags, AudioQueueRef * outAQ) {
    return 0;
}

OSStatus AudioQueuePause(AudioQueueRef inAQ) {
    return 0;
}

OSStatus AudioQueueSetProperty(AudioQueueRef inAQ, AudioQueuePropertyID inID, const void * inData, UInt32 inDataSize);
OSStatus AudioQueueStart(AudioQueueRef inAQ, const AudioTimeStamp * inStartTime) {
    return 0;
}

OSStatus AudioQueueStop(AudioQueueRef inAQ, Boolean inImmediate) {
    return 0;
}

OSStatus AudioSessionInitialize(CFRunLoopRef inRunLoop, CFStringRef inRunLoopMode, AudioSessionInterruptionListener inInterruptionListener, void * inClientData) {
    return 0; // deprecated
}
OSStatus AudioSessionSetActive(Boolean active) {
    return 0; // deprecated
}

OSStatus AudioSessionSetProperty(AudioSessionPropertyID inID, UInt32 inDataSize, const void * inData) {
    return 0; // deprecated
}
