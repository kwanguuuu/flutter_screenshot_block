package flutter.moum.screenshot_block.screenshot_block;

import android.app.Activity;
import android.content.Context;
import android.util.Log;
import android.view.Window;
import android.view.WindowManager;

import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.plugin.common.MethodChannel.MethodCallHandler;
import io.flutter.plugin.common.MethodChannel.Result;
import io.flutter.plugin.common.PluginRegistry.Registrar;

/** ScreenshotBlockPlugin */
public class ScreenshotBlockPlugin implements MethodCallHandler {
  public static Activity activity;
  private static String TAG = "tag";
  /** Plugin registration. */
  public static void registerWith(Registrar registrar) {
    final MethodChannel channel = new MethodChannel(registrar.messenger(), "screenshot_block");
    channel.setMethodCallHandler(new ScreenshotBlockPlugin());
    activity = registrar.activity();
  }

  @Override
  public void onMethodCall(MethodCall call, Result result) {
    if (call.method.equals("enableScreenshot")) {
      Log.d(TAG,"enableScreenshot");
      activity.getWindow().setFlags(WindowManager.LayoutParams.FLAG_SECURE, WindowManager.LayoutParams.FLAG_SECURE);

    } else if (call.method.equals("disableScreenshot")){
      Log.d(TAG,"disableScreenshot");
      activity.getWindow().clearFlags(WindowManager.LayoutParams.FLAG_SECURE);

    } else {
      result.notImplemented();

    }
  }
}
