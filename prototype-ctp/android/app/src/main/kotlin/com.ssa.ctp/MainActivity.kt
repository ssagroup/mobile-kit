package com.ssa.ctp

import android.annotation.TargetApi
import android.app.NotificationChannel
import android.app.NotificationManager
import android.content.ContentResolver
import android.media.AudioAttributes
import android.net.Uri
import android.os.Build
import android.os.Bundle
import androidx.annotation.RequiresApi
import androidx.core.view.WindowCompat
import io.flutter.embedding.android.FlutterFragmentActivity

class MainActivity: FlutterFragmentActivity() {

    override fun onCreate(savedInstanceState: Bundle?) {

        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
            configure("Notifications", "All notifications")
        }

        super.onCreate(savedInstanceState)
    }

    @TargetApi(Build.VERSION_CODES.O)
    @RequiresApi(Build.VERSION_CODES.O)
    private fun configure(title: String, description: String) {

        val importance = NotificationManager.IMPORTANCE_HIGH
        val mChannel = NotificationChannel(title.lowercase(), title, importance)
        mChannel.description = description
        mChannel.setShowBadge(true)
        mChannel.setBypassDnd(true)
        mChannel.enableVibration(true)

        // Register the channel with the system; you can't change the importance
        // or other notification behaviors after this
        val notificationManager = getSystemService(NOTIFICATION_SERVICE) as NotificationManager
        notificationManager.createNotificationChannel(mChannel)
    }
}
