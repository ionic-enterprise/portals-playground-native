package io.ionic.cs.portals.portalsplayground.ui

import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import io.ionic.cs.portals.portalsplayground.R

class PortalsActivity : AppCompatActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_portals)
        title = "Portals"
    }
}