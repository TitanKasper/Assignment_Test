**Settings**
Library     AppiumLibrary

**Variables**
${email}                    testkasper@gmail.com
${password}                 testkasper123
${Old_User_loginButton}     /hierarchy/android.widget.FrameLayout[1]/android.widget.LinearLayout[1]/android.widget.FrameLayout[1]/android.view.ViewGroup[1]/android.widget.FrameLayout[1]/android.view.ViewGroup[1]/android.widget.FrameLayout[2]/android.view.ViewGroup[1]/android.widget.TextView[1][count(. | //*[@class = 'android.widget.TextView' and @index = '2' and (@text = 'SIGN IN' or . = 'SIGN IN') and @resource-id = 'com.duolingo:id/signinButton' and @package = 'com.duolingo' and @checkable = 'false' and @checked = 'false' and @clickable = 'true' and @enabled = 'false' and @focusable = 'true' and @focused = 'false' and @scrollable = 'false' and @long-clickable = 'false' and @password = 'false' and @selected = 'false' and @x = '44' and @y = '582' and @width = '992' and @height = '143' and @bounds = '[44,582][1036,725]' and @displayed = 'true']) = count(//*[@class = 'android.widget.TextView' and @index = '2' and (@text = 'SIGN IN' or . = 'SIGN IN') and @resource-id = 'com.duolingo:id/signinButton' and @package = 'com.duolingo' and @checkable = 'false' and @checked = 'false' and @clickable = 'true' and @enabled = 'false' and @focusable = 'true' and @focused = 'false' and @scrollable = 'false' and @long-clickable = 'false' and @password = 'false' and @selected = 'false' and @x = '44' and @y = '582' and @width = '992' and @height = '143' and @bounds = '[44,582][1036,725]' and @displayed = 'true'])]
${SignIn_Button}            //*[@class = 'android.widget.TextView' and (@text = 'Search Apps & Games' or . = 'Search Apps & Games')]
${Email_Field}              //hierarchy/android.widget.FrameLayout[1]/android.widget.LinearLayout[1]/android.widget.FrameLayout[1]/android.view.ViewGroup[1]/android.widget.FrameLayout[1]/android.view.ViewGroup[1]/android.widget.FrameLayout[2]/android.view.ViewGroup[1]/android.widget.EditText[1]
${Password_Field}           //hierarchy/android.widget.FrameLayout[1]/android.widget.LinearLayout[1]/android.widget.FrameLayout[1]/android.view.ViewGroup[1]/android.widget.FrameLayout[1]/android.view.ViewGroup[1]/android.widget.FrameLayout[2]/android.view.ViewGroup[1]/android.widget.EditText[2]


**Keywords**
Open Duolingo App and Test Login
    Open Application                com.duolingo    com.duolingo.SplashActivity
    Wait Until Element Is Visible   ${Old_User_loginButton}
    Touch Element                   ${Old_User_loginButton}

Enter Test Email And Password
    [Arguments]                     ${email} ${password}
    Input Text                      ${Email_Field} ${email}
    Input Text                      ${Password_Field} ${password}

Tap Signin Button
##Since this is just testing, I won't make any input of real duolingo account##
    Touch Element                   ${SignIn_Button}
