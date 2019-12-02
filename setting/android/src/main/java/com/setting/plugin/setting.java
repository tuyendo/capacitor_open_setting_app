package com.setting.plugin;

import android.content.Intent;
import android.provider.Settings;

import com.getcapacitor.JSObject;
import com.getcapacitor.NativePlugin;
import com.getcapacitor.Plugin;
import com.getcapacitor.PluginCall;
import com.getcapacitor.PluginMethod;

@NativePlugin()
public class setting extends Plugin {

    @PluginMethod()
    public void openSettingAppLocation(PluginCall call) {
        Intent intent = new Intent(Settings.ACTION_LOCATION_SOURCE_SETTINGS);
        startActivityForResult(call, intent, 1);
        call.success();
    }

    @PluginMethod()
    public void openSettingApp(PluginCall call) {
        Intent intent = new Intent(Settings.ACTION_APPLICATION_SETTINGS);
        startActivityForResult(call, intent, 1);
        call.success();
    }
}
