package com.termux.plugin_aidl;


import android.os.ParcelFileDescriptor;

/**
* This can be passed from a plugin to Termux to enable callback functionality.
* To maintain backwards compatibility callbacks cannot be removed (without deprecation).
* New callbacks can be added and CURRENT_CALLBACK_VERSION incremented, but the callbacks can only be called
* when the callback version via getCallbackVersion() is at least the new value of CURRENT_CALLBACK_VERSION.
* Previous callback versions have to be supported by Termux, so an out-of-date plugin doesn't receive transactions it doesn't recognize.
* In the javadoc write the first and last (if there is one) callback version code where the callback will be called.
*/
interface IPluginCallback {
    
    /**
    * This defines to most up-to-date version code for callback binders.
    */
    const int CURRENT_CALLBACK_VERSION = 1;
    
    /**
    * Returns the callback version supported by this Binder.
    * This is the first method called after Termux receives the Binder.
    * Only methods compatible with the callback version will be called.
    */
    int getCallbackVersion() = 1;
    
    
    
    
    
    
    
    
    
    
    
    
    
}
