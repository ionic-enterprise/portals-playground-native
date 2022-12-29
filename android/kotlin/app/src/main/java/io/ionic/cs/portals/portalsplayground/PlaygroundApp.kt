package io.ionic.cs.portals.portalsplayground

import android.app.Application
import io.ionic.portals.PortalManager

class PlaygroundApp : Application() {

    override fun onCreate(): Unit {
        super.onCreate();
        PortalManager.register(getString(R.string.portals_api_key));

        val name = "playground";
        val startDir = "portals/playground";
        PortalManager.newPortal(name).setStartDir(startDir).create();
    }
}