package io.ionic.cs.portals.portalsplayground.ui

import android.content.Intent
import android.os.Bundle
import android.widget.Button
import androidx.appcompat.app.AppCompatActivity
import io.ionic.cs.portals.portalsplayground.R

class MainActivity : AppCompatActivity() {
    var button: Button? = null

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)
        setTitle(R.string.title_main)
        button = findViewById(R.id.button_main)
        button?.setOnClickListener {
            startActivity(Intent(this,PortalsActivity::class.java))
        }
    }
}