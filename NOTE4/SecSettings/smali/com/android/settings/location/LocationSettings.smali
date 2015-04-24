.class public Lcom/android/settings/location/LocationSettings;
.super Lcom/android/settings/location/LocationSettingsBase;
.source "LocationSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;


# instance fields
.field private enabledGps:Z

.field private injector:Lcom/android/settings/location/SettingsInjector;

.field private mAgpsFunctionSwitch:Landroid/preference/PreferenceScreen;

.field private mAgpsMenu:Landroid/preference/PreferenceCategory;

.field private mCategoryRecentLocationRequests:Landroid/preference/PreferenceCategory;

.field private mClockSync:Landroid/preference/CheckBoxPreference;

.field private mIsEmerMode:Z

.field private mLocationMode:Landroid/preference/Preference;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mSatelliteView:Landroid/preference/PreferenceScreen;

.field private mSp:Landroid/preference/SwitchPreferenceScreen;

.field private mSwitch:Landroid/widget/Switch;

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field private mTagCamera:Landroid/preference/CheckBoxPreference;

.field private mTagCurrentLocation:Landroid/preference/PreferenceCategory;

.field private mTagScrapbook:Landroid/preference/CheckBoxPreference;

.field private mTagSnote:Landroid/preference/CheckBoxPreference;

.field private mTagVoicerecorder:Landroid/preference/CheckBoxPreference;

.field private mValidListener:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 73
    invoke-direct {p0}, Lcom/android/settings/location/LocationSettingsBase;-><init>()V

    .line 79
    iput-boolean v0, p0, Lcom/android/settings/location/LocationSettings;->enabledGps:Z

    .line 134
    iput-boolean v0, p0, Lcom/android/settings/location/LocationSettings;->mValidListener:Z

    .line 142
    iput-boolean v0, p0, Lcom/android/settings/location/LocationSettings;->mIsEmerMode:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/location/LocationSettings;)Lcom/android/settings/location/SettingsInjector;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/location/LocationSettings;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/settings/location/LocationSettings;->injector:Lcom/android/settings/location/SettingsInjector;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/location/LocationSettings;ILjava/lang/Boolean;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/location/LocationSettings;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/Boolean;

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Lcom/android/settings/location/LocationSettings;->setTagCurrentLocation(ILjava/lang/Boolean;)V

    return-void
.end method

.method private addCurrentTagLocation(Landroid/content/Context;Landroid/preference/PreferenceScreen;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "root"    # Landroid/preference/PreferenceScreen;

    .prologue
    .line 655
    const/4 v0, 0x0

    .line 656
    .local v0, "isCameraInstalled":Z
    const/4 v3, 0x0

    .line 657
    .local v3, "isSnoteInstalled":Z
    const/4 v2, 0x0

    .line 658
    .local v2, "isScrapbookInstalled":Z
    const/4 v4, 0x0

    .line 660
    .local v4, "isVoicerecorderInstalled":Z
    invoke-virtual {p0}, Lcom/android/settings/location/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string v6, "com.sec.android.app.camera"

    invoke-static {v5, v6}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 661
    invoke-virtual {p0}, Lcom/android/settings/location/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string v6, "com.samsung.android.snote"

    invoke-static {v5, v6}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    .line 662
    invoke-virtual {p0}, Lcom/android/settings/location/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string v6, "com.samsung.android.app.pinboard"

    invoke-static {v5, v6}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    .line 663
    invoke-virtual {p0}, Lcom/android/settings/location/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string v6, "com.sec.android.app.voicenote"

    invoke-static {v5, v6}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    .line 665
    const-string v5, "tag_current_location"

    invoke-virtual {p2, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceCategory;

    iput-object v5, p0, Lcom/android/settings/location/LocationSettings;->mTagCurrentLocation:Landroid/preference/PreferenceCategory;

    .line 666
    const-string v5, "tag_camera"

    invoke-virtual {p2, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/android/settings/location/LocationSettings;->mTagCamera:Landroid/preference/CheckBoxPreference;

    .line 667
    const-string v5, "tag_snote"

    invoke-virtual {p2, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/android/settings/location/LocationSettings;->mTagSnote:Landroid/preference/CheckBoxPreference;

    .line 668
    const-string v5, "tag_scrapbook"

    invoke-virtual {p2, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/android/settings/location/LocationSettings;->mTagScrapbook:Landroid/preference/CheckBoxPreference;

    .line 669
    const-string v5, "tag_voice_recorder"

    invoke-virtual {p2, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/android/settings/location/LocationSettings;->mTagVoicerecorder:Landroid/preference/CheckBoxPreference;

    .line 671
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    const/16 v6, 0x64

    if-lt v5, v6, :cond_0

    const/4 v1, 0x1

    .line 689
    .local v1, "isKnoxMode":Z
    :goto_0
    const-string v5, "LocationSettings"

    const-string v6, "TagCurrentLocation is not supported in this model"

    invoke-static {v5, v6}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    iget-object v5, p0, Lcom/android/settings/location/LocationSettings;->mTagCurrentLocation:Landroid/preference/PreferenceCategory;

    invoke-virtual {p2, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 691
    iget-object v5, p0, Lcom/android/settings/location/LocationSettings;->mTagCamera:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 692
    iget-object v5, p0, Lcom/android/settings/location/LocationSettings;->mTagSnote:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 693
    iget-object v5, p0, Lcom/android/settings/location/LocationSettings;->mTagScrapbook:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 694
    iget-object v5, p0, Lcom/android/settings/location/LocationSettings;->mTagVoicerecorder:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 696
    return-void

    .line 671
    .end local v1    # "isKnoxMode":Z
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private addLocationServices(Landroid/content/Context;Landroid/preference/PreferenceScreen;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "root"    # Landroid/preference/PreferenceScreen;

    .prologue
    .line 359
    const-string v3, "location_services"

    invoke-virtual {p2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 361
    .local v0, "categoryLocationServices":Landroid/preference/PreferenceCategory;
    new-instance v3, Lcom/android/settings/location/SettingsInjector;

    invoke-direct {v3, p1}, Lcom/android/settings/location/SettingsInjector;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/settings/location/LocationSettings;->injector:Lcom/android/settings/location/SettingsInjector;

    .line 362
    iget-object v3, p0, Lcom/android/settings/location/LocationSettings;->injector:Lcom/android/settings/location/SettingsInjector;

    invoke-virtual {v3}, Lcom/android/settings/location/SettingsInjector;->getInjectedSettings()Ljava/util/List;

    move-result-object v2

    .line 364
    .local v2, "locationServices":Ljava/util/List;, "Ljava/util/List<Landroid/preference/Preference;>;"
    new-instance v3, Lcom/android/settings/location/LocationSettings$3;

    invoke-direct {v3, p0}, Lcom/android/settings/location/LocationSettings$3;-><init>(Lcom/android/settings/location/LocationSettings;)V

    iput-object v3, p0, Lcom/android/settings/location/LocationSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 374
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 375
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v3, "android.location.InjectedSettingChanged"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 376
    iget-object v3, p0, Lcom/android/settings/location/LocationSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 378
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 379
    invoke-direct {p0, v2, v0}, Lcom/android/settings/location/LocationSettings;->addPreferencesSorted(Ljava/util/List;Landroid/preference/PreferenceGroup;)V

    .line 387
    :cond_0
    :goto_0
    return-void

    .line 382
    :cond_1
    invoke-virtual {v0}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v3

    if-nez v3, :cond_0

    .line 384
    invoke-virtual {p2, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method

.method private addPreferencesSorted(Ljava/util/List;Landroid/preference/PreferenceGroup;)V
    .locals 3
    .param p2, "container"    # Landroid/preference/PreferenceGroup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/preference/Preference;",
            ">;",
            "Landroid/preference/PreferenceGroup;",
            ")V"
        }
    .end annotation

    .prologue
    .line 226
    .local p1, "prefs":Ljava/util/List;, "Ljava/util/List<Landroid/preference/Preference;>;"
    new-instance v2, Lcom/android/settings/location/LocationSettings$1;

    invoke-direct {v2, p0}, Lcom/android/settings/location/LocationSettings$1;-><init>(Lcom/android/settings/location/LocationSettings;)V

    invoke-static {p1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 232
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/Preference;

    .line 233
    .local v0, "entry":Landroid/preference/Preference;
    invoke-virtual {p2, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 235
    .end local v0    # "entry":Landroid/preference/Preference;
    :cond_0
    return-void
.end method

.method private createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
    .locals 15

    .prologue
    const/16 v13, 0x10

    const/4 v14, -0x2

    const/4 v12, 0x0

    .line 238
    invoke-virtual {p0}, Lcom/android/settings/location/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    .line 239
    .local v0, "activity":Lcom/android/settings/SettingsActivity;
    invoke-virtual {p0}, Lcom/android/settings/location/LocationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    .line 240
    .local v8, "root":Landroid/preference/PreferenceScreen;
    if-eqz v8, :cond_0

    .line 241
    invoke-virtual {v8}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 243
    :cond_0
    const v10, 0x7f07006d

    invoke-virtual {p0, v10}, Lcom/android/settings/location/LocationSettings;->addPreferencesFromResource(I)V

    .line 244
    invoke-virtual {p0}, Lcom/android/settings/location/LocationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    .line 246
    const-string v10, "location_e911"

    invoke-virtual {v8, v10}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    .line 250
    .local v4, "e911":Landroid/preference/Preference;
    if-eqz v4, :cond_1

    .line 251
    invoke-virtual {p0}, Lcom/android/settings/location/LocationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    invoke-virtual {v10, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 256
    :cond_1
    const-string v10, "clock_sync"

    invoke-virtual {v8, v10}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/CheckBoxPreference;

    iput-object v10, p0, Lcom/android/settings/location/LocationSettings;->mClockSync:Landroid/preference/CheckBoxPreference;

    .line 257
    const-string v10, "assisted_gps_function_switch"

    invoke-virtual {v8, v10}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/PreferenceScreen;

    iput-object v10, p0, Lcom/android/settings/location/LocationSettings;->mAgpsFunctionSwitch:Landroid/preference/PreferenceScreen;

    .line 258
    const-string v10, "satellite_view"

    invoke-virtual {v8, v10}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/PreferenceScreen;

    iput-object v10, p0, Lcom/android/settings/location/LocationSettings;->mSatelliteView:Landroid/preference/PreferenceScreen;

    .line 259
    const-string v10, "cmcc_agpsmenu"

    invoke-virtual {v8, v10}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/PreferenceCategory;

    iput-object v10, p0, Lcom/android/settings/location/LocationSettings;->mAgpsMenu:Landroid/preference/PreferenceCategory;

    .line 261
    const-string v10, "CHM"

    const-string v11, "ro.csc.sales_code"

    invoke-static {v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 262
    invoke-virtual {p0}, Lcom/android/settings/location/LocationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings/location/LocationSettings;->mClockSync:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 263
    invoke-virtual {p0}, Lcom/android/settings/location/LocationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings/location/LocationSettings;->mAgpsFunctionSwitch:Landroid/preference/PreferenceScreen;

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 264
    invoke-virtual {p0}, Lcom/android/settings/location/LocationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings/location/LocationSettings;->mSatelliteView:Landroid/preference/PreferenceScreen;

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 265
    invoke-virtual {p0}, Lcom/android/settings/location/LocationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings/location/LocationSettings;->mAgpsMenu:Landroid/preference/PreferenceCategory;

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 268
    :cond_2
    const-string v10, "location_mode"

    invoke-virtual {v8, v10}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    iput-object v10, p0, Lcom/android/settings/location/LocationSettings;->mLocationMode:Landroid/preference/Preference;

    .line 269
    iget-object v10, p0, Lcom/android/settings/location/LocationSettings;->mLocationMode:Landroid/preference/Preference;

    new-instance v11, Lcom/android/settings/location/LocationSettings$2;

    invoke-direct {v11, p0, v0}, Lcom/android/settings/location/LocationSettings$2;-><init>(Lcom/android/settings/location/LocationSettings;Lcom/android/settings/SettingsActivity;)V

    invoke-virtual {v10, v11}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 281
    const-string v10, "recent_location_requests"

    invoke-virtual {v8, v10}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/PreferenceCategory;

    iput-object v10, p0, Lcom/android/settings/location/LocationSettings;->mCategoryRecentLocationRequests:Landroid/preference/PreferenceCategory;

    .line 284
    iget-boolean v10, p0, Lcom/android/settings/location/LocationSettings;->mIsEmerMode:Z

    if-eqz v10, :cond_4

    .line 286
    iget-object v10, p0, Lcom/android/settings/location/LocationSettings;->mCategoryRecentLocationRequests:Landroid/preference/PreferenceCategory;

    invoke-virtual {v8, v10}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 305
    :goto_0
    const-string v10, "location_services"

    invoke-virtual {v8, v10}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceCategory;

    .line 306
    .local v2, "categoryLocationServices":Landroid/preference/PreferenceCategory;
    const-string v10, "location_history"

    invoke-virtual {v8, v10}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/SwitchPreferenceScreen;

    iput-object v10, p0, Lcom/android/settings/location/LocationSettings;->mSp:Landroid/preference/SwitchPreferenceScreen;

    .line 307
    iget-object v10, p0, Lcom/android/settings/location/LocationSettings;->mSp:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v10, :cond_3

    .line 308
    iget-object v10, p0, Lcom/android/settings/location/LocationSettings;->mSp:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v2, v10}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 322
    :cond_3
    iget-boolean v10, p0, Lcom/android/settings/location/LocationSettings;->mIsEmerMode:Z

    if-eqz v10, :cond_6

    .line 324
    const-string v10, "location_services"

    invoke-virtual {v8, v10}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .end local v2    # "categoryLocationServices":Landroid/preference/PreferenceCategory;
    check-cast v2, Landroid/preference/PreferenceCategory;

    .line 326
    .restart local v2    # "categoryLocationServices":Landroid/preference/PreferenceCategory;
    invoke-virtual {v8, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 327
    const-string v10, "place"

    invoke-virtual {v8, v10}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceCategory;

    .line 328
    .local v3, "categoryMyPlace":Landroid/preference/PreferenceCategory;
    invoke-virtual {v8, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 329
    const-string v10, "key_my_place"

    invoke-virtual {v8, v10}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/PreferenceScreen;

    .line 330
    .local v9, "screenMyPlace":Landroid/preference/PreferenceScreen;
    invoke-virtual {v8, v9}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 335
    .end local v3    # "categoryMyPlace":Landroid/preference/PreferenceCategory;
    .end local v9    # "screenMyPlace":Landroid/preference/PreferenceScreen;
    :goto_1
    invoke-direct {p0, v0, v8}, Lcom/android/settings/location/LocationSettings;->addCurrentTagLocation(Landroid/content/Context;Landroid/preference/PreferenceScreen;)V

    .line 337
    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0f0058

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 339
    .local v5, "padding":I
    iget-object v10, p0, Lcom/android/settings/location/LocationSettings;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v10, v12, v12, v5, v12}, Landroid/widget/Switch;->setPaddingRelative(IIII)V

    .line 340
    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v10

    invoke-virtual {v10, v13, v13}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 342
    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings/location/LocationSettings;->mSwitch:Landroid/widget/Switch;

    new-instance v12, Landroid/app/ActionBar$LayoutParams;

    const v13, 0x800015

    invoke-direct {v12, v14, v14, v13}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v10, v11, v12}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 347
    invoke-virtual {p0}, Lcom/android/settings/location/LocationSettings;->refreshLocationMode()V

    .line 348
    return-object v8

    .line 288
    .end local v2    # "categoryLocationServices":Landroid/preference/PreferenceCategory;
    .end local v5    # "padding":I
    :cond_4
    new-instance v6, Lcom/android/settings/location/RecentLocationApps;

    invoke-direct {v6, v0}, Lcom/android/settings/location/RecentLocationApps;-><init>(Lcom/android/settings/SettingsActivity;)V

    .line 289
    .local v6, "recentApps":Lcom/android/settings/location/RecentLocationApps;
    invoke-virtual {v6}, Lcom/android/settings/location/RecentLocationApps;->getAppList()Ljava/util/List;

    move-result-object v7

    .line 290
    .local v7, "recentLocationRequests":Ljava/util/List;, "Ljava/util/List<Landroid/preference/Preference;>;"
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_5

    .line 291
    iget-object v10, p0, Lcom/android/settings/location/LocationSettings;->mCategoryRecentLocationRequests:Landroid/preference/PreferenceCategory;

    invoke-direct {p0, v7, v10}, Lcom/android/settings/location/LocationSettings;->addPreferencesSorted(Ljava/util/List;Landroid/preference/PreferenceGroup;)V

    goto/16 :goto_0

    .line 294
    :cond_5
    new-instance v1, Landroid/preference/Preference;

    invoke-direct {v1, v0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 295
    .local v1, "banner":Landroid/preference/Preference;
    const v10, 0x7f040112

    invoke-virtual {v1, v10}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 296
    const v10, 0x7f0a0843

    invoke-virtual {v1, v10}, Landroid/preference/Preference;->setTitle(I)V

    .line 297
    invoke-virtual {v1, v12}, Landroid/preference/Preference;->setSelectable(Z)V

    .line 298
    iget-object v10, p0, Lcom/android/settings/location/LocationSettings;->mCategoryRecentLocationRequests:Landroid/preference/PreferenceCategory;

    invoke-virtual {v10, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    goto/16 :goto_0

    .line 332
    .end local v1    # "banner":Landroid/preference/Preference;
    .end local v6    # "recentApps":Lcom/android/settings/location/RecentLocationApps;
    .end local v7    # "recentLocationRequests":Ljava/util/List;, "Ljava/util/List<Landroid/preference/Preference;>;"
    .restart local v2    # "categoryLocationServices":Landroid/preference/PreferenceCategory;
    :cond_6
    invoke-direct {p0, v0, v8}, Lcom/android/settings/location/LocationSettings;->addLocationServices(Landroid/content/Context;Landroid/preference/PreferenceScreen;)V

    goto :goto_1
.end method

.method private setTagCurrentLocation(ILjava/lang/Boolean;)V
    .locals 3
    .param p1, "selectedId"    # I
    .param p2, "enable"    # Ljava/lang/Boolean;

    .prologue
    const/4 v1, 0x1

    .line 609
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 611
    .local v0, "nEnable":I
    :goto_0
    if-nez p1, :cond_1

    .line 612
    invoke-virtual {p0}, Lcom/android/settings/location/LocationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "tag_current_location_camera"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 613
    iget-object v1, p0, Lcom/android/settings/location/LocationSettings;->mTagCamera:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 626
    :goto_1
    return-void

    .line 609
    .end local v0    # "nEnable":I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 614
    .restart local v0    # "nEnable":I
    :cond_1
    if-ne p1, v1, :cond_2

    .line 615
    invoke-virtual {p0}, Lcom/android/settings/location/LocationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "tag_current_location_snote"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 616
    iget-object v1, p0, Lcom/android/settings/location/LocationSettings;->mTagSnote:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_1

    .line 617
    :cond_2
    const/4 v1, 0x2

    if-ne p1, v1, :cond_3

    .line 618
    invoke-virtual {p0}, Lcom/android/settings/location/LocationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "tag_current_location_scrapbook"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 619
    iget-object v1, p0, Lcom/android/settings/location/LocationSettings;->mTagScrapbook:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_1

    .line 620
    :cond_3
    const/4 v1, 0x3

    if-ne p1, v1, :cond_4

    .line 621
    invoke-virtual {p0}, Lcom/android/settings/location/LocationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "tag_current_location_voicerecorder"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 622
    iget-object v1, p0, Lcom/android/settings/location/LocationSettings;->mTagVoicerecorder:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_1

    .line 624
    :cond_4
    invoke-direct {p0}, Lcom/android/settings/location/LocationSettings;->updateTagCurrentLocation()V

    goto :goto_1
.end method

.method private updateTagCurrentLocation()V
    .locals 10

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 629
    invoke-virtual {p0}, Lcom/android/settings/location/LocationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "tag_current_location_camera"

    invoke-static {v4, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 631
    .local v0, "tagCameraDB":I
    invoke-virtual {p0}, Lcom/android/settings/location/LocationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "tag_current_location_snote"

    invoke-static {v4, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 633
    .local v2, "tagSnoteDB":I
    invoke-virtual {p0}, Lcom/android/settings/location/LocationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "tag_current_location_scrapbook"

    invoke-static {v4, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 635
    .local v1, "tagScrapbookDB":I
    invoke-virtual {p0}, Lcom/android/settings/location/LocationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "tag_current_location_voicerecorder"

    invoke-static {v4, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 638
    .local v3, "tagVoicerecorderDB":I
    iget-object v7, p0, Lcom/android/settings/location/LocationSettings;->mTagCamera:Landroid/preference/CheckBoxPreference;

    if-nez v0, :cond_1

    move v4, v5

    :goto_0
    invoke-virtual {v7, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 639
    iget-object v7, p0, Lcom/android/settings/location/LocationSettings;->mTagSnote:Landroid/preference/CheckBoxPreference;

    if-nez v2, :cond_2

    move v4, v5

    :goto_1
    invoke-virtual {v7, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 640
    iget-object v7, p0, Lcom/android/settings/location/LocationSettings;->mTagScrapbook:Landroid/preference/CheckBoxPreference;

    if-nez v1, :cond_3

    move v4, v5

    :goto_2
    invoke-virtual {v7, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 641
    iget-object v7, p0, Lcom/android/settings/location/LocationSettings;->mTagVoicerecorder:Landroid/preference/CheckBoxPreference;

    if-nez v3, :cond_4

    move v4, v5

    :goto_3
    invoke-virtual {v7, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 643
    const-string v4, "CHM"

    const-string v7, "ro.csc.sales_code"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 644
    iget-object v4, p0, Lcom/android/settings/location/LocationSettings;->mClockSync:Landroid/preference/CheckBoxPreference;

    if-eqz v4, :cond_0

    .line 646
    iget-object v4, p0, Lcom/android/settings/location/LocationSettings;->mClockSync:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/location/LocationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "clock_sync_enabled"

    const/4 v9, 0x2

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v6, :cond_5

    :goto_4
    invoke-virtual {v4, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 650
    :cond_0
    return-void

    :cond_1
    move v4, v6

    .line 638
    goto :goto_0

    :cond_2
    move v4, v6

    .line 639
    goto :goto_1

    :cond_3
    move v4, v6

    .line 640
    goto :goto_2

    :cond_4
    move v4, v6

    .line 641
    goto :goto_3

    :cond_5
    move v6, v5

    .line 646
    goto :goto_4
.end method


# virtual methods
.method public getHelpResource()I
    .locals 1

    .prologue
    .line 391
    const v0, 0x7f0a0e65

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 160
    invoke-super {p0, p1}, Lcom/android/settings/location/LocationSettingsBase;->onActivityCreated(Landroid/os/Bundle;)V

    .line 162
    invoke-virtual {p0}, Lcom/android/settings/location/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    .line 164
    .local v0, "activity":Lcom/android/settings/SettingsActivity;
    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/location/LocationSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    .line 167
    new-instance v1, Landroid/widget/Switch;

    invoke-virtual {p0}, Lcom/android/settings/location/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/location/LocationSettings;->mSwitch:Landroid/widget/Switch;

    .line 168
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 5
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    const/4 v1, 0x0

    .line 481
    invoke-virtual {p0}, Lcom/android/settings/location/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "content://com.sec.knox.provider/LocationPolicy"

    const-string v4, "isGPSStateChangeAllowed"

    invoke-static {v2, v3, v4}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 483
    .local v0, "isLocationStateChangeBlocked":I
    if-nez v0, :cond_1

    .line 484
    iget-object v2, p0, Lcom/android/settings/location/LocationSettings;->mSwitch:Landroid/widget/Switch;

    if-nez p2, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-virtual {v2, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 505
    :goto_0
    return-void

    .line 487
    :cond_1
    if-eqz p2, :cond_2

    .line 499
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/android/settings/location/LocationSettings;->setLocationMode(I)V

    .line 500
    invoke-virtual {p0}, Lcom/android/settings/location/LocationSettings;->refreshLocationMode()V

    goto :goto_0

    .line 503
    :cond_2
    invoke-virtual {p0, v1}, Lcom/android/settings/location/LocationSettings;->setLocationMode(I)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 147
    invoke-super {p0, p1}, Lcom/android/settings/location/LocationSettingsBase;->onCreate(Landroid/os/Bundle;)V

    .line 150
    invoke-virtual {p0}, Lcom/android/settings/location/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/emergencymode/EmergencyManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/emergencymode/EmergencyManager;

    move-result-object v0

    .line 151
    .local v0, "em":Lcom/sec/android/emergencymode/EmergencyManager;
    invoke-virtual {v0}, Lcom/sec/android/emergencymode/EmergencyManager;->isEmergencyMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 152
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/location/LocationSettings;->mIsEmerMode:Z

    .line 156
    :cond_0
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 5
    .param p1, "dialogId"    # I

    .prologue
    .line 564
    const/4 v1, 0x0

    .line 566
    .local v1, "nTitle":I
    packed-switch p1, :pswitch_data_0

    .line 583
    :goto_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/location/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0a1b52

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0a1a6f

    invoke-virtual {p0, v3}, Lcom/android/settings/location/LocationSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/android/settings/location/LocationSettings$5;

    invoke-direct {v4, p0, p1}, Lcom/android/settings/location/LocationSettings$5;-><init>(Lcom/android/settings/location/LocationSettings;I)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0a01ce

    invoke-virtual {p0, v3}, Lcom/android/settings/location/LocationSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/android/settings/location/LocationSettings$4;

    invoke-direct {v4, p0, p1}, Lcom/android/settings/location/LocationSettings$4;-><init>(Lcom/android/settings/location/LocationSettings;I)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 598
    .local v0, "dialog":Landroid/app/AlertDialog;
    new-instance v2, Lcom/android/settings/location/LocationSettings$6;

    invoke-direct {v2, p0, p1}, Lcom/android/settings/location/LocationSettings$6;-><init>(Lcom/android/settings/location/LocationSettings;I)V

    invoke-virtual {p0, v2}, Lcom/android/settings/location/LocationSettings;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 605
    return-object v0

    .line 568
    .end local v0    # "dialog":Landroid/app/AlertDialog;
    :pswitch_0
    const v1, 0x7f0a15c6

    .line 569
    goto :goto_0

    .line 571
    :pswitch_1
    const v1, 0x7f0a12dc

    .line 572
    goto :goto_0

    .line 574
    :pswitch_2
    const v1, 0x7f0a1b50

    .line 575
    goto :goto_0

    .line 577
    :pswitch_3
    const v1, 0x7f0a1b51

    .line 578
    goto :goto_0

    .line 566
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 172
    invoke-super {p0}, Lcom/android/settings/location/LocationSettingsBase;->onDestroyView()V

    .line 173
    iget-object v0, p0, Lcom/android/settings/location/LocationSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->hide()V

    .line 174
    return-void
.end method

.method public onModeChanged(IZ)V
    .locals 7
    .param p1, "mode"    # I
    .param p2, "restricted"    # Z

    .prologue
    const v6, 0x7f0a0840

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 396
    packed-switch p1, :pswitch_data_0

    .line 420
    :goto_0
    if-eqz p1, :cond_5

    move v0, v1

    .line 423
    .local v0, "enabled":Z
    :goto_1
    iget-object v4, p0, Lcom/android/settings/location/LocationSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-nez p2, :cond_6

    move v3, v1

    :goto_2
    invoke-virtual {v4, v3}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    .line 424
    iget-object v4, p0, Lcom/android/settings/location/LocationSettings;->mSwitch:Landroid/widget/Switch;

    if-nez p2, :cond_7

    move v3, v1

    :goto_3
    invoke-virtual {v4, v3}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 425
    iget-object v3, p0, Lcom/android/settings/location/LocationSettings;->mLocationMode:Landroid/preference/Preference;

    if-eqz v0, :cond_8

    if-nez p2, :cond_8

    :goto_4
    invoke-virtual {v3, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 426
    iget-object v1, p0, Lcom/android/settings/location/LocationSettings;->mCategoryRecentLocationRequests:Landroid/preference/PreferenceCategory;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceCategory;->setEnabled(Z)V

    .line 428
    iget-object v1, p0, Lcom/android/settings/location/LocationSettings;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1}, Landroid/widget/Switch;->isChecked()Z

    move-result v1

    if-eq v0, v1, :cond_1

    .line 430
    iget-boolean v1, p0, Lcom/android/settings/location/LocationSettings;->mValidListener:Z

    if-eqz v1, :cond_0

    .line 431
    iget-object v1, p0, Lcom/android/settings/location/LocationSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, p0}, Lcom/android/settings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 433
    iget-object v1, p0, Lcom/android/settings/location/LocationSettings;->mSwitch:Landroid/widget/Switch;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 435
    :cond_0
    iget-object v1, p0, Lcom/android/settings/location/LocationSettings;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 436
    iget-boolean v1, p0, Lcom/android/settings/location/LocationSettings;->mValidListener:Z

    if-eqz v1, :cond_1

    .line 437
    iget-object v1, p0, Lcom/android/settings/location/LocationSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, p0}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 439
    iget-object v1, p0, Lcom/android/settings/location/LocationSettings;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 444
    :cond_1
    iget-object v1, p0, Lcom/android/settings/location/LocationSettings;->injector:Lcom/android/settings/location/SettingsInjector;

    if-eqz v1, :cond_2

    .line 445
    iget-object v1, p0, Lcom/android/settings/location/LocationSettings;->injector:Lcom/android/settings/location/SettingsInjector;

    invoke-virtual {v1}, Lcom/android/settings/location/SettingsInjector;->reloadStatusMessages()V

    .line 447
    :cond_2
    return-void

    .line 398
    .end local v0    # "enabled":Z
    :pswitch_0
    iget-object v3, p0, Lcom/android/settings/location/LocationSettings;->mLocationMode:Landroid/preference/Preference;

    const v4, 0x7f0a0841

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 401
    :pswitch_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    const-string v4, "iw"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    const-string v4, "he"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 402
    :cond_3
    iget-object v3, p0, Lcom/android/settings/location/LocationSettings;->mLocationMode:Landroid/preference/Preference;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u200f"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v6}, Lcom/android/settings/location/LocationSettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 404
    :cond_4
    iget-object v3, p0, Lcom/android/settings/location/LocationSettings;->mLocationMode:Landroid/preference/Preference;

    invoke-virtual {v3, v6}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_0

    .line 408
    :pswitch_2
    iget-object v3, p0, Lcom/android/settings/location/LocationSettings;->mLocationMode:Landroid/preference/Preference;

    const v4, 0x7f0a083f

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_0

    .line 411
    :pswitch_3
    iget-object v3, p0, Lcom/android/settings/location/LocationSettings;->mLocationMode:Landroid/preference/Preference;

    const v4, 0x7f0a083e

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_0

    :cond_5
    move v0, v2

    .line 420
    goto/16 :goto_1

    .restart local v0    # "enabled":Z
    :cond_6
    move v3, v2

    .line 423
    goto/16 :goto_2

    :cond_7
    move v3, v2

    .line 424
    goto/16 :goto_3

    :cond_8
    move v1, v2

    .line 425
    goto/16 :goto_4

    .line 396
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onPause()V
    .locals 4

    .prologue
    .line 207
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/location/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/location/LocationSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 214
    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcom/android/settings/location/LocationSettings;->mValidListener:Z

    if-eqz v1, :cond_1

    .line 215
    iget-object v1, p0, Lcom/android/settings/location/LocationSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, p0}, Lcom/android/settings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 216
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settings/location/LocationSettings;->mValidListener:Z

    .line 218
    iget-object v1, p0, Lcom/android/settings/location/LocationSettings;->mSwitch:Landroid/widget/Switch;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 220
    :cond_1
    invoke-super {p0}, Lcom/android/settings/location/LocationSettingsBase;->onPause()V

    .line 221
    invoke-virtual {p0}, Lcom/android/settings/location/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/app/Activity;->setResult(I)V

    .line 222
    return-void

    .line 208
    :catch_0
    move-exception v0

    .line 210
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "LocationSettings"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 211
    const-string v1, "LocationSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Swallowing "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "arg0"    # Landroid/preference/Preference;
    .param p2, "arg1"    # Ljava/lang/Object;

    .prologue
    .line 550
    iget-object v0, p0, Lcom/android/settings/location/LocationSettings;->mSp:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 558
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 510
    iget-object v2, p0, Lcom/android/settings/location/LocationSettings;->mTagCamera:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_1

    .line 511
    iget-object v2, p0, Lcom/android/settings/location/LocationSettings;->mTagCamera:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-ne v2, v1, :cond_0

    .line 512
    invoke-virtual {p0, v0}, Lcom/android/settings/location/LocationSettings;->showDialog(I)V

    .line 543
    :goto_0
    return v1

    .line 514
    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/android/settings/location/LocationSettings;->setTagCurrentLocation(ILjava/lang/Boolean;)V

    goto :goto_0

    .line 516
    :cond_1
    iget-object v2, p0, Lcom/android/settings/location/LocationSettings;->mTagSnote:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_3

    .line 517
    iget-object v2, p0, Lcom/android/settings/location/LocationSettings;->mTagSnote:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-ne v2, v1, :cond_2

    .line 518
    invoke-virtual {p0, v1}, Lcom/android/settings/location/LocationSettings;->showDialog(I)V

    goto :goto_0

    .line 520
    :cond_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/android/settings/location/LocationSettings;->setTagCurrentLocation(ILjava/lang/Boolean;)V

    goto :goto_0

    .line 522
    :cond_3
    iget-object v2, p0, Lcom/android/settings/location/LocationSettings;->mTagScrapbook:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_5

    .line 523
    iget-object v2, p0, Lcom/android/settings/location/LocationSettings;->mTagScrapbook:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-ne v2, v1, :cond_4

    .line 524
    invoke-virtual {p0, v3}, Lcom/android/settings/location/LocationSettings;->showDialog(I)V

    goto :goto_0

    .line 526
    :cond_4
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v3, v0}, Lcom/android/settings/location/LocationSettings;->setTagCurrentLocation(ILjava/lang/Boolean;)V

    goto :goto_0

    .line 528
    :cond_5
    iget-object v2, p0, Lcom/android/settings/location/LocationSettings;->mTagVoicerecorder:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_7

    .line 529
    iget-object v2, p0, Lcom/android/settings/location/LocationSettings;->mTagVoicerecorder:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-ne v2, v1, :cond_6

    .line 530
    invoke-virtual {p0, v4}, Lcom/android/settings/location/LocationSettings;->showDialog(I)V

    goto :goto_0

    .line 532
    :cond_6
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v4, v0}, Lcom/android/settings/location/LocationSettings;->setTagCurrentLocation(ILjava/lang/Boolean;)V

    goto :goto_0

    .line 534
    :cond_7
    iget-object v2, p0, Lcom/android/settings/location/LocationSettings;->mClockSync:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_9

    .line 536
    invoke-virtual {p0}, Lcom/android/settings/location/LocationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "clock_sync_enabled"

    iget-object v4, p0, Lcom/android/settings/location/LocationSettings;->mClockSync:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_8

    move v0, v1

    :cond_8
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 540
    :cond_9
    invoke-super {p0, p1, p2}, Lcom/android/settings/location/LocationSettingsBase;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 179
    iget-boolean v0, p0, Lcom/android/settings/location/LocationSettingsBase;->mOpenDetailMenu:Z

    .line 180
    .local v0, "super_mOpenDetailMenu":Z
    invoke-static {}, Lcom/android/settings/Utils;->isSearchVerTwoEnable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 181
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settings/location/LocationSettingsBase;->mOpenDetailMenu:Z

    .line 184
    :cond_0
    invoke-super {p0}, Lcom/android/settings/location/LocationSettingsBase;->onResume()V

    .line 188
    invoke-direct {p0}, Lcom/android/settings/location/LocationSettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    .line 189
    invoke-direct {p0}, Lcom/android/settings/location/LocationSettings;->updateTagCurrentLocation()V

    .line 190
    iget-boolean v1, p0, Lcom/android/settings/location/LocationSettings;->mValidListener:Z

    if-nez v1, :cond_1

    .line 191
    iget-object v1, p0, Lcom/android/settings/location/LocationSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, p0}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 192
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/location/LocationSettings;->mValidListener:Z

    .line 194
    iget-object v1, p0, Lcom/android/settings/location/LocationSettings;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 197
    :cond_1
    invoke-static {}, Lcom/android/settings/Utils;->isSearchVerTwoEnable()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 198
    iput-boolean v0, p0, Lcom/android/settings/location/LocationSettingsBase;->mOpenDetailMenu:Z

    .line 199
    invoke-super {p0}, Lcom/android/settings/location/LocationSettingsBase;->openSearchDetailMenu()V

    .line 202
    :cond_2
    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 1
    .param p1, "switchView"    # Landroid/widget/Switch;
    .param p2, "isChecked"    # Z

    .prologue
    .line 454
    if-eqz p2, :cond_0

    .line 469
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/settings/location/LocationSettings;->setLocationMode(I)V

    .line 474
    :goto_0
    return-void

    .line 472
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/location/LocationSettings;->setLocationMode(I)V

    goto :goto_0
.end method
