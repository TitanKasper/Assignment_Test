**Settings**
Library         AppiumLibrary

**Variables**
${Server_IP}            https://localhost:4725/wd/hub
${appstore_searchbar}   //*[@class = 'android.widget.TextView' and (@text = 'Search Apps & Games' or . = 'Search Apps & Games')]
${Install_Button}       //hierarchy/android.widget.FrameLayout[1]/android.widget.LinearLayout[1]/android.widget.FrameLayout[1]/android.widget.FrameLayout[1]/android.widget.FrameLayout[1]/android.view.ViewGroup[1]/android.widget.FrameLayout[1]/android.widget.FrameLayout[1]/android.widget.FrameLayout[1]/android.widget.FrameLayout[1]/androidx.compose.ui.platform.ComposeView[1]/android.view.View[1]/android.view.View[1]/android.view.View[1]/android.view.View[3]/android.view.View[1]/android.view.View[1]/android.widget.Button[1]
${Search_Text}          Duolingo
${appPackage}           com.android.vending
${appActivity}          com.android.vending.AssetBrowserActivity
${App_Icon}             android.widget.Button

**Keywords**
Open PlayStore App
    Open Application    ${Server_IP}    ${appPackage}    ${appActivity}

Search And Install Duolingo App
    Touch Element       ${appstore_searchbar}

    [Arguments]         ${Search_Text}
    Input Text          ${appstore_searchbar}   ${Search_Text}

    ##Install App after searching##
    Touch Element       ${App_Icon}
    Touch Element       ${Install_Button}

    ##This sleep function is the downloading time for the app##
    Sleep               300

