.class public Lcom/android/launcher2/HomeScreenOptionMenu;
.super Landroid/widget/LinearLayout;
.source "HomeScreenOptionMenu.java"


# static fields
.field static final BOTH_WALLPAPER:I = 0x2

.field public static final HOME_OPTION_SETTINGS:I = 0x2

.field public static final HOME_OPTION_THEMES:I = 0x3

.field public static final HOME_OPTION_WALLPAPERS:I = 0x0

.field public static final HOME_OPTION_WIDGETS:I = 0x1

.field static final HOME_SCREEN_WALLPAPER:I = 0x0

.field static final LOCK_SCREEN_WALLPAPER:I = 0x1

.field static isWidgetTab:Z

.field static mIsActive:Z


# instance fields
.field c:Landroid/content/Context;

.field intent_wallpaper:Landroid/content/Intent;

.field private mLauncher:Lcom/android/launcher2/Launcher;

.field private mOnClickListenerSettings:Landroid/view/View$OnClickListener;

.field private mOnClickListenerTheme:Landroid/view/View$OnClickListener;

.field private mOnClickListenerWallpaper:Landroid/view/View$OnClickListener;

.field private mOnClickListenerWidget:Landroid/view/View$OnClickListener;

.field private mSetting:Landroid/widget/TextView;

.field private mSettingsFragment:Lcom/android/launcher2/HomeScreenOptionSettings;

.field private mTheme:Landroid/widget/TextView;

.field private mWallpaper:Landroid/widget/TextView;

.field private mWidget:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 51
    sput-boolean v0, Lcom/android/launcher2/HomeScreenOptionMenu;->isWidgetTab:Z

    .line 52
    sput-boolean v0, Lcom/android/launcher2/HomeScreenOptionMenu;->mIsActive:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 77
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 50
    invoke-virtual {p0}, Lcom/android/launcher2/HomeScreenOptionMenu;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    iput-object v0, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mLauncher:Lcom/android/launcher2/Launcher;

    .line 150
    new-instance v0, Lcom/android/launcher2/HomeScreenOptionMenu$1;

    invoke-direct {v0, p0}, Lcom/android/launcher2/HomeScreenOptionMenu$1;-><init>(Lcom/android/launcher2/HomeScreenOptionMenu;)V

    iput-object v0, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mOnClickListenerWallpaper:Landroid/view/View$OnClickListener;

    .line 158
    new-instance v0, Lcom/android/launcher2/HomeScreenOptionMenu$2;

    invoke-direct {v0, p0}, Lcom/android/launcher2/HomeScreenOptionMenu$2;-><init>(Lcom/android/launcher2/HomeScreenOptionMenu;)V

    iput-object v0, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mOnClickListenerWidget:Landroid/view/View$OnClickListener;

    .line 166
    new-instance v0, Lcom/android/launcher2/HomeScreenOptionMenu$3;

    invoke-direct {v0, p0}, Lcom/android/launcher2/HomeScreenOptionMenu$3;-><init>(Lcom/android/launcher2/HomeScreenOptionMenu;)V

    iput-object v0, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mOnClickListenerTheme:Landroid/view/View$OnClickListener;

    .line 173
    new-instance v0, Lcom/android/launcher2/HomeScreenOptionMenu$4;

    invoke-direct {v0, p0}, Lcom/android/launcher2/HomeScreenOptionMenu$4;-><init>(Lcom/android/launcher2/HomeScreenOptionMenu;)V

    iput-object v0, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mOnClickListenerSettings:Landroid/view/View$OnClickListener;

    .line 78
    invoke-direct {p0}, Lcom/android/launcher2/HomeScreenOptionMenu;->setup()V

    .line 79
    iput-object p1, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->c:Landroid/content/Context;

    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 71
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    invoke-virtual {p0}, Lcom/android/launcher2/HomeScreenOptionMenu;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    iput-object v0, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mLauncher:Lcom/android/launcher2/Launcher;

    .line 150
    new-instance v0, Lcom/android/launcher2/HomeScreenOptionMenu$1;

    invoke-direct {v0, p0}, Lcom/android/launcher2/HomeScreenOptionMenu$1;-><init>(Lcom/android/launcher2/HomeScreenOptionMenu;)V

    iput-object v0, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mOnClickListenerWallpaper:Landroid/view/View$OnClickListener;

    .line 158
    new-instance v0, Lcom/android/launcher2/HomeScreenOptionMenu$2;

    invoke-direct {v0, p0}, Lcom/android/launcher2/HomeScreenOptionMenu$2;-><init>(Lcom/android/launcher2/HomeScreenOptionMenu;)V

    iput-object v0, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mOnClickListenerWidget:Landroid/view/View$OnClickListener;

    .line 166
    new-instance v0, Lcom/android/launcher2/HomeScreenOptionMenu$3;

    invoke-direct {v0, p0}, Lcom/android/launcher2/HomeScreenOptionMenu$3;-><init>(Lcom/android/launcher2/HomeScreenOptionMenu;)V

    iput-object v0, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mOnClickListenerTheme:Landroid/view/View$OnClickListener;

    .line 173
    new-instance v0, Lcom/android/launcher2/HomeScreenOptionMenu$4;

    invoke-direct {v0, p0}, Lcom/android/launcher2/HomeScreenOptionMenu$4;-><init>(Lcom/android/launcher2/HomeScreenOptionMenu;)V

    iput-object v0, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mOnClickListenerSettings:Landroid/view/View$OnClickListener;

    .line 72
    invoke-direct {p0}, Lcom/android/launcher2/HomeScreenOptionMenu;->setup()V

    .line 73
    iput-object p1, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->c:Landroid/content/Context;

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 65
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    invoke-virtual {p0}, Lcom/android/launcher2/HomeScreenOptionMenu;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    iput-object v0, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mLauncher:Lcom/android/launcher2/Launcher;

    .line 150
    new-instance v0, Lcom/android/launcher2/HomeScreenOptionMenu$1;

    invoke-direct {v0, p0}, Lcom/android/launcher2/HomeScreenOptionMenu$1;-><init>(Lcom/android/launcher2/HomeScreenOptionMenu;)V

    iput-object v0, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mOnClickListenerWallpaper:Landroid/view/View$OnClickListener;

    .line 158
    new-instance v0, Lcom/android/launcher2/HomeScreenOptionMenu$2;

    invoke-direct {v0, p0}, Lcom/android/launcher2/HomeScreenOptionMenu$2;-><init>(Lcom/android/launcher2/HomeScreenOptionMenu;)V

    iput-object v0, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mOnClickListenerWidget:Landroid/view/View$OnClickListener;

    .line 166
    new-instance v0, Lcom/android/launcher2/HomeScreenOptionMenu$3;

    invoke-direct {v0, p0}, Lcom/android/launcher2/HomeScreenOptionMenu$3;-><init>(Lcom/android/launcher2/HomeScreenOptionMenu;)V

    iput-object v0, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mOnClickListenerTheme:Landroid/view/View$OnClickListener;

    .line 173
    new-instance v0, Lcom/android/launcher2/HomeScreenOptionMenu$4;

    invoke-direct {v0, p0}, Lcom/android/launcher2/HomeScreenOptionMenu$4;-><init>(Lcom/android/launcher2/HomeScreenOptionMenu;)V

    iput-object v0, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mOnClickListenerSettings:Landroid/view/View$OnClickListener;

    .line 66
    invoke-direct {p0}, Lcom/android/launcher2/HomeScreenOptionMenu;->setup()V

    .line 67
    iput-object p1, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->c:Landroid/content/Context;

    .line 68
    return-void
.end method

.method private setup()V
    .locals 1

    .prologue
    .line 83
    new-instance v0, Lcom/android/launcher2/HomeScreenOptionSettings;

    invoke-direct {v0}, Lcom/android/launcher2/HomeScreenOptionSettings;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mSettingsFragment:Lcom/android/launcher2/HomeScreenOptionSettings;

    .line 84
    return-void
.end method


# virtual methods
.method public getHomeScreenOptionSettings()Lcom/android/launcher2/HomeScreenOptionSettings;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mSettingsFragment:Lcom/android/launcher2/HomeScreenOptionSettings;

    return-object v0
.end method

.method public getWidgetButton()Landroid/view/View;
    .locals 1

    .prologue
    .line 324
    iget-object v0, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mWidget:Landroid/widget/TextView;

    return-object v0
.end method

.method public isActive()Z
    .locals 1

    .prologue
    .line 143
    sget-boolean v0, Lcom/android/launcher2/HomeScreenOptionMenu;->mIsActive:Z

    return v0
.end method

.method public isSettingVisible()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 181
    iget-object v0, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mSettingsFragment:Lcom/android/launcher2/HomeScreenOptionSettings;

    if-nez v0, :cond_0

    .line 183
    :cond_0
    return v1
.end method

.method public launchOptionSettings()V
    .locals 2

    .prologue
    .line 230
    sget-boolean v1, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-nez v1, :cond_0

    .line 231
    new-instance v0, Landroid/content/Intent;

    const-string v1, "sec.android.launcher2.intent.action.HomeScreenOptionSettings"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 233
    .local v0, "homescreenSetting":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v1, v0}, Lcom/android/launcher2/Launcher;->startActivity(Landroid/content/Intent;)V

    .line 235
    .end local v0    # "homescreenSetting":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public launchOptionThemes()V
    .locals 2

    .prologue
    .line 222
    sget-boolean v1, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-nez v1, :cond_0

    .line 223
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.intent.action.THEME_CHOOSER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 225
    .local v0, "homescreenTheme":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v1, v0}, Lcom/android/launcher2/Launcher;->startActivity(Landroid/content/Intent;)V

    .line 227
    .end local v0    # "homescreenTheme":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public launchOptionWallpaper()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 191
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/LauncherApplication;->isKnoxMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 192
    iget-object v1, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->getHomeView()Lcom/android/launcher2/HomeView;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/launcher2/HomeView;->startWallpaper(I)V

    .line 200
    :goto_0
    return-void

    .line 194
    :cond_0
    const/4 v0, 0x0

    .line 195
    .local v0, "mGuider":Lcom/android/launcher2/guide/GuiderLifecycleListener;
    new-instance v0, Lcom/android/launcher2/guide/ChangeWallpaperGuider;

    .end local v0    # "mGuider":Lcom/android/launcher2/guide/GuiderLifecycleListener;
    invoke-virtual {p0}, Lcom/android/launcher2/HomeScreenOptionMenu;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/android/launcher2/guide/ChangeWallpaperGuider;-><init>(Landroid/app/Activity;)V

    .line 196
    .restart local v0    # "mGuider":Lcom/android/launcher2/guide/GuiderLifecycleListener;
    check-cast v0, Lcom/android/launcher2/guide/ChangeWallpaperGuider;

    .end local v0    # "mGuider":Lcom/android/launcher2/guide/GuiderLifecycleListener;
    invoke-virtual {v0}, Lcom/android/launcher2/guide/ChangeWallpaperGuider;->dismissHelpDialog()V

    .line 198
    iget-object v1, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->getHomeView()Lcom/android/launcher2/HomeView;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/launcher2/HomeView;->startWallpaper(I)V

    goto :goto_0
.end method

.method public launchOptionWidgets()V
    .locals 4

    .prologue
    .line 203
    iget-object v2, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v1

    .line 207
    .local v1, "menuView":Lcom/android/launcher2/MenuView;
    invoke-virtual {v1}, Lcom/android/launcher2/MenuView;->getMenuWidgets()Lcom/android/launcher2/MenuWidgets;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 208
    invoke-virtual {v1}, Lcom/android/launcher2/MenuView;->getMenuWidgets()Lcom/android/launcher2/MenuWidgets;

    move-result-object v2

    sget-object v3, Lcom/android/launcher2/MenuWidgets$DisplayType;->NORMAL:Lcom/android/launcher2/MenuWidgets$DisplayType;

    invoke-virtual {v2, v3}, Lcom/android/launcher2/MenuWidgets;->setDisplayType(Lcom/android/launcher2/MenuWidgets$DisplayType;)V

    .line 211
    :cond_0
    sget-boolean v2, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v2, :cond_1

    sget-object v2, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v3, "add_widgets"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 212
    const/4 v0, 0x0

    .line 213
    .local v0, "mGuider":Lcom/android/launcher2/guide/GuiderLifecycleListener;
    new-instance v0, Lcom/android/launcher2/guide/AddWidgetsGuider;

    .end local v0    # "mGuider":Lcom/android/launcher2/guide/GuiderLifecycleListener;
    invoke-virtual {p0}, Lcom/android/launcher2/HomeScreenOptionMenu;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-direct {v0, v2}, Lcom/android/launcher2/guide/AddWidgetsGuider;-><init>(Landroid/app/Activity;)V

    .line 214
    .restart local v0    # "mGuider":Lcom/android/launcher2/guide/GuiderLifecycleListener;
    check-cast v0, Lcom/android/launcher2/guide/AddWidgetsGuider;

    .end local v0    # "mGuider":Lcom/android/launcher2/guide/GuiderLifecycleListener;
    invoke-virtual {v0}, Lcom/android/launcher2/guide/AddWidgetsGuider;->dismissHelpDialog()V

    .line 216
    :cond_1
    invoke-virtual {v1}, Lcom/android/launcher2/MenuView;->selectWidgetsTab()V

    .line 217
    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/launcher2/HomeScreenOptionMenu;->isWidgetTab:Z

    .line 218
    iget-object v2, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->showAllApps()V

    .line 219
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 10
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v9, 0x0

    .line 240
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 242
    invoke-virtual {p0}, Lcom/android/launcher2/HomeScreenOptionMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 243
    .local v5, "res":Landroid/content/res/Resources;
    const v8, 0x7f0e0144

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 244
    .local v6, "sidePadding":I
    const v8, 0x7f0e0146

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 245
    .local v0, "bottomPadding":I
    invoke-virtual {p0, v6, v9, v6, v0}, Lcom/android/launcher2/HomeScreenOptionMenu;->setPadding(IIII)V

    .line 247
    invoke-virtual {p0}, Lcom/android/launcher2/HomeScreenOptionMenu;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    .line 248
    .local v7, "viewGroupParams":Landroid/view/ViewGroup$LayoutParams;
    const v8, 0x7f0e0143

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 249
    .local v4, "optionHeight":I
    iput v4, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 250
    invoke-virtual {p0, v7}, Lcom/android/launcher2/HomeScreenOptionMenu;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 252
    const v8, 0x7f0e0148

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 253
    .local v1, "iconGap":I
    const v8, 0x7f0e007f

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 254
    .local v3, "marginTop":I
    iget-object v8, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mWallpaper:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 255
    .local v2, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v2, v9, v3, v1, v9}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 256
    iget-object v8, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mWallpaper:Landroid/widget/TextView;

    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 258
    sget-boolean v8, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_THEME_ENABLE:Z

    if-eqz v8, :cond_1

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/launcher2/LauncherApplication;->isKnoxMode()Z

    move-result v8

    if-nez v8, :cond_1

    .line 259
    invoke-virtual {p0}, Lcom/android/launcher2/HomeScreenOptionMenu;->setThemeOptionLayout()V

    .line 267
    :cond_0
    :goto_0
    return-void

    .line 261
    :cond_1
    iget-object v8, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mSetting:Landroid/widget/TextView;

    if-eqz v8, :cond_0

    .line 262
    iget-object v8, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mWidget:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .end local v2    # "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 263
    .restart local v2    # "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v2, v9, v3, v1, v9}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 264
    iget-object v8, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mWidget:Landroid/widget/TextView;

    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 88
    const v0, 0x7f0f0058

    invoke-virtual {p0, v0}, Lcom/android/launcher2/HomeScreenOptionMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mWallpaper:Landroid/widget/TextView;

    .line 89
    iget-object v0, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mWallpaper:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mOnClickListenerWallpaper:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    iget-object v0, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mWallpaper:Landroid/widget/TextView;

    sget-object v1, Lcom/android/launcher2/FocusHelper;->HOME_OPTION_MENU_KEY_LISTENER:Landroid/view/View$OnKeyListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 92
    const v0, 0x7f0f0059

    invoke-virtual {p0, v0}, Lcom/android/launcher2/HomeScreenOptionMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mWidget:Landroid/widget/TextView;

    .line 93
    iget-object v0, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mWidget:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mOnClickListenerWidget:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    iget-object v0, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mWidget:Landroid/widget/TextView;

    sget-object v1, Lcom/android/launcher2/FocusHelper;->HOME_OPTION_MENU_KEY_LISTENER:Landroid/view/View$OnKeyListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 96
    sget-boolean v0, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_THEME_ENABLE:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/LauncherApplication;->isKnoxMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 97
    const v0, 0x7f0f005b

    invoke-virtual {p0, v0}, Lcom/android/launcher2/HomeScreenOptionMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mTheme:Landroid/widget/TextView;

    .line 98
    iget-object v0, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mTheme:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mTheme:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mOnClickListenerTheme:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    iget-object v0, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mTheme:Landroid/widget/TextView;

    sget-object v1, Lcom/android/launcher2/FocusHelper;->HOME_OPTION_MENU_KEY_LISTENER:Landroid/view/View$OnKeyListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 101
    iget-object v0, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mTheme:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 105
    :cond_0
    const v0, 0x7f0f005a

    invoke-virtual {p0, v0}, Lcom/android/launcher2/HomeScreenOptionMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mSetting:Landroid/widget/TextView;

    .line 106
    iget-object v0, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mSetting:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 107
    iget-object v0, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mSetting:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mOnClickListenerSettings:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    iget-object v0, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mSetting:Landroid/widget/TextView;

    sget-object v1, Lcom/android/launcher2/FocusHelper;->HOME_OPTION_MENU_KEY_LISTENER:Landroid/view/View$OnKeyListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 111
    :cond_1
    sget-object v0, Lcom/android/launcher2/FocusHelper;->HOME_OPTION_MENU_KEY_LISTENER:Landroid/view/View$OnKeyListener;

    invoke-virtual {p0, v0}, Lcom/android/launcher2/HomeScreenOptionMenu;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 112
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 114
    sget-boolean v0, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_THEME_ENABLE:Z

    if-eqz v0, :cond_2

    .line 115
    invoke-virtual {p0}, Lcom/android/launcher2/HomeScreenOptionMenu;->setThemeOptionLayout()V

    .line 117
    :cond_2
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 1
    .param p1, "gainFocus"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 136
    if-eqz p1, :cond_0

    .line 137
    const v0, 0x7f0f0058

    invoke-virtual {p0, v0}, Lcom/android/launcher2/HomeScreenOptionMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 139
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/LinearLayout;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 140
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 131
    const/4 v0, 0x1

    return v0
.end method

.method public setAlpha(F)V
    .locals 1
    .param p1, "alpha"    # F

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mWallpaper:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 122
    iget-object v0, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mWidget:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 123
    iget-object v0, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mSetting:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 124
    iget-object v0, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mTheme:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mTheme:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 127
    :cond_0
    return-void
.end method

.method public setMakeActive(Z)V
    .locals 0
    .param p1, "active"    # Z

    .prologue
    .line 147
    sput-boolean p1, Lcom/android/launcher2/HomeScreenOptionMenu;->mIsActive:Z

    .line 148
    return-void
.end method

.method protected setThemeOptionLayout()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    .line 270
    sget-boolean v9, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_THEME_ENABLE:Z

    if-eqz v9, :cond_0

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/launcher2/LauncherApplication;->isKnoxMode()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 321
    :cond_0
    :goto_0
    return-void

    .line 274
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/HomeScreenOptionMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 276
    .local v5, "res":Landroid/content/res/Resources;
    const v9, 0x7f0e008c

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 277
    .local v6, "sidePadding":I
    const v9, 0x7f0e0146

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 279
    .local v0, "bottomPadding":I
    const v9, 0x7f0e008e

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 281
    .local v2, "iconWidth":I
    const/4 v9, 0x0

    invoke-virtual {p0, v6, v9, v6, v0}, Lcom/android/launcher2/HomeScreenOptionMenu;->setPadding(IIII)V

    .line 283
    invoke-virtual {p0}, Lcom/android/launcher2/HomeScreenOptionMenu;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    .line 284
    .local v8, "viewGroupParams":Landroid/view/ViewGroup$LayoutParams;
    const v9, 0x7f0e0143

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 285
    .local v4, "optionHeight":I
    iput v4, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 286
    invoke-virtual {p0, v8}, Lcom/android/launcher2/HomeScreenOptionMenu;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 290
    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    iget v1, v9, Landroid/util/DisplayMetrics;->density:F

    .line 291
    .local v1, "density":F
    const v9, 0x7f0e008f

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    div-float v7, v9, v1

    .line 293
    .local v7, "textSize":F
    iget-object v9, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mWallpaper:Landroid/widget/TextView;

    if-eqz v9, :cond_2

    .line 294
    iget-object v9, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mWallpaper:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 295
    .local v3, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    iput v2, v3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 296
    iget-object v9, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mWallpaper:Landroid/widget/TextView;

    invoke-virtual {v9, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 297
    iget-object v9, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mWallpaper:Landroid/widget/TextView;

    invoke-virtual {v9, v10, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 300
    .end local v3    # "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    :cond_2
    iget-object v9, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mWidget:Landroid/widget/TextView;

    if-eqz v9, :cond_3

    .line 301
    iget-object v9, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mWidget:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 302
    .restart local v3    # "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    iput v2, v3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 303
    iget-object v9, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mWidget:Landroid/widget/TextView;

    invoke-virtual {v9, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 304
    iget-object v9, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mWidget:Landroid/widget/TextView;

    invoke-virtual {v9, v10, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 307
    .end local v3    # "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    :cond_3
    iget-object v9, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mSetting:Landroid/widget/TextView;

    if-eqz v9, :cond_4

    .line 308
    iget-object v9, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mSetting:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 309
    .restart local v3    # "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    iput v2, v3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 310
    iget-object v9, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mSetting:Landroid/widget/TextView;

    invoke-virtual {v9, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 311
    iget-object v9, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mSetting:Landroid/widget/TextView;

    invoke-virtual {v9, v10, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 314
    .end local v3    # "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    :cond_4
    iget-object v9, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mTheme:Landroid/widget/TextView;

    if-eqz v9, :cond_0

    .line 315
    iget-object v9, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mTheme:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 316
    .restart local v3    # "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    iput v2, v3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 317
    iget-object v9, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mTheme:Landroid/widget/TextView;

    invoke-virtual {v9, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 318
    iget-object v9, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mTheme:Landroid/widget/TextView;

    invoke-virtual {v9, v10, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    goto/16 :goto_0
.end method
