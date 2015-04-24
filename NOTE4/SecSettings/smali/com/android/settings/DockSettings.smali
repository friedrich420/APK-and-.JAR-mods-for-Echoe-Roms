.class public Lcom/android/settings/DockSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "DockSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private isMontblancInstalled:Ljava/lang/Boolean;

.field private mAudioApplications:Landroid/preference/CheckBoxPreference;

.field private mAudioOutput:Landroid/preference/ListPreference;

.field private mAudioSettings:Landroid/preference/Preference;

.field private mAutomaticUnlock:Landroid/preference/CheckBoxPreference;

.field private mBookCoverAutomaticUnlock:Landroid/preference/CheckBoxPreference;

.field private mBookCoverCategory:Landroid/preference/PreferenceCategory;

.field private mCoverCategory:Landroid/preference/PreferenceCategory;

.field private mCoverNote:Landroid/preference/CheckBoxPreference;

.field private mCoverNoteWeatherUnit:Landroid/preference/ListPreference;

.field private mCradleEnable:Landroid/preference/CheckBoxPreference;

.field private mDeskHomeScreen:Landroid/preference/CheckBoxPreference;

.field private mDockIntent:Landroid/content/Intent;

.field private mDockSounds:Landroid/preference/CheckBoxPreference;

.field private mHdmiCategory:Landroid/preference/PreferenceCategory;

.field private mMontblancCategory:Landroid/preference/PreferenceCategory;

.field private mMontblancContents:Landroid/preference/Preference;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mScreenSaverPreference:Landroid/preference/SwitchPreferenceScreen;

.field private mShowDeskAlertdialog:Landroid/app/AlertDialog;

.field private mShowInCallScreen:Landroid/preference/CheckBoxPreference;

.field private mUltrasonicCane:Landroid/preference/CheckBoxPreference;

.field private mUltrasonicCover:Landroid/preference/PreferenceCategory;

.field private mUltrasonicRange:Landroid/preference/ListPreference;

.field private final mUltrasonicSensor:Landroid/database/ContentObserver;

.field private mshowOudioOutputNotiDialog:Landroid/app/AlertDialog;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 76
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 110
    iput-object v0, p0, Lcom/android/settings/DockSettings;->mshowOudioOutputNotiDialog:Landroid/app/AlertDialog;

    .line 111
    iput-object v0, p0, Lcom/android/settings/DockSettings;->mShowDeskAlertdialog:Landroid/app/AlertDialog;

    .line 137
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DockSettings;->isMontblancInstalled:Ljava/lang/Boolean;

    .line 139
    new-instance v0, Lcom/android/settings/DockSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/DockSettings$1;-><init>(Lcom/android/settings/DockSettings;)V

    iput-object v0, p0, Lcom/android/settings/DockSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 162
    new-instance v0, Lcom/android/settings/DockSettings$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/DockSettings$2;-><init>(Lcom/android/settings/DockSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/DockSettings;->mUltrasonicSensor:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/DockSettings;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/DockSettings;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/android/settings/DockSettings;->handleDockChange(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/DockSettings;)Landroid/preference/ListPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DockSettings;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/settings/DockSettings;->mAudioOutput:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/DockSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DockSettings;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/settings/DockSettings;->mCradleEnable:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/DockSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/DockSettings;

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/settings/DockSettings;->updateUltrasonicSensorSettingsScreen()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/DockSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DockSettings;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/settings/DockSettings;->mDeskHomeScreen:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/DockSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DockSettings;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/settings/DockSettings;->mUltrasonicCane:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/DockSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/DockSettings;

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/settings/DockSettings;->updateState()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/settings/DockSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/DockSettings;

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/settings/DockSettings;->updateScreenSaverSummary()V

    return-void
.end method

.method private checkSmartDockType()Z
    .locals 11

    .prologue
    const/16 v8, 0x400

    const/4 v7, 0x0

    .line 483
    const-string v0, "sys/class/sec/switch/adc"

    .line 484
    .local v0, "SmartDockName":Ljava/lang/String;
    new-array v1, v8, [C

    .line 485
    .local v1, "buffer":[C
    const/4 v3, 0x0

    .line 486
    .local v3, "file":Ljava/io/FileReader;
    const/4 v5, 0x0

    .line 489
    .local v5, "fileString":Ljava/lang/String;
    :try_start_0
    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 490
    .end local v3    # "file":Ljava/io/FileReader;
    .local v4, "file":Ljava/io/FileReader;
    const/4 v8, 0x0

    const/16 v9, 0x400

    :try_start_1
    invoke-virtual {v4, v1, v8, v9}, Ljava/io/FileReader;->read([CII)I

    move-result v6

    .line 491
    .local v6, "len":I
    new-instance v8, Ljava/lang/String;

    const/4 v9, 0x0

    invoke-direct {v8, v1, v9, v6}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 492
    const-string v8, "DockSettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "switch/adc :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 501
    if-eqz v4, :cond_0

    .line 502
    :try_start_2
    const-string v8, "DockSettings"

    const-string v9, "Closing the file"

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    move-object v3, v4

    .line 509
    .end local v4    # "file":Ljava/io/FileReader;
    .end local v6    # "len":I
    .restart local v3    # "file":Ljava/io/FileReader;
    :cond_1
    :goto_0
    const-string v8, "DockSettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Docktype :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    const-string v8, "10"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 511
    const/4 v7, 0x1

    .line 513
    :cond_2
    return v7

    .line 505
    .end local v3    # "file":Ljava/io/FileReader;
    .restart local v4    # "file":Ljava/io/FileReader;
    .restart local v6    # "len":I
    :catch_0
    move-exception v2

    .line 506
    .local v2, "e":Ljava/io/IOException;
    const-string v8, "DockSettings"

    const-string v9, "Fail to read SmartDocktype"

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v4

    .line 508
    .end local v4    # "file":Ljava/io/FileReader;
    .restart local v3    # "file":Ljava/io/FileReader;
    goto :goto_0

    .line 494
    .end local v2    # "e":Ljava/io/IOException;
    .end local v6    # "len":I
    :catch_1
    move-exception v2

    .line 495
    .local v2, "e":Ljava/io/FileNotFoundException;
    :goto_1
    :try_start_3
    const-string v8, "DockSettings"

    const-string v9, "does not readSmartDock! This Kernel does not have wired headset support"

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 501
    if-eqz v3, :cond_1

    .line 502
    :try_start_4
    const-string v8, "DockSettings"

    const-string v9, "Closing the file"

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 505
    :catch_2
    move-exception v2

    .line 506
    .local v2, "e":Ljava/io/IOException;
    const-string v8, "DockSettings"

    const-string v9, "Fail to read SmartDocktype"

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 496
    .end local v2    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v2

    .line 497
    .restart local v2    # "e":Ljava/io/IOException;
    :goto_2
    :try_start_5
    const-string v8, "DockSettings"

    const-string v9, "Fail to read SmartDocktype"

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 501
    if-eqz v3, :cond_1

    .line 502
    :try_start_6
    const-string v8, "DockSettings"

    const-string v9, "Closing the file"

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_0

    .line 505
    :catch_4
    move-exception v2

    .line 506
    const-string v8, "DockSettings"

    const-string v9, "Fail to read SmartDocktype"

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 500
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    .line 501
    :goto_3
    if-eqz v3, :cond_3

    .line 502
    :try_start_7
    const-string v8, "DockSettings"

    const-string v9, "Closing the file"

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 507
    :cond_3
    :goto_4
    throw v7

    .line 505
    :catch_5
    move-exception v2

    .line 506
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v8, "DockSettings"

    const-string v9, "Fail to read SmartDocktype"

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 500
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "file":Ljava/io/FileReader;
    .restart local v4    # "file":Ljava/io/FileReader;
    :catchall_1
    move-exception v7

    move-object v3, v4

    .end local v4    # "file":Ljava/io/FileReader;
    .restart local v3    # "file":Ljava/io/FileReader;
    goto :goto_3

    .line 496
    .end local v3    # "file":Ljava/io/FileReader;
    .restart local v4    # "file":Ljava/io/FileReader;
    :catch_6
    move-exception v2

    move-object v3, v4

    .end local v4    # "file":Ljava/io/FileReader;
    .restart local v3    # "file":Ljava/io/FileReader;
    goto :goto_2

    .line 494
    .end local v3    # "file":Ljava/io/FileReader;
    .restart local v4    # "file":Ljava/io/FileReader;
    :catch_7
    move-exception v2

    move-object v3, v4

    .end local v4    # "file":Ljava/io/FileReader;
    .restart local v3    # "file":Ljava/io/FileReader;
    goto :goto_1
.end method

.method private createMontblancDownloadPopup()Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 813
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 814
    .local v0, "ab":Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0a0fb4

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 815
    const v1, 0x7f0a0fb5

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 816
    const v1, 0x7f0a0fb6

    new-instance v2, Lcom/android/settings/DockSettings$10;

    invoke-direct {v2, p0}, Lcom/android/settings/DockSettings$10;-><init>(Lcom/android/settings/DockSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 827
    const/high16 v1, 0x1040000

    new-instance v2, Lcom/android/settings/DockSettings$11;

    invoke-direct {v2, p0}, Lcom/android/settings/DockSettings$11;-><init>(Lcom/android/settings/DockSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 833
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method

.method private createUndockedMessage()Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 848
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 849
    .local v0, "ab":Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0a0699

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 850
    const v1, 0x7f0a069a

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 851
    const v1, 0x104000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 852
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method

.method private handleDockChange(Landroid/content/Intent;)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 517
    iget-object v5, p0, Lcom/android/settings/DockSettings;->mAudioSettings:Landroid/preference/Preference;

    if-eqz v5, :cond_0

    .line 518
    const-string v5, "android.intent.extra.DOCK_STATE"

    invoke-virtual {p1, v5, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 520
    .local v0, "dockState":I
    const-string v5, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    if-eqz v5, :cond_1

    move v1, v3

    .line 522
    .local v1, "isBluetooth":Z
    :goto_0
    if-nez v1, :cond_2

    .line 524
    iget-object v3, p0, Lcom/android/settings/DockSettings;->mAudioSettings:Landroid/preference/Preference;

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 525
    iget-object v3, p0, Lcom/android/settings/DockSettings;->mAudioSettings:Landroid/preference/Preference;

    const v4, 0x7f0a0698

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(I)V

    .line 547
    :goto_1
    if-eqz v0, :cond_0

    .line 550
    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {p0, v3}, Lcom/android/settings/DockSettings;->removeDialog(I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 556
    .end local v0    # "dockState":I
    .end local v1    # "isBluetooth":Z
    :cond_0
    :goto_2
    return-void

    .restart local v0    # "dockState":I
    :cond_1
    move v1, v4

    .line 520
    goto :goto_0

    .line 527
    .restart local v1    # "isBluetooth":Z
    :cond_2
    iget-object v4, p0, Lcom/android/settings/DockSettings;->mAudioSettings:Landroid/preference/Preference;

    invoke-virtual {v4, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 529
    iput-object p1, p0, Lcom/android/settings/DockSettings;->mDockIntent:Landroid/content/Intent;

    .line 530
    const v2, 0x7f0a0698

    .line 531
    .local v2, "resId":I
    packed-switch v0, :pswitch_data_0

    .line 544
    :goto_3
    iget-object v3, p0, Lcom/android/settings/DockSettings;->mAudioSettings:Landroid/preference/Preference;

    invoke-virtual {v3, v2}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_1

    .line 533
    :pswitch_0
    const v2, 0x7f0a0696

    .line 534
    goto :goto_3

    .line 538
    :pswitch_1
    const v2, 0x7f0a0695

    .line 539
    goto :goto_3

    .line 541
    :pswitch_2
    const v2, 0x7f0a0697

    goto :goto_3

    .line 551
    .end local v2    # "resId":I
    :catch_0
    move-exception v3

    goto :goto_2

    .line 531
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private initDockSettings()V
    .locals 10

    .prologue
    const v8, 0x7f0a0f98

    const/16 v9, 0x64

    .line 269
    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-string v7, "com.sec.android.app.montblanc"

    invoke-static {v6, v7}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/DockSettings;->isMontblancInstalled:Ljava/lang/Boolean;

    .line 271
    const-string v6, "dock_audio"

    invoke-virtual {p0, v6}, Lcom/android/settings/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/DockSettings;->mAudioSettings:Landroid/preference/Preference;

    .line 272
    iget-object v6, p0, Lcom/android/settings/DockSettings;->mAudioSettings:Landroid/preference/Preference;

    if-eqz v6, :cond_0

    .line 273
    iget-object v6, p0, Lcom/android/settings/DockSettings;->mAudioSettings:Landroid/preference/Preference;

    const v7, 0x7f0a0697

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setSummary(I)V

    .line 276
    :cond_0
    const-string v6, "dock_sounds"

    invoke-virtual {p0, v6}, Lcom/android/settings/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/CheckBoxPreference;

    iput-object v6, p0, Lcom/android/settings/DockSettings;->mDockSounds:Landroid/preference/CheckBoxPreference;

    .line 277
    iget-object v6, p0, Lcom/android/settings/DockSettings;->mDockSounds:Landroid/preference/CheckBoxPreference;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 279
    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    const-string v7, "dock_audio"

    invoke-virtual {p0, v7}, Lcom/android/settings/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 282
    const-string v6, "cradle_enable"

    invoke-virtual {p0, v6}, Lcom/android/settings/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/CheckBoxPreference;

    iput-object v6, p0, Lcom/android/settings/DockSettings;->mCradleEnable:Landroid/preference/CheckBoxPreference;

    .line 283
    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_15

    .line 284
    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    const-string v7, "cradle_enable"

    invoke-virtual {p0, v7}, Lcom/android/settings/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 289
    :cond_1
    :goto_0
    const-string v6, "screensaver"

    invoke-virtual {p0, v6}, Lcom/android/settings/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/SwitchPreferenceScreen;

    iput-object v6, p0, Lcom/android/settings/DockSettings;->mScreenSaverPreference:Landroid/preference/SwitchPreferenceScreen;

    .line 290
    const-string v6, "ro.product.device"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 291
    .local v2, "deviceName":Ljava/lang/String;
    const-string v6, "ro.product.name"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 297
    .local v5, "projectName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    const-string v7, "screensaver"

    invoke-virtual {p0, v7}, Lcom/android/settings/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 302
    const-string v6, "desk_home_screen_display"

    invoke-virtual {p0, v6}, Lcom/android/settings/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/CheckBoxPreference;

    iput-object v6, p0, Lcom/android/settings/DockSettings;->mDeskHomeScreen:Landroid/preference/CheckBoxPreference;

    .line 303
    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 305
    :cond_2
    invoke-static {}, Lcom/android/settings/Utils;->isJapanModel()Z

    move-result v6

    if-eqz v6, :cond_16

    .line 306
    const-string v6, "ro.product.name"

    const-string v7, "Unknown"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 307
    .local v4, "modelName":Ljava/lang/String;
    if-eqz v4, :cond_3

    .line 308
    const-string v6, "SC-04F"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "SCL23"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 309
    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    const-string v7, "desk_home_screen_display"

    invoke-virtual {p0, v7}, Lcom/android/settings/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 318
    .end local v4    # "modelName":Ljava/lang/String;
    :cond_3
    :goto_1
    invoke-direct {p0}, Lcom/android/settings/DockSettings;->needsDockSettings()Z

    move-result v6

    if-eqz v6, :cond_4

    const-string v6, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_DOCK"

    invoke-static {v6}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 319
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    const-string v7, "dock_settings"

    invoke-virtual {p0, v7}, Lcom/android/settings/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 320
    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    const-string v7, "dock_sounds"

    invoke-virtual {p0, v7}, Lcom/android/settings/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 321
    const-string v6, "screensaver"

    invoke-virtual {p0, v6}, Lcom/android/settings/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    if-eqz v6, :cond_5

    .line 322
    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    const-string v7, "screensaver"

    invoke-virtual {p0, v7}, Lcom/android/settings/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 323
    :cond_5
    const-string v6, "cradle_enable"

    invoke-virtual {p0, v6}, Lcom/android/settings/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    if-eqz v6, :cond_6

    .line 324
    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    const-string v7, "cradle_enable"

    invoke-virtual {p0, v7}, Lcom/android/settings/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 325
    :cond_6
    const-string v6, "desk_home_screen_display"

    invoke-virtual {p0, v6}, Lcom/android/settings/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    if-eqz v6, :cond_7

    .line 327
    invoke-static {}, Lcom/android/settings/Utils;->isJapanModel()Z

    move-result v6

    if-eqz v6, :cond_17

    .line 328
    const-string v6, "ro.product.name"

    const-string v7, "Unknown"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 329
    .restart local v4    # "modelName":Ljava/lang/String;
    if-eqz v4, :cond_7

    .line 330
    const-string v6, "SC-04F"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    const-string v6, "SCL23"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 331
    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    const-string v7, "desk_home_screen_display"

    invoke-virtual {p0, v7}, Lcom/android/settings/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 339
    .end local v4    # "modelName":Ljava/lang/String;
    :cond_7
    :goto_2
    const-string v6, "cover"

    invoke-virtual {p0, v6}, Lcom/android/settings/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/PreferenceCategory;

    iput-object v6, p0, Lcom/android/settings/DockSettings;->mCoverCategory:Landroid/preference/PreferenceCategory;

    .line 340
    const-string v6, "automatic_unlock"

    invoke-virtual {p0, v6}, Lcom/android/settings/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/CheckBoxPreference;

    iput-object v6, p0, Lcom/android/settings/DockSettings;->mAutomaticUnlock:Landroid/preference/CheckBoxPreference;

    .line 341
    const-string v6, "show_in_call_screen"

    invoke-virtual {p0, v6}, Lcom/android/settings/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/CheckBoxPreference;

    iput-object v6, p0, Lcom/android/settings/DockSettings;->mShowInCallScreen:Landroid/preference/CheckBoxPreference;

    .line 343
    const-string v6, "montblanc_contents"

    invoke-virtual {p0, v6}, Lcom/android/settings/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/PreferenceScreen;

    iput-object v6, p0, Lcom/android/settings/DockSettings;->mMontblancContents:Landroid/preference/Preference;

    .line 344
    const-string v6, "montblanc_cover_category"

    invoke-virtual {p0, v6}, Lcom/android/settings/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/PreferenceCategory;

    iput-object v6, p0, Lcom/android/settings/DockSettings;->mMontblancCategory:Landroid/preference/PreferenceCategory;

    .line 347
    const/4 v6, 0x0

    invoke-static {v6}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/android/settings/DockSettings;->mCoverCategory:Landroid/preference/PreferenceCategory;

    if-eqz v6, :cond_8

    .line 348
    iget-object v6, p0, Lcom/android/settings/DockSettings;->mCoverCategory:Landroid/preference/PreferenceCategory;

    const v7, 0x7f0a1ba4

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    .line 350
    :cond_8
    invoke-static {}, Lcom/android/settings/Utils;->isJ_Device()Z

    move-result v6

    if-nez v6, :cond_9

    .line 351
    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    const-string v7, "show_in_call_screen"

    invoke-virtual {p0, v7}, Lcom/android/settings/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 353
    :cond_9
    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/Utils;->getTypeOfCover(Landroid/content/Context;)I

    move-result v1

    .line 354
    .local v1, "covertype":I
    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_a

    const-string v6, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_AUTOMATIC_UNLOCK"

    invoke-static {v6}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    if-ge v6, v9, :cond_a

    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/Utils;->isCoverVerified(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_18

    .line 356
    :cond_a
    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    const-string v7, "cover"

    invoke-virtual {p0, v7}, Lcom/android/settings/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 357
    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    const-string v7, "automatic_unlock"

    invoke-virtual {p0, v7}, Lcom/android/settings/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 358
    const-string v6, "show_in_call_screen"

    invoke-virtual {p0, v6}, Lcom/android/settings/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    if-eqz v6, :cond_b

    .line 359
    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    const-string v7, "show_in_call_screen"

    invoke-virtual {p0, v7}, Lcom/android/settings/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 364
    :cond_b
    :goto_3
    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/Utils;->isCoverVerified(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_d

    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2013Supported()Z

    move-result v6

    if-eqz v6, :cond_d

    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_d

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    if-ge v6, v9, :cond_d

    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v6

    if-nez v6, :cond_c

    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/Utils;->isSViewCover2014Supported(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_19

    :cond_c
    if-eqz v1, :cond_d

    const/4 v6, 0x2

    if-eq v1, v6, :cond_d

    const/4 v6, 0x5

    if-eq v1, v6, :cond_d

    const/4 v6, 0x7

    if-eq v1, v6, :cond_d

    if-ne v1, v9, :cond_19

    .line 366
    :cond_d
    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    const-string v7, "sview_color"

    invoke-virtual {p0, v7}, Lcom/android/settings/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 367
    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    const-string v7, "sview_color_2014"

    invoke-virtual {p0, v7}, Lcom/android/settings/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 368
    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    const-string v7, "sview_mini_wallpaper"

    invoke-virtual {p0, v7}, Lcom/android/settings/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 369
    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    const-string v7, "sview_style_clock"

    invoke-virtual {p0, v7}, Lcom/android/settings/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 370
    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    const-string v7, "sview_edge_cover_settings"

    invoke-virtual {p0, v7}, Lcom/android/settings/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 371
    const-string v6, "select_info"

    invoke-virtual {p0, v6}, Lcom/android/settings/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    if-eqz v6, :cond_e

    .line 372
    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    const-string v7, "select_info"

    invoke-virtual {p0, v7}, Lcom/android/settings/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 373
    :cond_e
    const-string v6, "DockSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "sview - getTypeOfCover():"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " isSettingsUI2013Supported():"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2013Supported()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " isSupportMenuTreeForK():"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    :goto_4
    if-ne v1, v9, :cond_21

    .line 418
    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    const-string v7, "cover"

    invoke-virtual {p0, v7}, Lcom/android/settings/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 423
    :goto_5
    iget-object v6, p0, Lcom/android/settings/DockSettings;->isMontblancInstalled:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_f

    if-eq v1, v9, :cond_10

    .line 424
    :cond_f
    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/DockSettings;->mMontblancContents:Landroid/preference/Preference;

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 428
    :cond_10
    const-string v6, "ultrasonic_cover"

    invoke-virtual {p0, v6}, Lcom/android/settings/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/PreferenceCategory;

    iput-object v6, p0, Lcom/android/settings/DockSettings;->mUltrasonicCover:Landroid/preference/PreferenceCategory;

    .line 429
    const-string v6, "ultrasonic_cane"

    invoke-virtual {p0, v6}, Lcom/android/settings/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/CheckBoxPreference;

    iput-object v6, p0, Lcom/android/settings/DockSettings;->mUltrasonicCane:Landroid/preference/CheckBoxPreference;

    .line 430
    const-string v6, "ultrasonic_range"

    invoke-virtual {p0, v6}, Lcom/android/settings/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/ListPreference;

    iput-object v6, p0, Lcom/android/settings/DockSettings;->mUltrasonicRange:Landroid/preference/ListPreference;

    .line 432
    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    const-string v7, "ultrasonic_cover"

    invoke-virtual {p0, v7}, Lcom/android/settings/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 433
    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    const-string v7, "ultrasonic_cane"

    invoke-virtual {p0, v7}, Lcom/android/settings/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 434
    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    const-string v7, "ultrasonic_range"

    invoke-virtual {p0, v7}, Lcom/android/settings/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 436
    const-string v6, "hdmi"

    invoke-virtual {p0, v6}, Lcom/android/settings/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/PreferenceCategory;

    iput-object v6, p0, Lcom/android/settings/DockSettings;->mHdmiCategory:Landroid/preference/PreferenceCategory;

    .line 437
    invoke-static {}, Lcom/android/settings/Utils;->isLocaleRTL()Z

    move-result v6

    if-eqz v6, :cond_11

    .line 438
    const v6, 0x7f0a178b

    invoke-virtual {p0, v6}, Lcom/android/settings/DockSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 439
    .local v3, "hdmiTitle":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u200f"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 440
    iget-object v6, p0, Lcom/android/settings/DockSettings;->mHdmiCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v6, v3}, Landroid/preference/PreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    .line 443
    .end local v3    # "hdmiTitle":Ljava/lang/String;
    :cond_11
    const-string v6, "audio_output"

    invoke-virtual {p0, v6}, Lcom/android/settings/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/ListPreference;

    iput-object v6, p0, Lcom/android/settings/DockSettings;->mAudioOutput:Landroid/preference/ListPreference;

    .line 449
    iget-object v6, p0, Lcom/android/settings/DockSettings;->mAudioOutput:Landroid/preference/ListPreference;

    invoke-virtual {v6, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 452
    const-string v6, "book_cover"

    invoke-virtual {p0, v6}, Lcom/android/settings/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/PreferenceCategory;

    iput-object v6, p0, Lcom/android/settings/DockSettings;->mBookCoverCategory:Landroid/preference/PreferenceCategory;

    .line 453
    const-string v6, "cover_note"

    invoke-virtual {p0, v6}, Lcom/android/settings/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/CheckBoxPreference;

    iput-object v6, p0, Lcom/android/settings/DockSettings;->mCoverNote:Landroid/preference/CheckBoxPreference;

    .line 454
    const-string v6, "book_cover_automatic_unlock"

    invoke-virtual {p0, v6}, Lcom/android/settings/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/CheckBoxPreference;

    iput-object v6, p0, Lcom/android/settings/DockSettings;->mBookCoverAutomaticUnlock:Landroid/preference/CheckBoxPreference;

    .line 455
    const-string v6, "cover_note_weather_unit"

    invoke-virtual {p0, v6}, Lcom/android/settings/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/ListPreference;

    iput-object v6, p0, Lcom/android/settings/DockSettings;->mCoverNoteWeatherUnit:Landroid/preference/ListPreference;

    .line 456
    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/Utils;->isExistCoverNotePackage(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_22

    .line 457
    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_12

    const-string v6, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_AUTOMATIC_UNLOCK"

    invoke-static {v6}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_13

    .line 458
    :cond_12
    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/DockSettings;->mBookCoverCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 459
    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/DockSettings;->mBookCoverAutomaticUnlock:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 461
    :cond_13
    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/DockSettings;->mCoverNote:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 462
    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/DockSettings;->mCoverNoteWeatherUnit:Landroid/preference/ListPreference;

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 468
    :goto_6
    const-string v6, "audio_applications"

    invoke-virtual {p0, v6}, Lcom/android/settings/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/CheckBoxPreference;

    iput-object v6, p0, Lcom/android/settings/DockSettings;->mAudioApplications:Landroid/preference/CheckBoxPreference;

    .line 470
    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v7, 0xa0

    if-le v6, v7, :cond_14

    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_14

    .line 474
    :cond_14
    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    const-string v7, "earset"

    invoke-virtual {p0, v7}, Lcom/android/settings/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 475
    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    const-string v7, "audio_applications"

    invoke-virtual {p0, v7}, Lcom/android/settings/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 477
    return-void

    .line 285
    .end local v1    # "covertype":I
    .end local v2    # "deviceName":Ljava/lang/String;
    .end local v5    # "projectName":Ljava/lang/String;
    :cond_15
    invoke-static {}, Lcom/android/settings/Utils;->isRemoveCradelOnly()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 286
    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    const-string v7, "cradle_enable"

    invoke-virtual {p0, v7}, Lcom/android/settings/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_0

    .line 313
    .restart local v2    # "deviceName":Ljava/lang/String;
    .restart local v5    # "projectName":Ljava/lang/String;
    :cond_16
    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    const-string v7, "desk_home_screen_display"

    invoke-virtual {p0, v7}, Lcom/android/settings/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_1

    .line 335
    :cond_17
    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    const-string v7, "desk_home_screen_display"

    invoke-virtual {p0, v7}, Lcom/android/settings/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_2

    .line 360
    .restart local v1    # "covertype":I
    :cond_18
    if-nez v1, :cond_b

    .line 361
    iget-object v6, p0, Lcom/android/settings/DockSettings;->mCoverCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v6, v8}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    goto/16 :goto_3

    .line 376
    :cond_19
    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v6

    if-nez v6, :cond_1a

    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/Utils;->isSViewCover2014Supported(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_1b

    :cond_1a
    const/4 v6, 0x6

    if-ne v1, v6, :cond_1b

    .line 379
    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    const-string v7, "sview_color"

    invoke-virtual {p0, v7}, Lcom/android/settings/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 380
    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    const-string v7, "sview_color_2014"

    invoke-virtual {p0, v7}, Lcom/android/settings/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 381
    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    const-string v7, "sview_style_clock"

    invoke-virtual {p0, v7}, Lcom/android/settings/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 382
    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    const-string v7, "sview_edge_cover_settings"

    invoke-virtual {p0, v7}, Lcom/android/settings/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 383
    const-string v6, "DockSettings"

    const-string v7, "mini cover UI"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 385
    :cond_1b
    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/Utils;->getModelOfCover(Landroid/content/Context;)I

    move-result v0

    .line 386
    .local v0, "covermodel":I
    const/4 v6, 0x3

    if-ne v0, v6, :cond_1c

    .line 388
    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    const-string v7, "sview_color"

    invoke-virtual {p0, v7}, Lcom/android/settings/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 389
    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    const-string v7, "sview_color_2014"

    invoke-virtual {p0, v7}, Lcom/android/settings/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 390
    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    const-string v7, "sview_mini_wallpaper"

    invoke-virtual {p0, v7}, Lcom/android/settings/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 391
    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    const-string v7, "sview_style_clock"

    invoke-virtual {p0, v7}, Lcom/android/settings/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 392
    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    const-string v7, "select_info"

    invoke-virtual {p0, v7}, Lcom/android/settings/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 393
    iget-object v6, p0, Lcom/android/settings/DockSettings;->mCoverCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v6, v8}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    .line 394
    const-string v6, "DockSettings"

    const-string v7, "sview_color edge"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 396
    :cond_1c
    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/Utils;->isSViewCover2014Supported(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_1f

    .line 397
    invoke-static {}, Lcom/android/settings/Utils;->isSViewWallpaperOldSupported()Z

    move-result v6

    if-eqz v6, :cond_1e

    .line 398
    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    const-string v7, "sview_color_2014"

    invoke-virtual {p0, v7}, Lcom/android/settings/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 401
    :goto_7
    invoke-static {}, Lcom/android/settings/Utils;->isStyleClockSupported()Z

    move-result v6

    if-nez v6, :cond_1d

    .line 402
    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    const-string v7, "sview_style_clock"

    invoke-virtual {p0, v7}, Lcom/android/settings/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 403
    :cond_1d
    const-string v6, "DockSettings"

    const-string v7, "sview_color 2014"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    :goto_8
    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    const-string v7, "sview_mini_wallpaper"

    invoke-virtual {p0, v7}, Lcom/android/settings/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 412
    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    const-string v7, "sview_edge_cover_settings"

    invoke-virtual {p0, v7}, Lcom/android/settings/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_4

    .line 400
    :cond_1e
    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    const-string v7, "sview_color"

    invoke-virtual {p0, v7}, Lcom/android/settings/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_7

    .line 405
    :cond_1f
    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    const-string v7, "sview_color_2014"

    invoke-virtual {p0, v7}, Lcom/android/settings/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 406
    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    const-string v7, "sview_style_clock"

    invoke-virtual {p0, v7}, Lcom/android/settings/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 407
    const-string v6, "ms01"

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_20

    .line 408
    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    const-string v7, "select_info"

    invoke-virtual {p0, v7}, Lcom/android/settings/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 409
    :cond_20
    const-string v6, "DockSettings"

    const-string v7, "sview_color default"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 420
    .end local v0    # "covermodel":I
    :cond_21
    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/DockSettings;->mMontblancCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_5

    .line 464
    :cond_22
    iget-object v6, p0, Lcom/android/settings/DockSettings;->mCoverNote:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 465
    iget-object v6, p0, Lcom/android/settings/DockSettings;->mCoverNoteWeatherUnit:Landroid/preference/ListPreference;

    invoke-virtual {v6, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto/16 :goto_6
.end method

.method private needsDockSettings()Z
    .locals 2

    .prologue
    .line 480
    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f0d0000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method private updateScreenSaverSummary()V
    .locals 3

    .prologue
    .line 837
    iget-object v0, p0, Lcom/android/settings/DockSettings;->mScreenSaverPreference:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v0, :cond_0

    .line 839
    iget-object v0, p0, Lcom/android/settings/DockSettings;->mScreenSaverPreference:Landroid/preference/SwitchPreferenceScreen;

    new-instance v1, Lcom/android/settings/DreamBackend;

    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settings/DreamBackend;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/android/settings/DreamBackend;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 842
    iget-object v0, p0, Lcom/android/settings/DockSettings;->mScreenSaverPreference:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/DreamSettings;->getSummaryTextWithDreamName(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 845
    :cond_0
    return-void
.end method

.method private updateState()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 891
    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "ultrasonic_cane"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 892
    .local v0, "saved_value":Z
    :cond_0
    iget-object v1, p0, Lcom/android/settings/DockSettings;->mUltrasonicRange:Landroid/preference/ListPreference;

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 893
    return-void
.end method

.method private updateUltrasonicSensorSettingsScreen()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 896
    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "ultrasonic_cane"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_0

    move v0, v1

    .line 898
    .local v0, "ultrasonicSensorValue":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 899
    iget-object v2, p0, Lcom/android/settings/DockSettings;->mUltrasonicCane:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 903
    :goto_1
    return-void

    .end local v0    # "ultrasonicSensorValue":Z
    :cond_0
    move v0, v2

    .line 896
    goto :goto_0

    .line 901
    .restart local v0    # "ultrasonicSensorValue":Z
    :cond_1
    iget-object v1, p0, Lcom/android/settings/DockSettings;->mUltrasonicCane:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_1
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "desiredState"    # Z

    .prologue
    .line 884
    const-string v0, "DockSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCheckChanged : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 885
    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "ultrasonic_cane"

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 886
    iget-object v0, p0, Lcom/android/settings/DockSettings;->mUltrasonicRange:Landroid/preference/ListPreference;

    invoke-virtual {v0, p2}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 887
    return-void

    .line 885
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 171
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 172
    const v0, 0x7f07004b

    invoke-virtual {p0, v0}, Lcom/android/settings/DockSettings;->addPreferencesFromResource(I)V

    .line 174
    invoke-direct {p0}, Lcom/android/settings/DockSettings;->initDockSettings()V

    .line 175
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 803
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 804
    invoke-direct {p0}, Lcom/android/settings/DockSettings;->createUndockedMessage()Landroid/app/Dialog;

    move-result-object v0

    .line 808
    :goto_0
    return-object v0

    .line 805
    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 806
    invoke-direct {p0}, Lcom/android/settings/DockSettings;->createMontblancDownloadPopup()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 808
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 262
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 263
    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/DockSettings;->mUltrasonicSensor:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 264
    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/DockSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 265
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 8
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "objValue"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 728
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 729
    .local v0, "key":Ljava/lang/String;
    const-string v5, "audio_output"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 730
    check-cast p2, Ljava/lang/String;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 731
    .local v2, "value":I
    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 732
    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "hdmi_audio_output"

    invoke-static {v3, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 733
    :cond_0
    iget-object v3, p0, Lcom/android/settings/DockSettings;->mAudioOutput:Landroid/preference/ListPreference;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 734
    iget-object v3, p0, Lcom/android/settings/DockSettings;->mAudioOutput:Landroid/preference/ListPreference;

    iget-object v5, p0, Lcom/android/settings/DockSettings;->mAudioOutput:Landroid/preference/ListPreference;

    invoke-virtual {v5}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 798
    .end local v2    # "value":I
    :cond_1
    :goto_0
    return v4

    .line 735
    .restart local p2    # "objValue":Ljava/lang/Object;
    :cond_2
    const-string v5, "cover_note"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 736
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 737
    .local v2, "value":Z
    iget-object v5, p0, Lcom/android/settings/DockSettings;->mCoverNote:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 738
    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "cover_note"

    if-eqz v2, :cond_3

    move v3, v4

    :cond_3
    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 739
    const-string v3, "DockSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Save KEY_COVER_NOTE : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 740
    .end local v2    # "value":Z
    .restart local p2    # "objValue":Ljava/lang/Object;
    :cond_4
    const-string v5, "cover_note_weather_unit"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 741
    check-cast p2, Ljava/lang/String;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 742
    .local v2, "value":I
    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 743
    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "cover_note_weather_unit"

    invoke-static {v3, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 744
    :cond_5
    iget-object v3, p0, Lcom/android/settings/DockSettings;->mCoverNoteWeatherUnit:Landroid/preference/ListPreference;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 745
    iget-object v3, p0, Lcom/android/settings/DockSettings;->mCoverNoteWeatherUnit:Landroid/preference/ListPreference;

    iget-object v5, p0, Lcom/android/settings/DockSettings;->mCoverNoteWeatherUnit:Landroid/preference/ListPreference;

    invoke-virtual {v5}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 746
    .end local v2    # "value":I
    .restart local p2    # "objValue":Ljava/lang/Object;
    :cond_6
    const-string v5, "screensaver"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 747
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_7

    move v2, v4

    .line 748
    .restart local v2    # "value":I
    :goto_1
    if-ne v2, v4, :cond_9

    .line 749
    const-string v5, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_DOCK"

    invoke-static {v5}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_8

    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "desk_home_screen_display"

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v4, :cond_8

    .line 751
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v1, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 752
    .local v1, "mAlertDialog":Landroid/app/AlertDialog$Builder;
    const v5, 0x7f0a06c3

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 753
    const v5, 0x7f0a0ff4

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 754
    const v5, 0x104000a

    new-instance v6, Lcom/android/settings/DockSettings$8;

    invoke-direct {v6, p0}, Lcom/android/settings/DockSettings$8;-><init>(Lcom/android/settings/DockSettings;)V

    invoke-virtual {v1, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 762
    const/high16 v5, 0x1040000

    new-instance v6, Lcom/android/settings/DockSettings$9;

    invoke-direct {v6, p0}, Lcom/android/settings/DockSettings$9;-><init>(Lcom/android/settings/DockSettings;)V

    invoke-virtual {v1, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 768
    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 769
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .end local v1    # "mAlertDialog":Landroid/app/AlertDialog$Builder;
    .end local v2    # "value":I
    :cond_7
    move v2, v3

    .line 747
    goto :goto_1

    .line 771
    .restart local v2    # "value":I
    :cond_8
    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "desk_home_screen_display"

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 772
    new-instance v3, Lcom/android/settings/DreamBackend;

    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v3, v5}, Lcom/android/settings/DreamBackend;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v4}, Lcom/android/settings/DreamBackend;->setEnabled(Z)V

    .line 773
    invoke-direct {p0}, Lcom/android/settings/DockSettings;->updateScreenSaverSummary()V

    goto/16 :goto_0

    .line 776
    :cond_9
    new-instance v5, Lcom/android/settings/DreamBackend;

    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/android/settings/DreamBackend;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v3}, Lcom/android/settings/DreamBackend;->setEnabled(Z)V

    .line 777
    invoke-direct {p0}, Lcom/android/settings/DockSettings;->updateScreenSaverSummary()V

    goto/16 :goto_0

    .line 779
    .end local v2    # "value":I
    .restart local p2    # "objValue":Ljava/lang/Object;
    :cond_a
    const-string v5, "ultrasonic_cane"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 780
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 781
    .local v2, "value":Z
    iget-object v5, p0, Lcom/android/settings/DockSettings;->mUltrasonicCane:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 782
    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "ultrasonic_cane"

    if-eqz v2, :cond_d

    move v5, v4

    :goto_2
    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 783
    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "ultrasonic_cane"

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_e

    .line 784
    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const v6, 0x7f0a10eb

    invoke-static {v5, v6, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 789
    :cond_b
    :goto_3
    iget-object v5, p0, Lcom/android/settings/DockSettings;->mUltrasonicRange:Landroid/preference/ListPreference;

    if-eqz v5, :cond_1

    .line 790
    iget-object v5, p0, Lcom/android/settings/DockSettings;->mUltrasonicRange:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "ultrasonic_cane"

    invoke-static {v6, v7, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_c

    move v3, v4

    :cond_c
    invoke-virtual {v5, v3}, Landroid/preference/ListPreference;->setEnabled(Z)V

    goto/16 :goto_0

    :cond_d
    move v5, v3

    .line 782
    goto :goto_2

    .line 786
    :cond_e
    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "ultrasonic_cane"

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-nez v5, :cond_b

    .line 787
    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const v6, 0x7f0a10ec

    invoke-static {v5, v6, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_3

    .line 791
    .end local v2    # "value":Z
    .restart local p2    # "objValue":Ljava/lang/Object;
    :cond_f
    const-string v3, "ultrasonic_range"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 792
    check-cast p2, Ljava/lang/String;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 793
    .local v2, "value":I
    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    if-eqz v3, :cond_10

    .line 794
    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "ultrasonic_db"

    invoke-static {v3, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 795
    :cond_10
    iget-object v3, p0, Lcom/android/settings/DockSettings;->mUltrasonicRange:Landroid/preference/ListPreference;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 796
    iget-object v3, p0, Lcom/android/settings/DockSettings;->mUltrasonicRange:Landroid/preference/ListPreference;

    iget-object v5, p0, Lcom/android/settings/DockSettings;->mUltrasonicRange:Landroid/preference/ListPreference;

    invoke-virtual {v5}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 21
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 561
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/DockSettings;->mOpenDetailMenu:Z

    move/from16 v18, v0

    if-eqz v18, :cond_0

    .line 562
    sget v18, Lcom/android/settings/DockSettings;->mSettingValue:I

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_0

    .line 563
    sget v18, Lcom/android/settings/DockSettings;->mSettingValue:I

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_1

    const/16 v17, 0x1

    .local v17, "value":Z
    :goto_0
    move-object/from16 v4, p2

    .line 564
    check-cast v4, Landroid/preference/CheckBoxPreference;

    .line 565
    .local v4, "checkBoxStatePreference":Landroid/preference/CheckBoxPreference;
    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isEnabled()Z

    move-result v18

    if-eqz v18, :cond_0

    .line 566
    move/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 572
    .end local v4    # "checkBoxStatePreference":Landroid/preference/CheckBoxPreference;
    .end local v17    # "value":Z
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DockSettings;->mAudioSettings:Landroid/preference/Preference;

    move-object/from16 v18, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_4

    .line 573
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DockSettings;->mDockIntent:Landroid/content/Intent;

    move-object/from16 v18, v0

    if-eqz v18, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DockSettings;->mDockIntent:Landroid/content/Intent;

    move-object/from16 v18, v0

    const-string v19, "android.intent.extra.DOCK_STATE"

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 574
    .local v5, "dockState":I
    :goto_1
    if-nez v5, :cond_3

    .line 575
    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings/DockSettings;->showDialog(I)V

    .line 583
    :goto_2
    const/16 v18, 0x1

    .line 722
    .end local v5    # "dockState":I
    :goto_3
    return v18

    .line 563
    :cond_1
    const/16 v17, 0x0

    goto :goto_0

    .line 573
    :cond_2
    const/4 v5, 0x0

    goto :goto_1

    .line 577
    .restart local v5    # "dockState":I
    :cond_3
    new-instance v7, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DockSettings;->mDockIntent:Landroid/content/Intent;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 578
    .local v7, "i":Landroid/content/Intent;
    const-string v18, "com.android.settings.bluetooth.action.DOCK_SHOW_UI"

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 579
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v18

    const-class v19, Lcom/android/settings/bluetooth/DockEventReceiver;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 580
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_2

    .line 584
    .end local v5    # "dockState":I
    .end local v7    # "i":Landroid/content/Intent;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DockSettings;->mDockSounds:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_6

    .line 585
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string v20, "dock_sounds_enabled"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DockSettings;->mDockSounds:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v18

    if-eqz v18, :cond_5

    const/16 v18, 0x1

    :goto_4
    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 587
    const/16 v18, 0x1

    goto :goto_3

    .line 585
    :cond_5
    const/16 v18, 0x0

    goto :goto_4

    .line 588
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DockSettings;->mCradleEnable:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_d

    .line 590
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DockSettings;->mCradleEnable:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v17

    .line 591
    .restart local v17    # "value":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string v20, "cradle_enable"

    if-eqz v17, :cond_8

    const/16 v18, 0x1

    :goto_5
    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 592
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string v19, "cradle_connect"

    const/16 v20, 0x0

    invoke-static/range {v18 .. v20}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v18

    if-eqz v18, :cond_b

    .line 594
    const-string v18, "DockSettings"

    const-string v19, "Cradle is connected:"

    invoke-static/range {v18 .. v19}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    .line 596
    .local v9, "intent":Landroid/content/Intent;
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/DockSettings;->checkSmartDockType()Z

    move-result v18

    if-eqz v18, :cond_9

    .line 597
    const-string v18, "smartdock"

    const/16 v19, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 598
    const-string v18, "android.intent.action.EXTERNAL_USB_HEADSET_PLUG"

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 601
    :goto_6
    if-eqz v17, :cond_a

    .line 603
    const/4 v3, 0x1

    .line 607
    .local v3, "PhoneSpeakerState":I
    :goto_7
    const-string v18, "state"

    move-object/from16 v0, v18

    invoke-virtual {v9, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 608
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 609
    const-string v18, "DockSettings"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "PhoneSpeakerState(0 Phone, 1 Line out): "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    :goto_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v18

    const-string v19, "cradle_enable"

    const/16 v20, 0x1

    invoke-virtual/range {v18 .. v20}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v16

    .line 624
    .local v16, "sp":Landroid/content/SharedPreferences;
    if-eqz v16, :cond_7

    .line 625
    if-eqz v17, :cond_7

    .line 626
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DockSettings;->showOudioOutputNotiDialog()V

    .line 629
    :cond_7
    const/16 v18, 0x1

    goto/16 :goto_3

    .line 591
    .end local v3    # "PhoneSpeakerState":I
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v16    # "sp":Landroid/content/SharedPreferences;
    :cond_8
    const/16 v18, 0x0

    goto/16 :goto_5

    .line 600
    .restart local v9    # "intent":Landroid/content/Intent;
    :cond_9
    const-string v18, "com.sec.android.intent.action.INTERNAL_SPEAKER"

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_6

    .line 605
    :cond_a
    const/4 v3, 0x0

    .restart local v3    # "PhoneSpeakerState":I
    goto :goto_7

    .line 611
    .end local v3    # "PhoneSpeakerState":I
    .end local v9    # "intent":Landroid/content/Intent;
    :cond_b
    const-string v18, "DockSettings"

    const-string v19, "Cradle is not connected:"

    invoke-static/range {v18 .. v19}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    .line 613
    .restart local v9    # "intent":Landroid/content/Intent;
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/DockSettings;->checkSmartDockType()Z

    move-result v18

    if-eqz v18, :cond_c

    .line 614
    const-string v18, "smartdock"

    const/16 v19, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 615
    const-string v18, "android.intent.action.EXTERNAL_USB_HEADSET_PLUG"

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 618
    :goto_9
    const/4 v3, 0x0

    .line 619
    .restart local v3    # "PhoneSpeakerState":I
    const-string v18, "state"

    move-object/from16 v0, v18

    invoke-virtual {v9, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 620
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 621
    const-string v18, "DockSettings"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "PhoneSpeakerState(0 Phone, 1 Line out): "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 617
    .end local v3    # "PhoneSpeakerState":I
    :cond_c
    const-string v18, "com.sec.android.intent.action.INTERNAL_SPEAKER"

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_9

    .line 630
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v17    # "value":Z
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DockSettings;->mDeskHomeScreen:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_10

    .line 631
    new-instance v12, Lcom/android/settings/DreamBackend;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v12, v0}, Lcom/android/settings/DreamBackend;-><init>(Landroid/content/Context;)V

    .line 632
    .local v12, "mBackend":Lcom/android/settings/DreamBackend;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DockSettings;->mDeskHomeScreen:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v18

    if-eqz v18, :cond_e

    invoke-virtual {v12}, Lcom/android/settings/DreamBackend;->isEnabled()Z

    move-result v18

    if-eqz v18, :cond_e

    .line 633
    new-instance v11, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v11, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 634
    .local v11, "mAlertDialog":Landroid/app/AlertDialog$Builder;
    const v18, 0x7f0a0ff5

    move/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 635
    const v18, 0x7f0a0ff6

    move/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 636
    const v18, 0x104000a

    new-instance v19, Lcom/android/settings/DockSettings$3;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/DockSettings$3;-><init>(Lcom/android/settings/DockSettings;)V

    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v11, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 646
    const/high16 v18, 0x1040000

    new-instance v19, Lcom/android/settings/DockSettings$4;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/DockSettings$4;-><init>(Lcom/android/settings/DockSettings;)V

    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v11, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 652
    new-instance v18, Lcom/android/settings/DockSettings$5;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/DockSettings$5;-><init>(Lcom/android/settings/DockSettings;)V

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 657
    invoke-virtual {v11}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DockSettings;->mShowDeskAlertdialog:Landroid/app/AlertDialog;

    .line 658
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DockSettings;->mShowDeskAlertdialog:Landroid/app/AlertDialog;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/app/AlertDialog;->show()V

    .line 661
    .end local v11    # "mAlertDialog":Landroid/app/AlertDialog$Builder;
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string v20, "desk_home_screen_display"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DockSettings;->mDeskHomeScreen:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v18

    if-eqz v18, :cond_f

    const/16 v18, 0x1

    :goto_a
    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 662
    const/16 v18, 0x1

    goto/16 :goto_3

    .line 661
    :cond_f
    const/16 v18, 0x0

    goto :goto_a

    .line 663
    .end local v12    # "mBackend":Lcom/android/settings/DreamBackend;
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DockSettings;->mAudioApplications:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_12

    .line 664
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string v20, "audio_applications"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DockSettings;->mAudioApplications:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v18

    if-eqz v18, :cond_11

    const/16 v18, 0x1

    :goto_b
    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 665
    const/16 v18, 0x1

    goto/16 :goto_3

    .line 664
    :cond_11
    const/16 v18, 0x0

    goto :goto_b

    .line 667
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DockSettings;->mAutomaticUnlock:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_14

    .line 668
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string v20, "automatic_unlock"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DockSettings;->mAutomaticUnlock:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v18

    if-eqz v18, :cond_13

    const/16 v18, 0x1

    :goto_c
    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 669
    const/16 v18, 0x1

    goto/16 :goto_3

    .line 668
    :cond_13
    const/16 v18, 0x0

    goto :goto_c

    .line 670
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DockSettings;->mBookCoverAutomaticUnlock:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_16

    .line 671
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string v20, "automatic_unlock"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DockSettings;->mBookCoverAutomaticUnlock:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v18

    if-eqz v18, :cond_15

    const/16 v18, 0x1

    :goto_d
    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 672
    const/16 v18, 0x1

    goto/16 :goto_3

    .line 671
    :cond_15
    const/16 v18, 0x0

    goto :goto_d

    .line 673
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DockSettings;->mShowInCallScreen:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_18

    .line 674
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string v20, "smart_screen_on"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DockSettings;->mShowInCallScreen:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v18

    if-eqz v18, :cond_17

    const/16 v18, 0x1

    :goto_e
    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 675
    const/16 v18, 0x1

    goto/16 :goto_3

    .line 674
    :cond_17
    const/16 v18, 0x0

    goto :goto_e

    .line 676
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DockSettings;->mUltrasonicCane:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_1b

    .line 677
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    const-string v18, "layout_inflater"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings/DockSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/LayoutInflater;

    .line 678
    .local v8, "inflater":Landroid/view/LayoutInflater;
    const v18, 0x7f04019e

    const/16 v19, 0x0

    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v8, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    .line 679
    .local v10, "layout":Landroid/view/View;
    const v18, 0x7f100167

    move/from16 v0, v18

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/CheckBox;

    .line 680
    .local v13, "mCheck":Landroid/widget/CheckBox;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v14

    .line 681
    .local v14, "mUltrasonicSensorPreference":Landroid/content/SharedPreferences;
    const-string v18, "pref_ultrasonic_noti"

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-interface {v14, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    .line 682
    .local v15, "never_show_ultrasonic_noti":Ljava/lang/Boolean;
    invoke-interface {v14}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    .line 684
    .local v6, "edit":Landroid/content/SharedPreferences$Editor;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string v19, "ultrasonic_cane"

    const/16 v20, 0x0

    invoke-static/range {v18 .. v20}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v18

    if-nez v18, :cond_19

    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v18

    if-nez v18, :cond_19

    .line 685
    new-instance v11, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v11, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 686
    .restart local v11    # "mAlertDialog":Landroid/app/AlertDialog$Builder;
    const v18, 0x7f0a10e6

    move/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 687
    invoke-virtual {v11, v10}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 688
    const v18, 0x7f0a0898

    new-instance v19, Lcom/android/settings/DockSettings$6;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v6, v13}, Lcom/android/settings/DockSettings$6;-><init>(Lcom/android/settings/DockSettings;Landroid/content/SharedPreferences$Editor;Landroid/widget/CheckBox;)V

    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v11, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 700
    new-instance v18, Lcom/android/settings/DockSettings$7;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/DockSettings$7;-><init>(Lcom/android/settings/DockSettings;)V

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 705
    invoke-virtual {v11}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 717
    .end local v11    # "mAlertDialog":Landroid/app/AlertDialog$Builder;
    :goto_f
    const/16 v18, 0x1

    goto/16 :goto_3

    .line 707
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DockSettings;->mUltrasonicCane:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v18

    if-eqz v18, :cond_1a

    .line 708
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string v19, "ultrasonic_cane"

    const/16 v20, 0x1

    invoke-static/range {v18 .. v20}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 709
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v18

    const v19, 0x7f0a10eb

    const/16 v20, 0x1

    invoke-static/range {v18 .. v20}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/widget/Toast;->show()V

    .line 710
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/DockSettings;->updateState()V

    goto :goto_f

    .line 712
    :cond_1a
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string v19, "ultrasonic_cane"

    const/16 v20, 0x0

    invoke-static/range {v18 .. v20}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 713
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v18

    const v19, 0x7f0a10ec

    const/16 v20, 0x1

    invoke-static/range {v18 .. v20}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/widget/Toast;->show()V

    .line 714
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/DockSettings;->updateState()V

    goto :goto_f

    .line 718
    .end local v6    # "edit":Landroid/content/SharedPreferences$Editor;
    .end local v8    # "inflater":Landroid/view/LayoutInflater;
    .end local v10    # "layout":Landroid/view/View;
    .end local v13    # "mCheck":Landroid/widget/CheckBox;
    .end local v14    # "mUltrasonicSensorPreference":Landroid/content/SharedPreferences;
    .end local v15    # "never_show_ultrasonic_noti":Ljava/lang/Boolean;
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DockSettings;->mMontblancContents:Landroid/preference/Preference;

    move-object/from16 v18, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_1c

    .line 719
    const/16 v18, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings/DockSettings;->showDialog(I)V

    .line 722
    :cond_1c
    invoke-super/range {p0 .. p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v18

    goto/16 :goto_3
.end method

.method public onResume()V
    .locals 14

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 180
    const/4 v7, 0x0

    .line 181
    .local v7, "super_mOpenDetailMenu":Z
    iget-boolean v7, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    .line 182
    iput-boolean v11, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    .line 184
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 186
    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v12, "ultrasonic_cane"

    invoke-static {v12}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    iget-object v13, p0, Lcom/android/settings/DockSettings;->mUltrasonicSensor:Landroid/database/ContentObserver;

    invoke-virtual {v9, v12, v11, v13}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 187
    new-instance v1, Landroid/content/IntentFilter;

    const-string v9, "android.intent.action.DOCK_EVENT"

    invoke-direct {v1, v9}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 188
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v9, "android.media.action.HDMI_AUDIO_PLUG"

    invoke-virtual {v1, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 189
    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    iget-object v12, p0, Lcom/android/settings/DockSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v9, v12, v1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 191
    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 192
    .local v6, "resolver":Landroid/content/ContentResolver;
    iget-object v12, p0, Lcom/android/settings/DockSettings;->mDockSounds:Landroid/preference/CheckBoxPreference;

    const-string v9, "dock_sounds_enabled"

    invoke-static {v6, v9, v11}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-eqz v9, :cond_5

    move v9, v10

    :goto_0
    invoke-virtual {v12, v9}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 193
    iget-object v12, p0, Lcom/android/settings/DockSettings;->mCradleEnable:Landroid/preference/CheckBoxPreference;

    const-string v9, "cradle_enable"

    invoke-static {v6, v9, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-ne v9, v10, :cond_6

    move v9, v10

    :goto_1
    invoke-virtual {v12, v9}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 194
    invoke-direct {p0}, Lcom/android/settings/DockSettings;->updateScreenSaverSummary()V

    .line 195
    iget-object v9, p0, Lcom/android/settings/DockSettings;->mShowDeskAlertdialog:Landroid/app/AlertDialog;

    if-eqz v9, :cond_7

    iget-object v9, p0, Lcom/android/settings/DockSettings;->mShowDeskAlertdialog:Landroid/app/AlertDialog;

    invoke-virtual {v9}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 196
    iget-object v9, p0, Lcom/android/settings/DockSettings;->mDeskHomeScreen:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v9, v10}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 201
    :goto_2
    iget-object v12, p0, Lcom/android/settings/DockSettings;->mAutomaticUnlock:Landroid/preference/CheckBoxPreference;

    const-string v9, "automatic_unlock"

    invoke-static {v6, v9, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-ne v9, v10, :cond_9

    move v9, v10

    :goto_3
    invoke-virtual {v12, v9}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 202
    iget-object v12, p0, Lcom/android/settings/DockSettings;->mShowInCallScreen:Landroid/preference/CheckBoxPreference;

    const-string v9, "smart_screen_on"

    invoke-static {v6, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-ne v9, v10, :cond_a

    move v9, v10

    :goto_4
    invoke-virtual {v12, v9}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 203
    iget-object v12, p0, Lcom/android/settings/DockSettings;->mUltrasonicCane:Landroid/preference/CheckBoxPreference;

    const-string v9, "ultrasonic_cane"

    invoke-static {v6, v9, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-eqz v9, :cond_b

    move v9, v10

    :goto_5
    invoke-virtual {v12, v9}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 205
    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v12, "ultrasonic_db"

    invoke-static {v9, v12, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 206
    .local v4, "mUltrasonicRangeValue":I
    iget-object v9, p0, Lcom/android/settings/DockSettings;->mUltrasonicRange:Landroid/preference/ListPreference;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 207
    iget-object v9, p0, Lcom/android/settings/DockSettings;->mUltrasonicRange:Landroid/preference/ListPreference;

    iget-object v12, p0, Lcom/android/settings/DockSettings;->mUltrasonicRange:Landroid/preference/ListPreference;

    invoke-virtual {v12}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v9, v12}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 208
    invoke-direct {p0}, Lcom/android/settings/DockSettings;->updateState()V

    .line 210
    const-string v9, "hdmi_audio_output"

    invoke-static {v6, v9, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 212
    .local v3, "mHdmiValue":I
    iget-object v9, p0, Lcom/android/settings/DockSettings;->mAudioOutput:Landroid/preference/ListPreference;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 213
    iget-object v9, p0, Lcom/android/settings/DockSettings;->mAudioOutput:Landroid/preference/ListPreference;

    iget-object v12, p0, Lcom/android/settings/DockSettings;->mAudioOutput:Landroid/preference/ListPreference;

    invoke-virtual {v12}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v9, v12}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 215
    iget-object v12, p0, Lcom/android/settings/DockSettings;->mAudioApplications:Landroid/preference/CheckBoxPreference;

    const-string v9, "audio_applications"

    invoke-static {v6, v9, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-ne v9, v10, :cond_c

    move v9, v10

    :goto_6
    invoke-virtual {v12, v9}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 218
    const-string v9, "audio"

    invoke-virtual {p0, v9}, Lcom/android/settings/DockSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 219
    .local v0, "audioManager":Landroid/media/AudioManager;
    const-string v9, "audioParam;outDevice"

    invoke-virtual {v0, v9}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 220
    .local v5, "path":Ljava/lang/String;
    const/4 v2, 0x0

    .line 221
    .local v2, "isHDMI":Z
    if-eqz v5, :cond_0

    const-string v9, ""

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 226
    :cond_0
    :goto_7
    const-string v9, "DockSettings"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "isHDMI: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9, v12}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    if-eqz v2, :cond_f

    .line 229
    iget-object v9, p0, Lcom/android/settings/DockSettings;->mAudioOutput:Landroid/preference/ListPreference;

    invoke-virtual {v9}, Landroid/preference/ListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v9

    if-eqz v9, :cond_1

    .line 230
    iget-object v9, p0, Lcom/android/settings/DockSettings;->mAudioOutput:Landroid/preference/ListPreference;

    invoke-virtual {v9}, Landroid/preference/ListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Dialog;->dismiss()V

    .line 231
    :cond_1
    iget-object v9, p0, Lcom/android/settings/DockSettings;->mAudioOutput:Landroid/preference/ListPreference;

    invoke-virtual {v9, v11}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 232
    iget-object v9, p0, Lcom/android/settings/DockSettings;->mCradleEnable:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v9, v11}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 240
    :goto_8
    iget-object v9, p0, Lcom/android/settings/DockSettings;->mCoverNote:Landroid/preference/CheckBoxPreference;

    if-eqz v9, :cond_2

    .line 241
    const-string v9, "cover_note"

    invoke-static {v6, v9, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-nez v9, :cond_10

    move v8, v11

    .line 242
    .local v8, "value":Z
    :goto_9
    iget-object v9, p0, Lcom/android/settings/DockSettings;->mCoverNote:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v9, v8}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 244
    .end local v8    # "value":Z
    :cond_2
    iget-object v9, p0, Lcom/android/settings/DockSettings;->mBookCoverAutomaticUnlock:Landroid/preference/CheckBoxPreference;

    if-eqz v9, :cond_3

    .line 246
    iget-object v9, p0, Lcom/android/settings/DockSettings;->mBookCoverAutomaticUnlock:Landroid/preference/CheckBoxPreference;

    const-string v12, "automatic_unlock"

    invoke-static {v6, v12, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    if-ne v12, v10, :cond_11

    :goto_a
    invoke-virtual {v9, v10}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 248
    :cond_3
    iget-object v9, p0, Lcom/android/settings/DockSettings;->mCoverNoteWeatherUnit:Landroid/preference/ListPreference;

    if-eqz v9, :cond_4

    .line 249
    const-string v9, "cover_note_weather_unit"

    invoke-static {v6, v9, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    .line 250
    .local v8, "value":I
    iget-object v9, p0, Lcom/android/settings/DockSettings;->mCoverNoteWeatherUnit:Landroid/preference/ListPreference;

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 251
    iget-object v9, p0, Lcom/android/settings/DockSettings;->mCoverNoteWeatherUnit:Landroid/preference/ListPreference;

    iget-object v10, p0, Lcom/android/settings/DockSettings;->mCoverNoteWeatherUnit:Landroid/preference/ListPreference;

    invoke-virtual {v10}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 255
    .end local v8    # "value":I
    :cond_4
    iput-boolean v7, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    .line 256
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->openSearchDetailMenu()V

    .line 258
    return-void

    .end local v0    # "audioManager":Landroid/media/AudioManager;
    .end local v2    # "isHDMI":Z
    .end local v3    # "mHdmiValue":I
    .end local v4    # "mUltrasonicRangeValue":I
    .end local v5    # "path":Ljava/lang/String;
    :cond_5
    move v9, v11

    .line 192
    goto/16 :goto_0

    :cond_6
    move v9, v11

    .line 193
    goto/16 :goto_1

    .line 199
    :cond_7
    iget-object v12, p0, Lcom/android/settings/DockSettings;->mDeskHomeScreen:Landroid/preference/CheckBoxPreference;

    const-string v9, "desk_home_screen_display"

    invoke-static {v6, v9, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-ne v9, v10, :cond_8

    move v9, v10

    :goto_b
    invoke-virtual {v12, v9}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_2

    :cond_8
    move v9, v11

    goto :goto_b

    :cond_9
    move v9, v11

    .line 201
    goto/16 :goto_3

    :cond_a
    move v9, v11

    .line 202
    goto/16 :goto_4

    :cond_b
    move v9, v11

    .line 203
    goto/16 :goto_5

    .restart local v3    # "mHdmiValue":I
    .restart local v4    # "mUltrasonicRangeValue":I
    :cond_c
    move v9, v11

    .line 215
    goto/16 :goto_6

    .line 224
    .restart local v0    # "audioManager":Landroid/media/AudioManager;
    .restart local v2    # "isHDMI":Z
    .restart local v5    # "path":Ljava/lang/String;
    :cond_d
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    and-int/lit16 v9, v9, 0x400

    if-nez v9, :cond_e

    move v2, v11

    :goto_c
    goto/16 :goto_7

    :cond_e
    move v2, v10

    goto :goto_c

    .line 234
    :cond_f
    iget-object v9, p0, Lcom/android/settings/DockSettings;->mAudioOutput:Landroid/preference/ListPreference;

    invoke-virtual {v9, v10}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 235
    iget-object v9, p0, Lcom/android/settings/DockSettings;->mCradleEnable:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v9, v10}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto/16 :goto_8

    :cond_10
    move v8, v10

    .line 241
    goto :goto_9

    :cond_11
    move v10, v11

    .line 246
    goto :goto_a
.end method

.method public showOudioOutputNotiDialog()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 857
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 859
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    iget-object v1, p0, Lcom/android/settings/DockSettings;->mshowOudioOutputNotiDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    .line 860
    iget-object v1, p0, Lcom/android/settings/DockSettings;->mshowOudioOutputNotiDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 861
    iput-object v2, p0, Lcom/android/settings/DockSettings;->mshowOudioOutputNotiDialog:Landroid/app/AlertDialog;

    .line 872
    :cond_0
    const v1, 0x7f0a0de2

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 873
    const v1, 0x7f0a0ddf

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 874
    const v1, 0x7f0a08f4

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 876
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/DockSettings;->mshowOudioOutputNotiDialog:Landroid/app/AlertDialog;

    .line 877
    iget-object v1, p0, Lcom/android/settings/DockSettings;->mshowOudioOutputNotiDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 879
    return-void
.end method
