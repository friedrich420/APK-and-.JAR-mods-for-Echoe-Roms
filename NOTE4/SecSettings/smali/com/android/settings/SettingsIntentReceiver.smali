.class public Lcom/android/settings/SettingsIntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SettingsIntentReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/SettingsIntentReceiver$AssistiveLightIntentReceiver;,
        Lcom/android/settings/SettingsIntentReceiver$UPlusSettingsIntentReceiver;
    }
.end annotation


# static fields
.field private static cfmsService:Landroid/os/CustomFrequencyManager;

.field private static rsm:Lcom/samsung/android/service/reactive/ReactiveServiceManager;

.field private static final sStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;


# instance fields
.field private final activeKeyID:I

.field private mContext:Landroid/content/Context;

.field mSalesCode:Ljava/lang/String;

.field private final warningNotificationID:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 128
    new-instance v0, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v1, 0x3a

    invoke-direct {v0, v1}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    sput-object v0, Lcom/android/settings/SettingsIntentReceiver;->sStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 118
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 135
    const v0, 0x7f0205fc

    iput v0, p0, Lcom/android/settings/SettingsIntentReceiver;->warningNotificationID:I

    .line 136
    const v0, 0x7f0205f7

    iput v0, p0, Lcom/android/settings/SettingsIntentReceiver;->activeKeyID:I

    .line 2452
    return-void
.end method

.method private EnablingDrivingMode(I)V
    .locals 24
    .param p1, "state"    # I

    .prologue
    .line 1798
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    const-string v2, "user"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/os/UserManager;

    .line 1799
    .local v21, "mUm":Landroid/os/UserManager;
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    move-object/from16 v0, v21

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v22

    .line 1800
    .local v22, "mUser":Landroid/content/pm/UserInfo;
    const/16 v20, 0x0

    .line 1801
    .local v20, "mCount":I
    const/4 v7, 0x0

    .line 1802
    .local v7, "CarBT":Z
    const/16 v19, 0x0

    .line 1803
    .local v19, "mBluetoothAdapter":Landroid/bluetooth/BluetoothAdapter;
    const-string v9, "voice_input_control"

    .line 1804
    .local v9, "KEY_VOICE_INPUT_CONTROL":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v9, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v17

    .line 1805
    .local v17, "keyVC":I
    const/4 v1, 0x1

    move/from16 v0, p1

    if-ne v0, v1, :cond_9

    .line 1806
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    const-string v2, "DrivingmodeSettings"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v23

    .line 1807
    .local v23, "pref":Landroid/content/SharedPreferences;
    const-string v1, "Entering"

    const-string v2, ""

    move-object/from16 v0, v23

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1808
    .local v8, "Enterinput":Ljava/lang/String;
    const-string v1, "0"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, ""

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1809
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "content://com.samsung.android.internal.intelligence.useranalysis/place"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 1810
    .local v10, "c":Landroid/database/Cursor;
    if-eqz v10, :cond_3

    .line 1811
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v20

    .line 1812
    const-string v1, "SettingsIntentReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "db count : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1814
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1816
    :cond_1
    const-string v1, "SettingsIntentReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "location_type : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "location_type"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1817
    const-string v1, "SettingsIntentReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "name : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "name"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1819
    const-string v1, "name"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Car"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, "location_type"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_8

    .line 1820
    const/4 v7, 0x1

    .line 1825
    :cond_2
    :goto_0
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1828
    :cond_3
    const-string v12, "0"

    .line 1829
    .local v12, "flagBT":Ljava/lang/String;
    const-string v13, "0"

    .line 1830
    .local v13, "flagGPS":Ljava/lang/String;
    const-string v14, "0"

    .line 1831
    .local v14, "flagVC":Ljava/lang/String;
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v19

    .line 1832
    if-eqz v19, :cond_4

    .line 1833
    invoke-virtual/range {v19 .. v19}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_4

    const/4 v1, 0x1

    if-ne v7, v1, :cond_4

    .line 1834
    const-string v12, "1"

    .line 1835
    invoke-virtual/range {v19 .. v19}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    .line 1838
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "gps"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v15

    .line 1839
    .local v15, "gpsEnabled":Z
    if-nez v15, :cond_5

    if-eqz v22, :cond_5

    invoke-virtual/range {v22 .. v22}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v1

    if-nez v1, :cond_5

    .line 1840
    const-string v13, "1"

    .line 1841
    new-instance v16, Landroid/content/Intent;

    const-string v1, "android.settings.GPS_CHANGED"

    move-object/from16 v0, v16

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1842
    .local v16, "i":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1843
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "gps"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 1846
    .end local v16    # "i":Landroid/content/Intent;
    :cond_5
    if-nez v17, :cond_6

    .line 1848
    new-instance v18, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;

    invoke-direct/range {v18 .. v18}, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;-><init>()V

    .line 1849
    .local v18, "mBargeInRecognizer":Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;
    if-eqz v18, :cond_6

    .line 1850
    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->isBargeInEnabled()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1851
    const-string v14, "1"

    .line 1852
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v9, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1857
    .end local v18    # "mBargeInRecognizer":Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;
    :cond_6
    invoke-interface/range {v23 .. v23}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v11

    .line 1858
    .local v11, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "Entering"

    const-string v2, "1"

    invoke-interface {v11, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1859
    const-string v1, "BT"

    invoke-interface {v11, v1, v12}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1860
    const-string v1, "GPS"

    invoke-interface {v11, v1, v13}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1861
    const-string v1, "VC"

    invoke-interface {v11, v1, v14}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1862
    invoke-interface {v11}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1904
    .end local v10    # "c":Landroid/database/Cursor;
    .end local v11    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v12    # "flagBT":Ljava/lang/String;
    .end local v13    # "flagGPS":Ljava/lang/String;
    .end local v14    # "flagVC":Ljava/lang/String;
    .end local v15    # "gpsEnabled":Z
    :cond_7
    :goto_1
    return-void

    .line 1823
    .restart local v10    # "c":Landroid/database/Cursor;
    :cond_8
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_0

    .line 1865
    .end local v8    # "Enterinput":Ljava/lang/String;
    .end local v10    # "c":Landroid/database/Cursor;
    .end local v23    # "pref":Landroid/content/SharedPreferences;
    :cond_9
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    const-string v2, "DrivingmodeSettings"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v23

    .line 1866
    .restart local v23    # "pref":Landroid/content/SharedPreferences;
    const-string v1, "Entering"

    const-string v2, ""

    move-object/from16 v0, v23

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1867
    .restart local v8    # "Enterinput":Ljava/lang/String;
    const-string v1, "1"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1868
    const-string v1, "BT"

    const-string v2, ""

    move-object/from16 v0, v23

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1869
    .restart local v12    # "flagBT":Ljava/lang/String;
    const-string v1, "GPS"

    const-string v2, ""

    move-object/from16 v0, v23

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1870
    .restart local v13    # "flagGPS":Ljava/lang/String;
    const-string v1, "VC"

    const-string v2, ""

    move-object/from16 v0, v23

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1872
    .restart local v14    # "flagVC":Ljava/lang/String;
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v19

    .line 1873
    if-eqz v19, :cond_a

    .line 1874
    invoke-virtual/range {v19 .. v19}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v1

    const/16 v2, 0xc

    if-ne v1, v2, :cond_a

    const-string v1, "1"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1875
    invoke-virtual/range {v19 .. v19}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    .line 1878
    :cond_a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "gps"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v15

    .line 1879
    .restart local v15    # "gpsEnabled":Z
    if-eqz v15, :cond_b

    const-string v1, "1"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1880
    new-instance v16, Landroid/content/Intent;

    const-string v1, "android.settings.GPS_CHANGED"

    move-object/from16 v0, v16

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1881
    .restart local v16    # "i":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1882
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "gps"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 1885
    .end local v16    # "i":Landroid/content/Intent;
    :cond_b
    const/4 v1, 0x1

    move/from16 v0, v17

    if-ne v0, v1, :cond_c

    const-string v1, "1"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1886
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v9, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1889
    :cond_c
    invoke-interface/range {v23 .. v23}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v11

    .line 1890
    .restart local v11    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "Entering"

    const-string v2, "0"

    invoke-interface {v11, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1891
    const-string v1, "BT"

    const-string v2, "0"

    invoke-interface {v11, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1892
    const-string v1, "GPS"

    const-string v2, "0"

    invoke-interface {v11, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1893
    const-string v1, "VC"

    const-string v2, "0"

    invoke-interface {v11, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1894
    invoke-interface {v11}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_1

    .line 1896
    .end local v11    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v12    # "flagBT":Ljava/lang/String;
    .end local v13    # "flagGPS":Ljava/lang/String;
    .end local v14    # "flagVC":Ljava/lang/String;
    .end local v15    # "gpsEnabled":Z
    :cond_d
    invoke-interface/range {v23 .. v23}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v11

    .line 1897
    .restart local v11    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "Entering"

    const-string v2, "0"

    invoke-interface {v11, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1898
    const-string v1, "BT"

    const-string v2, "0"

    invoke-interface {v11, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1899
    const-string v1, "GPS"

    const-string v2, "0"

    invoke-interface {v11, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1900
    const-string v1, "VC"

    const-string v2, "0"

    invoke-interface {v11, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1901
    invoke-interface {v11}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_1
.end method

.method private EnablingDrivingModeAirCallAccept(I)V
    .locals 13
    .param p1, "state"    # I

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 1722
    iget-object v8, p0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "driving_mode_air_call_accept"

    invoke-static {v8, v9, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1723
    .local v0, "AirCallAccept":I
    const-string v8, "SettingsIntentReceiver"

    const-string v9, "EnablingDrivingModeAirCallAccept"

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1724
    const-string v8, "SettingsIntentReceiver"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "AirCallAccept : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1725
    if-ne v0, v12, :cond_2

    .line 1726
    if-ne p1, v12, :cond_3

    .line 1727
    const-string v8, "SettingsIntentReceiver"

    const-string v9, "state : 1"

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1728
    iget-object v8, p0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    const-string v9, "DrivingmodeAirCallAccept"

    invoke-virtual {v8, v9, v11}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 1729
    .local v7, "pref":Landroid/content/SharedPreferences;
    const-string v8, "Entering"

    const-string v9, ""

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1730
    .local v3, "Enterinput":Ljava/lang/String;
    const-string v8, "0"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1731
    iget-object v8, p0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "air_motion_call_accept"

    invoke-static {v8, v9, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 1732
    .local v1, "AirGestureCallAccept":I
    iget-object v8, p0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "air_motion_engine"

    invoke-static {v8, v9, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 1734
    .local v2, "AirGestureMaster":I
    const-string v5, "0"

    .line 1735
    .local v5, "flagCall":Ljava/lang/String;
    const-string v6, "0"

    .line 1737
    .local v6, "flagMaster":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 1738
    const-string v8, "SettingsIntentReceiver"

    const-string v9, "putInt ARC_MOTION_CALL_ACCEPT = 1"

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1739
    iget-object v8, p0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "air_motion_call_accept"

    invoke-static {v8, v9, v12}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1740
    const-string v5, "1"

    .line 1743
    :cond_0
    if-nez v2, :cond_1

    .line 1744
    const-string v8, "SettingsIntentReceiver"

    const-string v9, "putInt MASTER_ARC_MOTION = 1"

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1745
    iget-object v8, p0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "air_motion_engine"

    invoke-static {v8, v9, v12}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1746
    const-string v6, "1"

    .line 1749
    :cond_1
    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 1750
    .local v4, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v8, "Entering"

    const-string v9, "1"

    invoke-interface {v4, v8, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1751
    const-string v8, "AIRCALL"

    invoke-interface {v4, v8, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1752
    const-string v8, "MASTER"

    invoke-interface {v4, v8, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1753
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1795
    .end local v1    # "AirGestureCallAccept":I
    .end local v2    # "AirGestureMaster":I
    .end local v3    # "Enterinput":Ljava/lang/String;
    .end local v4    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v5    # "flagCall":Ljava/lang/String;
    .end local v6    # "flagMaster":Ljava/lang/String;
    .end local v7    # "pref":Landroid/content/SharedPreferences;
    :cond_2
    :goto_0
    return-void

    .line 1756
    :cond_3
    const-string v8, "SettingsIntentReceiver"

    const-string v9, "state : 0"

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1757
    iget-object v8, p0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    const-string v9, "DrivingmodeAirCallAccept"

    invoke-virtual {v8, v9, v11}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 1758
    .restart local v7    # "pref":Landroid/content/SharedPreferences;
    const-string v8, "Entering"

    const-string v9, ""

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1759
    .restart local v3    # "Enterinput":Ljava/lang/String;
    const-string v8, "SettingsIntentReceiver"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Enterinput : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1760
    const-string v8, "1"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 1762
    const-string v8, "AIRCALL"

    const-string v9, ""

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1763
    .restart local v5    # "flagCall":Ljava/lang/String;
    const-string v8, "MASTER"

    const-string v9, ""

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1765
    .restart local v6    # "flagMaster":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "air_motion_call_accept"

    invoke-static {v8, v9, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 1766
    .restart local v1    # "AirGestureCallAccept":I
    iget-object v8, p0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "air_motion_engine"

    invoke-static {v8, v9, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 1768
    .restart local v2    # "AirGestureMaster":I
    const-string v8, "SettingsIntentReceiver"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "flagCall : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1769
    const-string v8, "SettingsIntentReceiver"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "flagMaster : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1771
    if-ne v1, v12, :cond_4

    const-string v8, "1"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1772
    const-string v8, "SettingsIntentReceiver"

    const-string v9, "restore ARC_MOTION_CALL_ACCEPT"

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1773
    iget-object v8, p0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "air_motion_call_accept"

    invoke-static {v8, v9, v11}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1776
    :cond_4
    if-ne v2, v12, :cond_5

    const-string v8, "1"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1777
    const-string v8, "SettingsIntentReceiver"

    const-string v9, "restore MASTER_ARC_MOTION"

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1778
    iget-object v8, p0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "air_motion_engine"

    invoke-static {v8, v9, v11}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1781
    :cond_5
    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 1782
    .restart local v4    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string v8, "Entering"

    const-string v9, "0"

    invoke-interface {v4, v8, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1783
    const-string v8, "AIRCALL"

    const-string v9, "0"

    invoke-interface {v4, v8, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1784
    const-string v8, "MASTER"

    const-string v9, "0"

    invoke-interface {v4, v8, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1785
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    .line 1787
    .end local v1    # "AirGestureCallAccept":I
    .end local v2    # "AirGestureMaster":I
    .end local v4    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v5    # "flagCall":Ljava/lang/String;
    .end local v6    # "flagMaster":Ljava/lang/String;
    :cond_6
    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 1788
    .restart local v4    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string v8, "Entering"

    const-string v9, "0"

    invoke-interface {v4, v8, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1789
    const-string v8, "AIRCALL"

    const-string v9, "0"

    invoke-interface {v4, v8, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1790
    const-string v8, "MASTER"

    const-string v9, "0"

    invoke-interface {v4, v8, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1791
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0
.end method

.method private GetMTStatus(Ljava/lang/String;)Z
    .locals 7
    .param p1, "mtData"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2143
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v5, ";"

    invoke-direct {v1, p1, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2144
    .local v1, "str":Ljava/util/StringTokenizer;
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v5

    new-array v2, v5, [Ljava/lang/String;

    .line 2145
    .local v2, "tokens":[Ljava/lang/String;
    const/4 v0, 0x0

    .line 2146
    .local v0, "i":I
    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2147
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v0

    .line 2148
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2151
    :cond_0
    const/4 v5, 0x2

    if-ge v0, v5, :cond_2

    .line 2159
    :cond_1
    :goto_1
    return v3

    .line 2155
    :cond_2
    aget-object v5, v2, v4

    const-string v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_1

    move v3, v4

    .line 2156
    goto :goto_1
.end method

.method private GetPhPWD(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "mtData"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 2122
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v4, ";"

    invoke-direct {v1, p1, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2123
    .local v1, "str":Ljava/util/StringTokenizer;
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v4

    new-array v2, v4, [Ljava/lang/String;

    .line 2124
    .local v2, "tokens":[Ljava/lang/String;
    const/4 v0, 0x0

    .line 2125
    .local v0, "i":I
    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2126
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v0

    .line 2127
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2130
    :cond_0
    const/4 v4, 0x1

    if-ge v0, v4, :cond_2

    .line 2139
    :cond_1
    :goto_1
    return-object v3

    .line 2134
    :cond_2
    aget-object v4, v2, v5

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-gt v4, v6, :cond_1

    aget-object v4, v2, v5

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v4, v6, :cond_1

    .line 2139
    aget-object v3, v2, v5

    goto :goto_1
.end method

.method private SetMyProfileTextSize(Landroid/content/Context;)V
    .locals 14
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 2226
    const-string v11, "layout_inflater"

    invoke-virtual {p1, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 2227
    .local v3, "inflater":Landroid/view/LayoutInflater;
    const v11, 0x7f04013f

    const/4 v12, 0x0

    invoke-virtual {v3, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    .line 2228
    .local v10, "view":Landroid/view/View;
    const v11, 0x7f10027a

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/settings/myprofile/EllipsisEditText;

    .line 2230
    .local v6, "mTvPreviewText":Lcom/android/settings/myprofile/EllipsisEditText;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "my_profile_information"

    invoke-static {v11, v12}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2231
    .local v7, "mypofile_string":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 2275
    :goto_0
    return-void

    .line 2235
    :cond_0
    const/4 v8, 0x0

    .line 2236
    .local v8, "otherContext":Landroid/content/Context;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "my_profile_font_package"

    invoke-static {v11, v12}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2237
    .local v5, "mFontStylePackageName":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "my_profile_font_filename"

    invoke-static {v11, v12}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    .line 2239
    .local v4, "mFontFileNames":Ljava/lang/String;
    const/4 v11, 0x2

    :try_start_1
    invoke-virtual {p1, v5, v11}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v8

    .line 2244
    :goto_1
    if-eqz v8, :cond_1

    .line 2245
    :try_start_2
    invoke-virtual {v8}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    .line 2246
    .local v1, "am":Landroid/content/res/AssetManager;
    invoke-static {v1, v4}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    .line 2247
    .local v2, "fontTypeface":Landroid/graphics/Typeface;
    invoke-virtual {v6, v2}, Lcom/android/settings/myprofile/EllipsisEditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 2248
    const/4 v2, 0x0

    .line 2249
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 2250
    invoke-static {}, Ljava/lang/System;->runFinalization()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 2257
    .end local v1    # "am":Landroid/content/res/AssetManager;
    .end local v2    # "fontTypeface":Landroid/graphics/Typeface;
    .end local v4    # "mFontFileNames":Ljava/lang/String;
    .end local v5    # "mFontStylePackageName":Ljava/lang/String;
    :cond_1
    :goto_2
    const-string v11, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    const-string v11, "Personal Banner"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 2258
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0a1387

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 2265
    :cond_2
    :goto_3
    const/4 v11, 0x1

    new-array v0, v11, [Landroid/text/InputFilter;

    .line 2266
    .local v0, "FilterArray":[Landroid/text/InputFilter;
    iget-object v11, p0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0e0012

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    .line 2267
    .local v9, "profileMaxCharLimit":I
    const/4 v11, 0x0

    new-instance v12, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v12, v9}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v12, v0, v11

    .line 2268
    invoke-virtual {v6, v0}, Lcom/android/settings/myprofile/EllipsisEditText;->setFilters([Landroid/text/InputFilter;)V

    .line 2269
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v11

    iget v11, v11, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {v6, v11}, Lcom/android/settings/myprofile/EllipsisEditText;->setScaledDensity(F)V

    .line 2271
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0f0196

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    invoke-virtual {v6, v11}, Lcom/android/settings/myprofile/EllipsisEditText;->setMaxTextSize(F)V

    .line 2272
    invoke-virtual {v6, v7}, Lcom/android/settings/myprofile/EllipsisEditText;->setText(Ljava/lang/CharSequence;)V

    .line 2273
    invoke-virtual {v6}, Lcom/android/settings/myprofile/EllipsisEditText;->fontChange()V

    .line 2274
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "my_profile_text_size"

    invoke-virtual {v6}, Lcom/android/settings/myprofile/EllipsisEditText;->getTextSize()F

    move-result v13

    invoke-static {v13}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 2259
    .end local v0    # "FilterArray":[Landroid/text/InputFilter;
    .end local v9    # "profileMaxCharLimit":I
    :cond_3
    const-string v11, "Life companion"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 2260
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0a1386

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_3

    .line 2261
    :cond_4
    const-string v11, "SEC_FLOATING_FEATURE_SETTINGS_SLOGAN_PERSONAL_MESSAGE"

    invoke-static {v11}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    const-string v11, "Personal message"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 2262
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0a137c

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_3

    .line 2240
    .restart local v4    # "mFontFileNames":Ljava/lang/String;
    .restart local v5    # "mFontStylePackageName":Ljava/lang/String;
    :catch_0
    move-exception v11

    goto/16 :goto_1

    .line 2252
    .end local v4    # "mFontFileNames":Ljava/lang/String;
    .end local v5    # "mFontStylePackageName":Ljava/lang/String;
    :catch_1
    move-exception v11

    goto/16 :goto_2
.end method

.method static synthetic access$000(Lcom/android/settings/SettingsIntentReceiver;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/SettingsIntentReceiver;

    .prologue
    .line 118
    invoke-direct {p0}, Lcom/android/settings/SettingsIntentReceiver;->makeSecurityWarningNotificaiton()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/SettingsIntentReceiver;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/SettingsIntentReceiver;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/SettingsIntentReceiver;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/SettingsIntentReceiver;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 118
    invoke-direct {p0, p1}, Lcom/android/settings/SettingsIntentReceiver;->makeActiveKeyNotification(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/SettingsIntentReceiver;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/SettingsIntentReceiver;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 118
    invoke-direct {p0, p1}, Lcom/android/settings/SettingsIntentReceiver;->sendDrivingmodeNotification(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/SettingsIntentReceiver;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/SettingsIntentReceiver;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 118
    invoke-direct {p0, p1}, Lcom/android/settings/SettingsIntentReceiver;->SetMyProfileTextSize(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/SettingsIntentReceiver;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/SettingsIntentReceiver;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 118
    invoke-direct {p0, p1}, Lcom/android/settings/SettingsIntentReceiver;->setHandwritingLanguage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/SettingsIntentReceiver;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/SettingsIntentReceiver;

    .prologue
    .line 118
    invoke-direct {p0}, Lcom/android/settings/SettingsIntentReceiver;->isEnabledScreenReaderService()Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/settings/SettingsIntentReceiver;Landroid/content/Context;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/SettingsIntentReceiver;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Z

    .prologue
    .line 118
    invoke-direct {p0, p1, p2}, Lcom/android/settings/SettingsIntentReceiver;->sendTalkbackNotification(Landroid/content/Context;Z)V

    return-void
.end method

.method static synthetic access$800()Landroid/os/CustomFrequencyManager;
    .locals 1

    .prologue
    .line 118
    sget-object v0, Lcom/android/settings/SettingsIntentReceiver;->cfmsService:Landroid/os/CustomFrequencyManager;

    return-object v0
.end method

.method static synthetic access$802(Landroid/os/CustomFrequencyManager;)Landroid/os/CustomFrequencyManager;
    .locals 0
    .param p0, "x0"    # Landroid/os/CustomFrequencyManager;

    .prologue
    .line 118
    sput-object p0, Lcom/android/settings/SettingsIntentReceiver;->cfmsService:Landroid/os/CustomFrequencyManager;

    return-object p0
.end method

.method private checkReactivationLock(Landroid/content/Context;)Z
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 2514
    const/4 v1, 0x0

    .line 2515
    .local v1, "ret":Z
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->isSupportLMM(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2516
    sget-object v3, Lcom/android/settings/SettingsIntentReceiver;->rsm:Lcom/samsung/android/service/reactive/ReactiveServiceManager;

    invoke-virtual {v3, v2}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->getFlag(I)I

    move-result v0

    .line 2517
    .local v0, "lmmFlag":I
    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    .line 2518
    const/4 v1, 0x1

    .line 2523
    const-string v2, "SettingsIntentReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LMM[getReqiredAuthFlag] in Check= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "lmmFlag":I
    :cond_0
    move v2, v1

    .line 2526
    :cond_1
    return v2
.end method

.method private checkSmartDockType()Z
    .locals 11

    .prologue
    const/16 v8, 0x400

    const/4 v7, 0x0

    .line 2012
    const-string v0, "sys/class/sec/switch/adc"

    .line 2013
    .local v0, "SmartDockName":Ljava/lang/String;
    new-array v1, v8, [C

    .line 2014
    .local v1, "buffer":[C
    const/4 v3, 0x0

    .line 2015
    .local v3, "file":Ljava/io/FileReader;
    const/4 v5, 0x0

    .line 2017
    .local v5, "fileString":Ljava/lang/String;
    :try_start_0
    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2018
    .end local v3    # "file":Ljava/io/FileReader;
    .local v4, "file":Ljava/io/FileReader;
    const/4 v8, 0x0

    const/16 v9, 0x400

    :try_start_1
    invoke-virtual {v4, v1, v8, v9}, Ljava/io/FileReader;->read([CII)I

    move-result v6

    .line 2019
    .local v6, "len":I
    new-instance v8, Ljava/lang/String;

    const/4 v9, 0x0

    invoke-direct {v8, v1, v9, v6}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 2020
    const-string v8, "SettingsIntentReceiver"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "switch/adc :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2021
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2029
    if-eqz v4, :cond_0

    .line 2030
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    move-object v3, v4

    .line 2036
    .end local v4    # "file":Ljava/io/FileReader;
    .end local v6    # "len":I
    .restart local v3    # "file":Ljava/io/FileReader;
    :cond_1
    :goto_0
    const-string v8, "SettingsIntentReceiver"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Docktype :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2037
    const-string v8, "10"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 2038
    const/4 v7, 0x1

    .line 2040
    :cond_2
    return v7

    .line 2032
    .end local v3    # "file":Ljava/io/FileReader;
    .restart local v4    # "file":Ljava/io/FileReader;
    .restart local v6    # "len":I
    :catch_0
    move-exception v2

    .line 2033
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    move-object v3, v4

    .line 2035
    .end local v4    # "file":Ljava/io/FileReader;
    .restart local v3    # "file":Ljava/io/FileReader;
    goto :goto_0

    .line 2022
    .end local v2    # "e":Ljava/io/IOException;
    .end local v6    # "len":I
    :catch_1
    move-exception v2

    .line 2023
    .local v2, "e":Ljava/io/FileNotFoundException;
    :goto_1
    :try_start_3
    const-string v8, "SettingsIntentReceiver"

    const-string v9, "does not readSmartDock! This Kernel does not have wired headset support"

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2029
    if-eqz v3, :cond_1

    .line 2030
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 2032
    :catch_2
    move-exception v2

    .line 2033
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 2024
    .end local v2    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v2

    .line 2025
    .restart local v2    # "e":Ljava/io/IOException;
    :goto_2
    :try_start_5
    const-string v8, "SettingsIntentReceiver"

    const-string v9, "Fail to read SmartDocktype"

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2026
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 2029
    if-eqz v3, :cond_1

    .line 2030
    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_0

    .line 2032
    :catch_4
    move-exception v2

    .line 2033
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 2028
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    .line 2029
    :goto_3
    if-eqz v3, :cond_3

    .line 2030
    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 2034
    :cond_3
    :goto_4
    throw v7

    .line 2032
    :catch_5
    move-exception v2

    .line 2033
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 2028
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "file":Ljava/io/FileReader;
    .restart local v4    # "file":Ljava/io/FileReader;
    :catchall_1
    move-exception v7

    move-object v3, v4

    .end local v4    # "file":Ljava/io/FileReader;
    .restart local v3    # "file":Ljava/io/FileReader;
    goto :goto_3

    .line 2024
    .end local v3    # "file":Ljava/io/FileReader;
    .restart local v4    # "file":Ljava/io/FileReader;
    :catch_6
    move-exception v2

    move-object v3, v4

    .end local v4    # "file":Ljava/io/FileReader;
    .restart local v3    # "file":Ljava/io/FileReader;
    goto :goto_2

    .line 2022
    .end local v3    # "file":Ljava/io/FileReader;
    .restart local v4    # "file":Ljava/io/FileReader;
    :catch_7
    move-exception v2

    move-object v3, v4

    .end local v4    # "file":Ljava/io/FileReader;
    .restart local v3    # "file":Ljava/io/FileReader;
    goto :goto_1
.end method

.method private checkVOLanguage(Ljava/lang/String;)Z
    .locals 5
    .param p1, "language"    # Ljava/lang/String;

    .prologue
    .line 2278
    const/4 v0, 0x0

    .line 2279
    .local v0, "bCheck":Z
    new-instance v2, Lcom/android/settings/handwritingsearch/RMHelper;

    iget-object v4, p0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    invoke-direct {v2, v4}, Lcom/android/settings/handwritingsearch/RMHelper;-><init>(Landroid/content/Context;)V

    .line 2280
    .local v2, "mHelper":Lcom/android/settings/handwritingsearch/RMHelper;
    invoke-virtual {v2}, Lcom/android/settings/handwritingsearch/RMHelper;->getLangList()[Ljava/lang/String;

    move-result-object v3

    .line 2282
    .local v3, "mLangList":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_0

    .line 2283
    aget-object v4, v3, v1

    if-eqz v4, :cond_1

    aget-object v4, v3, v1

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2284
    const/4 v0, 0x1

    .line 2288
    :cond_0
    return v0

    .line 2282
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static getSamsungAccountName(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 2496
    const-string v2, ""

    .line 2497
    .local v2, "rtn_val":Ljava/lang/String;
    const/4 v0, 0x0

    .line 2499
    .local v0, "FIRST_INDEX":I
    :try_start_0
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    .line 2500
    .local v1, "manager":Landroid/accounts/AccountManager;
    const-string v4, "com.osp.app.signin"

    invoke-virtual {v1, v4}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v3

    .line 2502
    .local v3, "samsungAccnts":[Landroid/accounts/Account;
    array-length v4, v3

    if-lez v4, :cond_0

    .line 2503
    const/4 v4, 0x0

    aget-object v4, v3, v4

    iget-object v2, v4, Landroid/accounts/Account;->name:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2509
    .end local v1    # "manager":Landroid/accounts/AccountManager;
    .end local v3    # "samsungAccnts":[Landroid/accounts/Account;
    :cond_0
    :goto_0
    return-object v2

    .line 2505
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method private isEnabledScreenReaderService()Z
    .locals 6

    .prologue
    .line 1989
    iget-object v4, p0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "enabled_accessibility_services"

    invoke-static {v4, v5}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1992
    .local v3, "enabledServicesSetting":Ljava/lang/String;
    if-nez v3, :cond_0

    .line 1993
    const-string v3, ""

    .line 1996
    :cond_0
    sget-object v0, Lcom/android/settings/SettingsIntentReceiver;->sStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    .line 1997
    .local v0, "colonSplitter":Landroid/text/TextUtils$SimpleStringSplitter;
    invoke-virtual {v0, v3}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 1999
    :cond_1
    invoke-virtual {v0}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2000
    invoke-virtual {v0}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v1

    .line 2001
    .local v1, "componentNameString":Ljava/lang/String;
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    .line 2002
    .local v2, "enabledService":Landroid/content/ComponentName;
    if-eqz v2, :cond_1

    .line 2003
    const-string v4, "com.google.android.marvin.talkback"

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "com.google.android.marvin.talkback/com.google.android.marvin.talkback.TalkBackService"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2005
    const/4 v4, 0x1

    .line 2008
    .end local v1    # "componentNameString":Ljava/lang/String;
    .end local v2    # "enabledService":Landroid/content/ComponentName;
    :goto_0
    return v4

    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private isPreffered(Ljava/lang/String;)Z
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2386
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2387
    .local v1, "intentList":Ljava/util/List;, "Ljava/util/List<Landroid/content/IntentFilter;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2388
    .local v0, "componentList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    iget-object v3, p0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 2389
    .local v2, "mPm":Landroid/content/pm/PackageManager;
    invoke-virtual {v2, v1, v0, p1}, Landroid/content/pm/PackageManager;->getPreferredActivities(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)I

    .line 2391
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private makeActiveKeyNotification(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 2199
    iget-object v1, p0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2223
    .local v0, "sharedPreferences":Landroid/content/SharedPreferences;
    return-void
.end method

.method private makeDMfile()V
    .locals 6

    .prologue
    .line 2073
    const/4 v2, 0x0

    .line 2075
    .local v2, "raf":Ljava/io/RandomAccessFile;
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/system/samsungaccount.txt"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2077
    .local v0, "dmFileName":Ljava/lang/String;
    new-instance v3, Ljava/io/RandomAccessFile;

    const-string v4, "rw"

    invoke-direct {v3, v0, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2084
    .end local v2    # "raf":Ljava/io/RandomAccessFile;
    .local v3, "raf":Ljava/io/RandomAccessFile;
    if-eqz v3, :cond_2

    .line 2087
    :try_start_1
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v2, v3

    .line 2093
    .end local v0    # "dmFileName":Ljava/lang/String;
    .end local v3    # "raf":Ljava/io/RandomAccessFile;
    .restart local v2    # "raf":Ljava/io/RandomAccessFile;
    :cond_0
    :goto_0
    return-void

    .line 2088
    .end local v2    # "raf":Ljava/io/RandomAccessFile;
    .restart local v0    # "dmFileName":Ljava/lang/String;
    .restart local v3    # "raf":Ljava/io/RandomAccessFile;
    :catch_0
    move-exception v1

    .line 2089
    .local v1, "ex1":Ljava/io/IOException;
    const-string v4, "SettingsIntentReceiver"

    invoke-static {v4, v1}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v2, v3

    .line 2090
    .end local v3    # "raf":Ljava/io/RandomAccessFile;
    .restart local v2    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_0

    .line 2078
    .end local v0    # "dmFileName":Ljava/lang/String;
    .end local v1    # "ex1":Ljava/io/IOException;
    :catch_1
    move-exception v4

    .line 2084
    if-eqz v2, :cond_0

    .line 2087
    :try_start_2
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 2088
    :catch_2
    move-exception v1

    .line 2089
    .restart local v1    # "ex1":Ljava/io/IOException;
    const-string v4, "SettingsIntentReceiver"

    invoke-static {v4, v1}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2080
    .end local v1    # "ex1":Ljava/io/IOException;
    :catch_3
    move-exception v4

    .line 2084
    if-eqz v2, :cond_0

    .line 2087
    :try_start_3
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    goto :goto_0

    .line 2088
    :catch_4
    move-exception v1

    .line 2089
    .restart local v1    # "ex1":Ljava/io/IOException;
    const-string v4, "SettingsIntentReceiver"

    invoke-static {v4, v1}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2083
    .end local v1    # "ex1":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 2084
    if-eqz v2, :cond_1

    .line 2087
    :try_start_4
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    .line 2090
    :cond_1
    :goto_1
    throw v4

    .line 2088
    :catch_5
    move-exception v1

    .line 2089
    .restart local v1    # "ex1":Ljava/io/IOException;
    const-string v5, "SettingsIntentReceiver"

    invoke-static {v5, v1}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .end local v1    # "ex1":Ljava/io/IOException;
    .end local v2    # "raf":Ljava/io/RandomAccessFile;
    .restart local v0    # "dmFileName":Ljava/lang/String;
    .restart local v3    # "raf":Ljava/io/RandomAccessFile;
    :cond_2
    move-object v2, v3

    .end local v3    # "raf":Ljava/io/RandomAccessFile;
    .restart local v2    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_0
.end method

.method private makeSecurityWarningNotificaiton()V
    .locals 12

    .prologue
    const v11, 0x7f0a19e5

    const v10, 0x7f0205fc

    const/4 v9, 0x0

    .line 2164
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v7

    const-string v8, "CscFeature_Common_UseChameleon"

    invoke-virtual {v7, v8}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "ATT"

    iget-object v8, p0, Lcom/android/settings/SettingsIntentReceiver;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "VZW"

    iget-object v8, p0, Lcom/android/settings/SettingsIntentReceiver;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "SPR"

    iget-object v8, p0, Lcom/android/settings/SettingsIntentReceiver;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "TMB"

    iget-object v8, p0, Lcom/android/settings/SettingsIntentReceiver;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "USC"

    iget-object v8, p0, Lcom/android/settings/SettingsIntentReceiver;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 2166
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    if-eqz v7, :cond_2

    .line 2195
    :cond_1
    :goto_0
    return-void

    .line 2168
    :cond_2
    iget-object v7, p0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    invoke-static {v7}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 2169
    .local v4, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string v7, "pref_security_warning"

    invoke-interface {v4, v7, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-nez v7, :cond_1

    .line 2171
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 2172
    .local v6, "warningIntent":Landroid/content/Intent;
    const/high16 v7, 0x10000000

    invoke-virtual {v6, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2173
    const-string v7, "com.android.settings"

    const-string v8, "com.android.settings.SecurityWarningDialog"

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2174
    iget-object v7, p0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    invoke-static {v7, v9, v6, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 2177
    .local v0, "contentIntent":Landroid/app/PendingIntent;
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 2178
    .local v5, "warningClearIntent":Landroid/content/Intent;
    const-string v7, "android.settings.SECURITY_WARNING_CLEAR"

    invoke-virtual {v5, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2179
    iget-object v7, p0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    invoke-static {v7, v9, v5, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 2181
    .local v1, "deleteIntent":Landroid/app/PendingIntent;
    iget-object v7, p0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    const-string v8, "notification"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 2182
    .local v2, "nm":Landroid/app/NotificationManager;
    new-instance v3, Landroid/app/Notification$Builder;

    iget-object v7, p0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    invoke-direct {v3, v7}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 2183
    .local v3, "noti":Landroid/app/Notification$Builder;
    invoke-virtual {v3, v10}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a19e4

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v7

    const-wide/16 v8, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 2192
    invoke-virtual {v3}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v7

    invoke-virtual {v2, v10, v7}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0
.end method

.method private sendDrivingmodeNotification(Landroid/content/Context;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const v11, 0x7f0a0d9a

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 1906
    const-string v7, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_DRIVING_MODE"

    invoke-static {v7}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1942
    :cond_0
    :goto_0
    return-void

    .line 1908
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "driving_mode_on"

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 1909
    .local v6, "state":I
    const v4, 0x7f0205fa

    .line 1910
    .local v4, "notiID":I
    const-string v7, "notification"

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 1914
    .local v2, "nm":Landroid/app/NotificationManager;
    new-instance v0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;

    invoke-direct {v0}, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;-><init>()V

    .line 1915
    .local v0, "mBargeInRecognizer":Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;
    if-eqz v0, :cond_3

    .line 1916
    invoke-virtual {v0}, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->isBargeInEnabled()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1917
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1918
    .local v1, "mIntent":Landroid/content/Intent;
    const-string v7, "com.vlingo.midas"

    const-string v8, "com.vlingo.midas.gui.ConversationActivity"

    invoke-virtual {v1, v7, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1919
    const/high16 v7, 0x10000000

    invoke-virtual {v1, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1920
    invoke-static {p1, v9, v1, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 1927
    .end local v1    # "mIntent":Landroid/content/Intent;
    .local v5, "sender":Landroid/app/PendingIntent;
    :goto_1
    if-ne v6, v10, :cond_4

    .line 1928
    new-instance v3, Landroid/app/Notification$Builder;

    invoke-direct {v3, p1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 1930
    .local v3, "noti":Landroid/app/Notification$Builder;
    const v7, 0x7f0205fa

    invoke-virtual {v3, v7}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v7

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v7

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a0d86

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1933
    invoke-virtual {p1, v11}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1934
    const-wide/16 v8, 0x0

    invoke-virtual {v3, v8, v9}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 1938
    invoke-virtual {v3}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v7

    invoke-virtual {v2, v4, v7}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0

    .line 1922
    .end local v3    # "noti":Landroid/app/Notification$Builder;
    .end local v5    # "sender":Landroid/app/PendingIntent;
    :cond_2
    new-instance v7, Landroid/content/Intent;

    const-string v8, "android.settings.DRIVINGMODE_ACTIVITY_LAUNCH"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v9, v7, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .restart local v5    # "sender":Landroid/app/PendingIntent;
    goto :goto_1

    .line 1925
    .end local v5    # "sender":Landroid/app/PendingIntent;
    :cond_3
    new-instance v7, Landroid/content/Intent;

    const-string v8, "android.settings.DRIVINGMODE_ACTIVITY_LAUNCH"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v9, v7, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .restart local v5    # "sender":Landroid/app/PendingIntent;
    goto :goto_1

    .line 1940
    :cond_4
    invoke-virtual {v2, v4}, Landroid/app/NotificationManager;->cancel(I)V

    goto/16 :goto_0
.end method

.method private sendTalkbackNotification(Landroid/content/Context;Z)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "enabled"    # Z

    .prologue
    .line 1946
    const-string v9, "notification"

    invoke-virtual {p1, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationManager;

    .line 1947
    .local v5, "nManager":Landroid/app/NotificationManager;
    const v7, 0xd20fe

    .line 1948
    .local v7, "notificationID":I
    const v1, 0xcae7d

    .line 1949
    .local v1, "emergencyNotificationID":I
    const/4 v2, 0x0

    .line 1950
    .local v2, "isEmergencyModeEnabled":Z
    iget-object v9, p0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/sec/android/emergencymode/EmergencyManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/emergencymode/EmergencyManager;

    move-result-object v3

    .line 1951
    .local v3, "mEmergencyManager":Lcom/sec/android/emergencymode/EmergencyManager;
    if-eqz v3, :cond_0

    .line 1952
    invoke-virtual {v3}, Lcom/sec/android/emergencymode/EmergencyManager;->isEmergencyMode()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1953
    const/4 v2, 0x1

    .line 1955
    :cond_0
    if-eqz p2, :cond_3

    .line 1956
    new-instance v6, Landroid/app/Notification;

    invoke-direct {v6}, Landroid/app/Notification;-><init>()V

    .line 1957
    .local v6, "notification":Landroid/app/Notification;
    const v9, 0x7f0205fd

    iput v9, v6, Landroid/app/Notification;->icon:I

    .line 1958
    const-wide/16 v10, 0x0

    iput-wide v10, v6, Landroid/app/Notification;->when:J

    .line 1959
    iget v9, v6, Landroid/app/Notification;->flags:I

    or-int/lit8 v9, v9, 0x2

    iput v9, v6, Landroid/app/Notification;->flags:I

    .line 1961
    const v9, 0x7f0a0a34

    invoke-virtual {p1, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1962
    .local v0, "TitleText":Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/Utils;->isLocaleRTL()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1963
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\u200f"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1967
    :cond_1
    const/4 v9, 0x1

    if-ne v2, v9, :cond_2

    .line 1968
    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v6, p1, v0, v9, v10}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 1970
    invoke-virtual {v5, v1, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1986
    .end local v0    # "TitleText":Ljava/lang/String;
    .end local v6    # "notification":Landroid/app/Notification;
    :goto_0
    return-void

    .line 1972
    .restart local v0    # "TitleText":Ljava/lang/String;
    .restart local v6    # "notification":Landroid/app/Notification;
    :cond_2
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 1973
    .local v4, "mIntent":Landroid/content/Intent;
    const-string v9, "android.settings.ACCESSIBILITY_SETTINGS"

    invoke-virtual {v4, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1974
    const v9, 0x8000

    invoke-virtual {v4, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1975
    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {p1, v9, v4, v10}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    .line 1976
    .local v8, "pi":Landroid/app/PendingIntent;
    const v9, 0x7f0a0a35

    invoke-virtual {p1, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, p1, v0, v9, v8}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 1978
    invoke-virtual {v5, v7, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0

    .line 1981
    .end local v0    # "TitleText":Ljava/lang/String;
    .end local v4    # "mIntent":Landroid/content/Intent;
    .end local v6    # "notification":Landroid/app/Notification;
    .end local v8    # "pi":Landroid/app/PendingIntent;
    :cond_3
    const/4 v9, 0x1

    if-ne v2, v9, :cond_4

    .line 1982
    invoke-virtual {v5, v1}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0

    .line 1984
    :cond_4
    invoke-virtual {v5, v7}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0
.end method

.method private setHandwritingLanguage(Ljava/lang/String;)Ljava/lang/String;
    .locals 14
    .param p1, "currentLang"    # Ljava/lang/String;

    .prologue
    const/4 v13, 0x1

    .line 2292
    iget-object v10, p0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "handwriting_language_list"

    invoke-static {v10, v11}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2293
    .local v6, "imLanguageList":Ljava/lang/String;
    const-string v10, "SettingsIntentReceiver"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "setHandwritingLanguage() handwriting_language_list : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "and current handwriting language : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 2295
    iget-object v10, p0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    invoke-static {v10}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v9

    .line 2296
    .local v9, "sharedPrefs":Landroid/content/SharedPreferences;
    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 2297
    .local v3, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v10, "pref_current_handwriting_lang_llist"

    invoke-interface {v3, v10, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2298
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2300
    const/4 v1, 0x0

    .line 2301
    .local v1, "bFindVOLanguage":Z
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    .line 2302
    .local v2, "defaultLocale":Ljava/util/Locale;
    const/4 v8, 0x0

    .line 2303
    .local v8, "setLanguage":Ljava/lang/String;
    const/4 v0, 0x0

    .line 2305
    .local v0, "bCheckKeepCurLang":Z
    if-eqz v6, :cond_0

    const-string v10, ""

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 2306
    :cond_0
    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2307
    invoke-direct {p0, p1}, Lcom/android/settings/SettingsIntentReceiver;->checkVOLanguage(Ljava/lang/String;)Z

    move-result v1

    .line 2346
    :cond_1
    :goto_0
    if-ne v0, v13, :cond_a

    .line 2347
    move-object v8, p1

    .line 2379
    :cond_2
    :goto_1
    const-string v10, "SettingsIntentReceiver"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "setHandwritingLanguage() setLanguage : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 2381
    return-object v8

    .line 2309
    :cond_3
    const-string v10, ";"

    invoke-virtual {v6, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 2311
    .local v7, "inputLanguage":[Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    array-length v10, v7

    if-ge v5, v10, :cond_5

    .line 2312
    aget-object v10, v7, v5

    const-string v11, "en"

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_4

    aget-object v10, v7, v5

    invoke-virtual {v10, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 2313
    const/4 v0, 0x1

    .line 2311
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 2317
    :cond_5
    if-nez v0, :cond_1

    .line 2318
    array-length v10, v7

    if-ne v10, v13, :cond_6

    .line 2319
    const/4 v10, 0x0

    aget-object p1, v7, v10

    .line 2320
    invoke-direct {p0, p1}, Lcom/android/settings/SettingsIntentReceiver;->checkVOLanguage(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0

    .line 2322
    :cond_6
    const/4 v4, 0x0

    .line 2323
    .local v4, "firstLanguae":Ljava/lang/String;
    const/4 v5, 0x0

    :goto_3
    array-length v10, v7

    if-ge v5, v10, :cond_9

    .line 2324
    aget-object v10, v7, v5

    const-string v11, "en"

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_8

    .line 2325
    aget-object v10, v7, v5

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 2326
    aget-object p1, v7, v5

    .line 2327
    invoke-direct {p0, p1}, Lcom/android/settings/SettingsIntentReceiver;->checkVOLanguage(Ljava/lang/String;)Z

    move-result v1

    .line 2329
    :cond_7
    if-nez v4, :cond_8

    .line 2330
    aget-object v4, v7, v5

    .line 2323
    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 2335
    :cond_9
    if-nez v1, :cond_1

    .line 2336
    if-eqz v4, :cond_1

    .line 2337
    move-object p1, v4

    .line 2338
    invoke-direct {p0, p1}, Lcom/android/settings/SettingsIntentReceiver;->checkVOLanguage(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0

    .line 2349
    .end local v4    # "firstLanguae":Ljava/lang/String;
    .end local v5    # "i":I
    .end local v7    # "inputLanguage":[Ljava/lang/String;
    :cond_a
    const-string v10, "SettingsIntentReceiver"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "setHandwritingLanguage() bFindVOLanguage : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 2350
    if-ne v1, v13, :cond_b

    .line 2351
    move-object v8, p1

    goto/16 :goto_1

    .line 2353
    :cond_b
    const-string v10, "en_GB"

    invoke-direct {p0, v10}, Lcom/android/settings/SettingsIntentReceiver;->checkVOLanguage(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_11

    .line 2354
    const-string v8, "en_GB"

    .line 2359
    :cond_c
    :goto_4
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v10

    if-eqz v10, :cond_d

    .line 2360
    const-string v10, "ko_KR"

    invoke-direct {p0, v10}, Lcom/android/settings/SettingsIntentReceiver;->checkVOLanguage(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_d

    .line 2361
    const-string v8, "ko_KR"

    .line 2365
    :cond_d
    const-string v10, "ATT"

    iget-object v11, p0, Lcom/android/settings/SettingsIntentReceiver;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_e

    const-string v10, "VZW"

    iget-object v11, p0, Lcom/android/settings/SettingsIntentReceiver;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_e

    const-string v10, "SPR"

    iget-object v11, p0, Lcom/android/settings/SettingsIntentReceiver;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_e

    const-string v10, "TMB"

    iget-object v11, p0, Lcom/android/settings/SettingsIntentReceiver;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_e

    const-string v10, "USC"

    iget-object v11, p0, Lcom/android/settings/SettingsIntentReceiver;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_f

    .line 2368
    :cond_e
    const-string v8, "en_US"

    .line 2371
    :cond_f
    const-string v10, "XTC"

    iget-object v11, p0, Lcom/android/settings/SettingsIntentReceiver;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_10

    const-string v10, "SMA"

    iget-object v11, p0, Lcom/android/settings/SettingsIntentReceiver;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_10

    const-string v10, "GLB"

    iget-object v11, p0, Lcom/android/settings/SettingsIntentReceiver;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_10

    const-string v10, "XTE"

    iget-object v11, p0, Lcom/android/settings/SettingsIntentReceiver;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 2373
    :cond_10
    const-string v8, "en_US"

    goto/16 :goto_1

    .line 2355
    :cond_11
    const-string v10, "en_US"

    invoke-direct {p0, v10}, Lcom/android/settings/SettingsIntentReceiver;->checkVOLanguage(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 2356
    const-string v8, "en_US"

    goto :goto_4
.end method

.method private toggleFmm(Landroid/content/Context;Z)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "onoff"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 2044
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "shopdemo"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_0

    .line 2069
    :goto_0
    return-void

    .line 2047
    :cond_0
    const-string v5, "SettingsIntentReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "FMM enabled? "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2048
    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v5

    if-nez v5, :cond_2

    .line 2049
    invoke-static {p1}, Lcom/android/settings/Utils;->isSupportLMM(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2050
    if-eqz p2, :cond_2

    .line 2051
    invoke-virtual {p0, v3, p1}, Lcom/android/settings/SettingsIntentReceiver;->SetReactivationServiceFlag(ILandroid/content/Context;)I

    move-result v5

    if-ne v5, v3, :cond_1

    .line 2052
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "remote_control"

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2053
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.settings.remotecontrol_on"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2054
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "SettingsIntentReceiver"

    const-string v5, " toggleFmm[remotecontrol_on]"

    invoke-static {v3, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2055
    invoke-virtual {p1, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2057
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_1
    const-string v3, "SettingsIntentReceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "toggleFmm on [ServiceFlag] = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0, p1}, Lcom/android/settings/SettingsIntentReceiver;->checkReactivationLock(Landroid/content/Context;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 2065
    :cond_2
    :goto_1
    const-string v3, "FMMPreferences"

    invoke-virtual {p1, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 2066
    .local v2, "sharedPrefs":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2067
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v3, "pref_fmm"

    invoke-interface {v0, v3, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2068
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 2061
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v2    # "sharedPrefs":Landroid/content/SharedPreferences;
    :cond_3
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "remote_control"

    if-eqz p2, :cond_4

    :goto_2
    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_4
    move v3, v4

    goto :goto_2
.end method

.method private writeMTData(Ljava/lang/String;)V
    .locals 6
    .param p1, "mtData"    # Ljava/lang/String;

    .prologue
    .line 2096
    const/4 v2, 0x0

    .line 2098
    .local v2, "raf":Ljava/io/RandomAccessFile;
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/system/mobiletracker.txt"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2100
    .local v1, "mtFileName":Ljava/lang/String;
    new-instance v3, Ljava/io/RandomAccessFile;

    const-string v4, "rw"

    invoke-direct {v3, v1, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2101
    .end local v2    # "raf":Ljava/io/RandomAccessFile;
    .local v3, "raf":Ljava/io/RandomAccessFile;
    :try_start_1
    const-string v4, "UTF-8"

    invoke-virtual {p1, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/RandomAccessFile;->write([B)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2110
    if-eqz v3, :cond_2

    .line 2113
    :try_start_2
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v2, v3

    .line 2119
    .end local v1    # "mtFileName":Ljava/lang/String;
    .end local v3    # "raf":Ljava/io/RandomAccessFile;
    .restart local v2    # "raf":Ljava/io/RandomAccessFile;
    :cond_0
    :goto_0
    return-void

    .line 2114
    .end local v2    # "raf":Ljava/io/RandomAccessFile;
    .restart local v1    # "mtFileName":Ljava/lang/String;
    .restart local v3    # "raf":Ljava/io/RandomAccessFile;
    :catch_0
    move-exception v0

    .line 2115
    .local v0, "ex1":Ljava/io/IOException;
    const-string v4, "SettingsIntentReceiver"

    invoke-static {v4, v0}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v2, v3

    .line 2116
    .end local v3    # "raf":Ljava/io/RandomAccessFile;
    .restart local v2    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_0

    .line 2102
    .end local v0    # "ex1":Ljava/io/IOException;
    .end local v1    # "mtFileName":Ljava/lang/String;
    :catch_1
    move-exception v4

    .line 2110
    :goto_1
    if-eqz v2, :cond_0

    .line 2113
    :try_start_3
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 2114
    :catch_2
    move-exception v0

    .line 2115
    .restart local v0    # "ex1":Ljava/io/IOException;
    const-string v4, "SettingsIntentReceiver"

    invoke-static {v4, v0}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2104
    .end local v0    # "ex1":Ljava/io/IOException;
    :catch_3
    move-exception v4

    .line 2110
    :goto_2
    if-eqz v2, :cond_0

    .line 2113
    :try_start_4
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_0

    .line 2114
    :catch_4
    move-exception v0

    .line 2115
    .restart local v0    # "ex1":Ljava/io/IOException;
    const-string v4, "SettingsIntentReceiver"

    invoke-static {v4, v0}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2106
    .end local v0    # "ex1":Ljava/io/IOException;
    :catch_5
    move-exception v4

    .line 2110
    :goto_3
    if-eqz v2, :cond_0

    .line 2113
    :try_start_5
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6

    goto :goto_0

    .line 2114
    :catch_6
    move-exception v0

    .line 2115
    .restart local v0    # "ex1":Ljava/io/IOException;
    const-string v4, "SettingsIntentReceiver"

    invoke-static {v4, v0}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2109
    .end local v0    # "ex1":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 2110
    :goto_4
    if-eqz v2, :cond_1

    .line 2113
    :try_start_6
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_7

    .line 2116
    :cond_1
    :goto_5
    throw v4

    .line 2114
    :catch_7
    move-exception v0

    .line 2115
    .restart local v0    # "ex1":Ljava/io/IOException;
    const-string v5, "SettingsIntentReceiver"

    invoke-static {v5, v0}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 2109
    .end local v0    # "ex1":Ljava/io/IOException;
    .end local v2    # "raf":Ljava/io/RandomAccessFile;
    .restart local v1    # "mtFileName":Ljava/lang/String;
    .restart local v3    # "raf":Ljava/io/RandomAccessFile;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3    # "raf":Ljava/io/RandomAccessFile;
    .restart local v2    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_4

    .line 2106
    .end local v2    # "raf":Ljava/io/RandomAccessFile;
    .restart local v3    # "raf":Ljava/io/RandomAccessFile;
    :catch_8
    move-exception v4

    move-object v2, v3

    .end local v3    # "raf":Ljava/io/RandomAccessFile;
    .restart local v2    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_3

    .line 2104
    .end local v2    # "raf":Ljava/io/RandomAccessFile;
    .restart local v3    # "raf":Ljava/io/RandomAccessFile;
    :catch_9
    move-exception v4

    move-object v2, v3

    .end local v3    # "raf":Ljava/io/RandomAccessFile;
    .restart local v2    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_2

    .line 2102
    .end local v2    # "raf":Ljava/io/RandomAccessFile;
    .restart local v3    # "raf":Ljava/io/RandomAccessFile;
    :catch_a
    move-exception v4

    move-object v2, v3

    .end local v3    # "raf":Ljava/io/RandomAccessFile;
    .restart local v2    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_1

    .end local v2    # "raf":Ljava/io/RandomAccessFile;
    .restart local v3    # "raf":Ljava/io/RandomAccessFile;
    :cond_2
    move-object v2, v3

    .end local v3    # "raf":Ljava/io/RandomAccessFile;
    .restart local v2    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_0
.end method


# virtual methods
.method public ChangeType(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "format"    # Ljava/lang/String;

    .prologue
    .line 2395
    const-string v3, " "

    const-string v4, ""

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 2396
    const-string v3, "."

    const-string v4, "/"

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 2397
    const-string v1, ""

    .line 2398
    .local v1, "RetDateFormat":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 2400
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2401
    .local v0, "NumCheck":C
    const/16 v3, 0x2f

    if-le v0, v3, :cond_0

    const/16 v3, 0x3a

    if-ge v0, v3, :cond_0

    .line 2402
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2398
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2405
    .end local v0    # "NumCheck":C
    :cond_1
    return-object v1
.end method

.method public SetReactivationServiceFlag(ILandroid/content/Context;)I
    .locals 3
    .param p1, "setFlag"    # I
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    .line 2487
    sget-object v1, Lcom/android/settings/SettingsIntentReceiver;->rsm:Lcom/samsung/android/service/reactive/ReactiveServiceManager;

    invoke-static {p2}, Lcom/android/settings/SettingsIntentReceiver;->getSamsungAccountName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, p1, v2}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->setFlag(IILjava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 2488
    const-string v0, "SettingsIntentReceiver"

    const-string v1, "SetReactivationServiceFlag() returns error!! "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2489
    const/4 v0, 0x0

    .line 2492
    :cond_0
    return v0
.end method

.method public SetRegionalDate_Update()I
    .locals 13

    .prologue
    const/4 v5, 0x0

    .line 2409
    iget-object v1, p0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0019

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v8

    .line 2410
    .local v8, "dateFormats":[Ljava/lang/String;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 2411
    .local v0, "dummydate_for_dateformat":Ljava/util/Calendar;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/16 v2, 0xb

    const/16 v3, 0x1f

    const/16 v4, 0xd

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    .line 2413
    iget-object v1, p0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    aget-object v2, v8, v5

    invoke-static {v1, v2}, Landroid/text/format/DateFormat;->getDateFormatForSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/text/DateFormat;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v10

    .line 2414
    .local v10, "format":Ljava/lang/String;
    invoke-virtual {p0, v10}, Lcom/android/settings/SettingsIntentReceiver;->ChangeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 2415
    const/4 v9, 0x0

    .line 2416
    .local v9, "flag":Z
    const/4 v7, 0x0

    .line 2417
    .local v7, "curAppliedDate":I
    const/4 v11, 0x1

    .local v11, "i":I
    :goto_0
    array-length v1, v8

    if-ge v11, v1, :cond_0

    .line 2418
    iget-object v1, p0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    aget-object v2, v8, v11

    invoke-static {v1, v2}, Landroid/text/format/DateFormat;->getDateFormatForSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/text/DateFormat;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v12

    .line 2419
    .local v12, "tempDate":Ljava/lang/String;
    invoke-virtual {p0, v12}, Lcom/android/settings/SettingsIntentReceiver;->ChangeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 2420
    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2421
    move v7, v11

    .line 2422
    const/4 v9, 0x1

    .line 2426
    .end local v12    # "tempDate":Ljava/lang/String;
    :cond_0
    if-nez v9, :cond_1

    .line 2427
    const/4 v7, -0x1

    .line 2429
    :cond_1
    return v7

    .line 2417
    .restart local v12    # "tempDate":Ljava/lang/String;
    :cond_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 126
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 142
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    .line 143
    .local v9, "action":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v107

    .line 144
    .local v107, "resolver":Landroid/content/ContentResolver;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v76

    .line 145
    .local v76, "mPm":Landroid/content/pm/PackageManager;
    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v121

    move-object/from16 v0, v121

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SettingsIntentReceiver;->mSalesCode:Ljava/lang/String;

    .line 146
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    .line 148
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v121

    invoke-static/range {v121 .. v121}, Lcom/android/settings/Utils;->isSupportLMM(Landroid/content/Context;)Z

    move-result v121

    if-eqz v121, :cond_0

    .line 149
    new-instance v121, Lcom/samsung/android/service/reactive/ReactiveServiceManager;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v122

    invoke-direct/range {v121 .. v122}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;-><init>(Landroid/content/Context;)V

    sput-object v121, Lcom/android/settings/SettingsIntentReceiver;->rsm:Lcom/samsung/android/service/reactive/ReactiveServiceManager;

    .line 152
    :cond_0
    const/16 v121, 0x0

    invoke-static/range {v121 .. v121}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v121

    if-nez v121, :cond_1

    const/16 v121, 0x0

    invoke-static/range {v121 .. v121}, Lcom/android/settings/Utils;->isLightTheme(Landroid/content/Context;)Z

    move-result v121

    if-eqz v121, :cond_2

    .line 153
    :cond_1
    new-instance v121, Landroid/view/ContextThemeWrapper;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v122, v0

    const v123, 0x103012b

    invoke-direct/range {v121 .. v123}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    move-object/from16 v0, v121

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    .line 157
    :cond_2
    const-string v121, "com.samsung.wipe.MTDATA"

    move-object/from16 v0, v121

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v121

    if-eqz v121, :cond_3

    .line 158
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v46

    .line 159
    .local v46, "extras":Landroid/os/Bundle;
    const-string v121, "MTDATA"

    move-object/from16 v0, v46

    move-object/from16 v1, v121

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v115

    .line 161
    .local v115, "temp":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v115

    invoke-direct {v0, v1}, Lcom/android/settings/SettingsIntentReceiver;->writeMTData(Ljava/lang/String;)V

    .line 162
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/SettingsIntentReceiver;->makeDMfile()V

    .line 165
    const-string v121, "mt_pwd"

    move-object/from16 v0, p0

    move-object/from16 v1, v115

    invoke-direct {v0, v1}, Lcom/android/settings/SettingsIntentReceiver;->GetPhPWD(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v122

    move-object/from16 v0, v107

    move-object/from16 v1, v121

    move-object/from16 v2, v122

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 166
    const-string v122, "mt_state"

    move-object/from16 v0, p0

    move-object/from16 v1, v115

    invoke-direct {v0, v1}, Lcom/android/settings/SettingsIntentReceiver;->GetMTStatus(Ljava/lang/String;)Z

    move-result v121

    if-eqz v121, :cond_16

    const/16 v121, 0x1

    :goto_0
    move-object/from16 v0, v107

    move-object/from16 v1, v122

    move/from16 v2, v121

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 169
    .end local v46    # "extras":Landroid/os/Bundle;
    .end local v115    # "temp":Ljava/lang/String;
    :cond_3
    const-string v121, "com.android.settings.action.talkback_off"

    move-object/from16 v0, v121

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v121

    if-eqz v121, :cond_18

    .line 170
    const-string v121, "SettingsIntentReceiver"

    new-instance v122, Ljava/lang/StringBuilder;

    invoke-direct/range {v122 .. v122}, Ljava/lang/StringBuilder;-><init>()V

    const-string v123, "onReceive(), action: "

    invoke-virtual/range {v122 .. v123}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v122

    move-object/from16 v0, v122

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v122

    invoke-virtual/range {v122 .. v122}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v122

    invoke-static/range {v121 .. v122}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v121, v0

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/SettingsIntentReceiver;->isEnabledScreenReaderService()Z

    move-result v122

    move-object/from16 v0, p0

    move-object/from16 v1, v121

    move/from16 v2, v122

    invoke-direct {v0, v1, v2}, Lcom/android/settings/SettingsIntentReceiver;->sendTalkbackNotification(Landroid/content/Context;Z)V

    .line 172
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/SettingsIntentReceiver;->isEnabledScreenReaderService()Z

    move-result v121

    if-eqz v121, :cond_4

    .line 173
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v121, v0

    invoke-static/range {v121 .. v121}, Lcom/android/settings/Utils;->isTalkBackExclusiveOptionEnabled(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v25

    .line 174
    .local v25, "bundle_data":Landroid/os/Bundle;
    const-string v121, "is_enabled"

    const/16 v122, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v121

    move/from16 v2, v122

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v64

    .line 175
    .local v64, "is_enabled":Z
    if-eqz v64, :cond_4

    .line 176
    const-string v121, "option_flag"

    const/16 v122, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v121

    move/from16 v2, v122

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v71

    .line 177
    .local v71, "mDisableExclusiveOptionsFlag":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v121, v0

    move-object/from16 v0, v121

    move/from16 v1, v71

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->turnOffTalkBackExclusiveOptions(Landroid/content/Context;I)V

    .line 180
    .end local v25    # "bundle_data":Landroid/os/Bundle;
    .end local v64    # "is_enabled":Z
    .end local v71    # "mDisableExclusiveOptionsFlag":I
    :cond_4
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v121

    const-string v122, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_ACCESSIBILITY_RAPID_KEY_INPUT"

    invoke-virtual/range {v121 .. v122}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v121

    if-eqz v121, :cond_5

    .line 181
    invoke-static/range {p1 .. p1}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v121

    if-eqz v121, :cond_17

    .line 182
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v121

    const-string v122, "rapid_key_input_menu_checked"

    const/16 v123, 0x0

    invoke-static/range {v121 .. v123}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v121

    if-eqz v121, :cond_5

    .line 183
    const-string v121, "SettingsIntentReceiver"

    new-instance v122, Ljava/lang/StringBuilder;

    invoke-direct/range {v122 .. v122}, Ljava/lang/StringBuilder;-><init>()V

    const-string v123, "onReceive(), action: "

    invoke-virtual/range {v122 .. v123}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v122

    move-object/from16 v0, v122

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v122

    const-string v123, ", Rapid key input on"

    invoke-virtual/range {v122 .. v123}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v122

    invoke-virtual/range {v122 .. v122}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v122

    invoke-static/range {v121 .. v122}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v121

    const-string v122, "rapid_key_input"

    const/16 v123, 0x1

    invoke-static/range {v121 .. v123}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1608
    :cond_5
    :goto_1
    const-string v121, "android.net.ethernet.ETH_STATE_CHANGED"

    move-object/from16 v0, v121

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v121

    if-eqz v121, :cond_7

    .line 1609
    const-string v121, "eth_state"

    const/16 v122, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v121

    move/from16 v2, v122

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v89

    .line 1610
    .local v89, "nEthState":I
    const-string v121, "lan_cable_state"

    const/16 v122, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v121

    move/from16 v2, v122

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v21

    .line 1612
    .local v21, "bLanCableState":Z
    const/16 v121, 0x1

    move/from16 v0, v89

    move/from16 v1, v121

    if-ne v0, v1, :cond_aa

    .line 1613
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v121, v0

    const v122, 0x7f0a19b7

    const/16 v123, 0x1

    invoke-static/range {v121 .. v123}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v121

    invoke-virtual/range {v121 .. v121}, Landroid/widget/Toast;->show()V

    .line 1622
    :cond_6
    :goto_2
    const-string v121, "SettingsIntentReceiver"

    new-instance v122, Ljava/lang/StringBuilder;

    invoke-direct/range {v122 .. v122}, Ljava/lang/StringBuilder;-><init>()V

    const-string v123, "ETH_STATE_CHANGED - eth_state: "

    invoke-virtual/range {v122 .. v123}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v122

    move-object/from16 v0, v122

    move/from16 v1, v89

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v122

    const-string v123, ", lan_cable_state: "

    invoke-virtual/range {v122 .. v123}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v122

    move-object/from16 v0, v122

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v122

    invoke-virtual/range {v122 .. v122}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v122

    invoke-static/range {v121 .. v122}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1629
    .end local v21    # "bLanCableState":Z
    .end local v89    # "nEthState":I
    :cond_7
    const-string v121, "android.intent.action.REGISTRATION_COMPLETED"

    move-object/from16 v0, v121

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v121

    if-eqz v121, :cond_8

    .line 1630
    const-string v121, "samsung_signin"

    const/16 v122, 0x1

    move-object/from16 v0, v107

    move-object/from16 v1, v121

    move/from16 v2, v122

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1631
    const/16 v121, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v121

    invoke-direct {v0, v1, v2}, Lcom/android/settings/SettingsIntentReceiver;->toggleFmm(Landroid/content/Context;Z)V

    .line 1633
    :cond_8
    const-string v121, "android.settings.DRIVING_MODE_CHANGED"

    move-object/from16 v0, v121

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v121

    if-nez v121, :cond_9

    const-string v121, "android.settings.DRIVINGMODE_SWITCH_CHANGED"

    move-object/from16 v0, v121

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v121

    if-eqz v121, :cond_b

    .line 1634
    :cond_9
    const-string v121, "SettingsIntentReceiver"

    new-instance v122, Ljava/lang/StringBuilder;

    invoke-direct/range {v122 .. v122}, Ljava/lang/StringBuilder;-><init>()V

    const-string v123, "Action : "

    invoke-virtual/range {v122 .. v123}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v122

    move-object/from16 v0, v122

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v122

    invoke-virtual/range {v122 .. v122}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v122

    invoke-static/range {v121 .. v122}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1635
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v121

    const-string v122, "driving_mode_on"

    const/16 v123, 0x0

    invoke-static/range {v121 .. v123}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v114

    .line 1636
    .local v114, "state":I
    const-string v121, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_DRIVING_MODE"

    invoke-static/range {v121 .. v121}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v121

    if-eqz v121, :cond_b

    .line 1637
    move-object/from16 v0, p0

    move/from16 v1, v114

    invoke-direct {v0, v1}, Lcom/android/settings/SettingsIntentReceiver;->EnablingDrivingMode(I)V

    .line 1638
    const-string v121, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_AIR_MOTION"

    invoke-static/range {v121 .. v121}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v121

    if-eqz v121, :cond_a

    .line 1639
    move-object/from16 v0, p0

    move/from16 v1, v114

    invoke-direct {v0, v1}, Lcom/android/settings/SettingsIntentReceiver;->EnablingDrivingModeAirCallAccept(I)V

    .line 1641
    :cond_a
    invoke-direct/range {p0 .. p1}, Lcom/android/settings/SettingsIntentReceiver;->sendDrivingmodeNotification(Landroid/content/Context;)V

    .line 1644
    .end local v114    # "state":I
    :cond_b
    const-string v121, "android.settings.DRIVINGMODE_ACTIVITY_LAUNCH"

    move-object/from16 v0, v121

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v121

    if-eqz v121, :cond_c

    .line 1645
    new-instance v39, Landroid/content/Intent;

    invoke-direct/range {v39 .. v39}, Landroid/content/Intent;-><init>()V

    .line 1646
    .local v39, "drivingModeIntent":Landroid/content/Intent;
    const-string v121, "android.intent.action.MAIN"

    move-object/from16 v0, v39

    move-object/from16 v1, v121

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1647
    const-string v121, "com.android.settings"

    const-string v122, "com.android.settings.Settings$DrivingModeSettingsActivity"

    move-object/from16 v0, v39

    move-object/from16 v1, v121

    move-object/from16 v2, v122

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v121

    const v122, 0x10008000

    invoke-virtual/range {v121 .. v122}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1649
    move-object/from16 v0, p1

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1651
    .end local v39    # "drivingModeIntent":Landroid/content/Intent;
    :cond_c
    const-string v121, "android.intent.action.SMARTNETWORK_CHANGED"

    move-object/from16 v0, v121

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v121

    if-eqz v121, :cond_e

    .line 1652
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v121

    const-string v122, "smart_network"

    const/16 v123, 0x0

    invoke-static/range {v121 .. v123}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v121

    if-lez v121, :cond_ab

    const/16 v59, 0x1

    .line 1654
    .local v59, "isOn":Z
    :goto_3
    const-string v121, "statusbar"

    move-object/from16 v0, p1

    move-object/from16 v1, v121

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v80

    check-cast v80, Landroid/app/StatusBarManager;

    .line 1655
    .local v80, "mStatusBar":Landroid/app/StatusBarManager;
    const-string v121, "SEC_FLOATING_FEATURE_SETTINGS_CAMERA_ONLY_MODEL"

    invoke-static/range {v121 .. v121}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v121

    if-eqz v121, :cond_d

    .line 1656
    const-string v121, "smart_network"

    const v122, 0x7f020600

    const/16 v123, 0x0

    const/16 v124, 0x0

    move-object/from16 v0, v80

    move-object/from16 v1, v121

    move/from16 v2, v122

    move/from16 v3, v123

    move-object/from16 v4, v124

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    .line 1657
    if-eqz v59, :cond_ac

    .line 1658
    const-string v121, "smart_network"

    const/16 v122, 0x1

    move-object/from16 v0, v80

    move-object/from16 v1, v121

    move/from16 v2, v122

    invoke-virtual {v0, v1, v2}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 1664
    :cond_d
    :goto_4
    new-instance v24, Landroid/content/Intent;

    const-string v121, "com.android.phone.smartnetwork.widget_reload_action"

    move-object/from16 v0, v24

    move-object/from16 v1, v121

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1665
    .local v24, "broadcastIntent":Landroid/content/Intent;
    const/16 v121, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move-object/from16 v2, v121

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1668
    .end local v24    # "broadcastIntent":Landroid/content/Intent;
    .end local v59    # "isOn":Z
    .end local v80    # "mStatusBar":Landroid/app/StatusBarManager;
    :cond_e
    const-string v121, "android.settings.CHANGED_ICC_LOCK_ENABLE"

    move-object/from16 v0, v121

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v121

    if-eqz v121, :cond_10

    .line 1669
    const-string v121, "icc_lock_state"

    const/16 v122, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v121

    move/from16 v2, v122

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v44

    .line 1670
    .local v44, "enable":I
    const-string v121, "SettingsIntentReceiver"

    new-instance v122, Ljava/lang/StringBuilder;

    invoke-direct/range {v122 .. v122}, Ljava/lang/StringBuilder;-><init>()V

    const-string v123, "com.samsung.settings.CHANGED_ICC_LOCK_ENABLE : "

    invoke-virtual/range {v122 .. v123}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v122

    move-object/from16 v0, v122

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v122

    invoke-virtual/range {v122 .. v122}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v122

    invoke-static/range {v121 .. v122}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1671
    invoke-static {}, Lcom/samsung/android/telephony/MultiSimManager;->getInsertedSimCount()I

    move-result v121

    const/16 v122, 0x1

    move/from16 v0, v121

    move/from16 v1, v122

    if-le v0, v1, :cond_f

    .line 1672
    const-string v121, "icc_lock_state2"

    const/16 v122, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v121

    move/from16 v2, v122

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v121

    or-int v44, v44, v121

    .line 1673
    const-string v121, "SettingsIntentReceiver"

    new-instance v122, Ljava/lang/StringBuilder;

    invoke-direct/range {v122 .. v122}, Ljava/lang/StringBuilder;-><init>()V

    const-string v123, "MULTISIM / com.samsung.settings.CHANGED_ICC_LOCK_ENABLE : "

    invoke-virtual/range {v122 .. v123}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v122

    move-object/from16 v0, v122

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v122

    invoke-virtual/range {v122 .. v122}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v122

    invoke-static/range {v121 .. v122}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1675
    :cond_f
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v121

    const-string v122, "icc_lock_enable"

    move-object/from16 v0, v121

    move-object/from16 v1, v122

    move/from16 v2, v44

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1678
    .end local v44    # "enable":I
    :cond_10
    const-string v121, "android.hardware.usb.action.USB_STATE"

    move-object/from16 v0, v121

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v121

    if-eqz v121, :cond_11

    .line 1679
    const-string v121, "connected"

    const/16 v122, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v121

    move/from16 v2, v122

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v82

    .line 1680
    .local v82, "mUsbConnected":Z
    invoke-static/range {p1 .. p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v104

    .line 1681
    .local v104, "pref":Landroid/content/SharedPreferences;
    invoke-interface/range {v104 .. v104}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v41

    .line 1682
    .local v41, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v121, "usb_connection_state"

    move-object/from16 v0, v41

    move-object/from16 v1, v121

    move/from16 v2, v82

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1683
    invoke-interface/range {v41 .. v41}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1685
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v121, v0

    invoke-virtual/range {v121 .. v121}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v121

    const-string v122, "usb_tethering_enabled"

    const/16 v123, 0x0

    invoke-static/range {v121 .. v123}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v121

    const/16 v122, 0x1

    move/from16 v0, v121

    move/from16 v1, v122

    if-ne v0, v1, :cond_ad

    const/16 v117, 0x1

    .line 1686
    .local v117, "usb_tethering_enabled":Z
    :goto_5
    const-string v121, "SettingsIntentReceiver"

    new-instance v122, Ljava/lang/StringBuilder;

    invoke-direct/range {v122 .. v122}, Ljava/lang/StringBuilder;-><init>()V

    const-string v123, "usb_tethering_enabled: "

    invoke-virtual/range {v122 .. v123}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v122

    move-object/from16 v0, v122

    move/from16 v1, v117

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v122

    invoke-virtual/range {v122 .. v122}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v122

    invoke-static/range {v121 .. v122}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1687
    const-string v121, "SettingsIntentReceiver"

    new-instance v122, Ljava/lang/StringBuilder;

    invoke-direct/range {v122 .. v122}, Ljava/lang/StringBuilder;-><init>()V

    const-string v123, "mUsbConnected: "

    invoke-virtual/range {v122 .. v123}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v122

    move-object/from16 v0, v122

    move/from16 v1, v82

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v122

    invoke-virtual/range {v122 .. v122}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v122

    invoke-static/range {v121 .. v122}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1688
    if-nez v82, :cond_11

    if-eqz v117, :cond_11

    .line 1689
    const-string v121, "TMB"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v122

    invoke-virtual/range {v121 .. v122}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v121

    if-eqz v121, :cond_11

    .line 1690
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v121, v0

    const/16 v122, 0x0

    invoke-static/range {v121 .. v122}, Lcom/android/settings/Utils;->checkWifiPreCondition(Landroid/content/Context;Z)V

    .line 1691
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v121, v0

    invoke-virtual/range {v121 .. v121}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v121

    const-string v122, "usb_tethering_enabled"

    const/16 v123, 0x0

    invoke-static/range {v121 .. v123}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1695
    .end local v41    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v82    # "mUsbConnected":Z
    .end local v104    # "pref":Landroid/content/SharedPreferences;
    .end local v117    # "usb_tethering_enabled":Z
    :cond_11
    const-string v121, "GSM"

    invoke-static/range {v121 .. v121}, Lcom/android/settings/Utils;->isDuosModel(Ljava/lang/String;)Z

    move-result v121

    if-eqz v121, :cond_13

    const-string v121, "com.samsung.intent.action.Slot1OffCompleted"

    move-object/from16 v0, v121

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v121

    if-nez v121, :cond_12

    const-string v121, "com.samsung.intent.action.Slot1OnCompleted"

    move-object/from16 v0, v121

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v121

    if-nez v121, :cond_12

    const-string v121, "com.samsung.intent.action.Slot2OffCompleted"

    move-object/from16 v0, v121

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v121

    if-nez v121, :cond_12

    const-string v121, "com.samsung.intent.action.Slot2OnCompleted"

    move-object/from16 v0, v121

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v121

    if-eqz v121, :cond_13

    .line 1700
    :cond_12
    new-instance v24, Landroid/content/Intent;

    new-instance v121, Ljava/lang/StringBuilder;

    invoke-direct/range {v121 .. v121}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v121

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v121

    const-string v122, "Force"

    invoke-virtual/range {v121 .. v122}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v121

    invoke-virtual/range {v121 .. v121}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v121

    move-object/from16 v0, v24

    move-object/from16 v1, v121

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1701
    .restart local v24    # "broadcastIntent":Landroid/content/Intent;
    const/16 v121, 0x0

    const/16 v122, -0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move-object/from16 v2, v121

    move/from16 v3, v122

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;I)V

    .line 1705
    .end local v24    # "broadcastIntent":Landroid/content/Intent;
    :cond_13
    const-string v121, "android.net.conn.SwitchDataNetworkDuringWLANandSmartbonding"

    move-object/from16 v0, v121

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v121

    if-eqz v121, :cond_14

    .line 1706
    const-string v121, "SettingsIntentReceiver"

    const-string v122, "SwitchDataNetworkDuringWLANandSmartbonding receive make toast popup"

    invoke-static/range {v121 .. v122}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1707
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v121, v0

    const v122, 0x7f0a0767

    const/16 v123, 0x0

    invoke-static/range {v121 .. v123}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v121

    invoke-virtual/range {v121 .. v121}, Landroid/widget/Toast;->show()V

    .line 1710
    :cond_14
    const-string v121, "android.intent.action.BATTERY_CHANGED"

    move-object/from16 v0, v121

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v121

    if-eqz v121, :cond_15

    .line 1711
    invoke-static/range {p1 .. p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v104

    .line 1712
    .restart local v104    # "pref":Landroid/content/SharedPreferences;
    invoke-interface/range {v104 .. v104}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v41

    .line 1714
    .restart local v41    # "editor":Landroid/content/SharedPreferences$Editor;
    invoke-static/range {p2 .. p2}, Lcom/android/settings/Utils;->isCharger(Landroid/content/Intent;)Z

    move-result v114

    .line 1716
    .local v114, "state":Z
    const-string v121, "battery_charging_state"

    move-object/from16 v0, v41

    move-object/from16 v1, v121

    move/from16 v2, v114

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1717
    invoke-interface/range {v41 .. v41}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1719
    .end local v41    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v104    # "pref":Landroid/content/SharedPreferences;
    .end local v114    # "state":Z
    :cond_15
    :goto_6
    return-void

    .line 166
    .restart local v46    # "extras":Landroid/os/Bundle;
    .restart local v115    # "temp":Ljava/lang/String;
    :cond_16
    const/16 v121, 0x0

    goto/16 :goto_0

    .line 187
    .end local v46    # "extras":Landroid/os/Bundle;
    .end local v115    # "temp":Ljava/lang/String;
    :cond_17
    const-string v121, "SettingsIntentReceiver"

    new-instance v122, Ljava/lang/StringBuilder;

    invoke-direct/range {v122 .. v122}, Ljava/lang/StringBuilder;-><init>()V

    const-string v123, "onReceive(), action: "

    invoke-virtual/range {v122 .. v123}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v122

    move-object/from16 v0, v122

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v122

    const-string v123, ", Rapid key input off"

    invoke-virtual/range {v122 .. v123}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v122

    invoke-virtual/range {v122 .. v122}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v122

    invoke-static/range {v121 .. v122}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v121

    const-string v122, "rapid_key_input"

    const/16 v123, 0x0

    invoke-static/range {v121 .. v123}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 191
    :cond_18
    const-string v121, "android.intent.action.TALKBACK_STATE_CHANGED"

    move-object/from16 v0, v121

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v121

    if-eqz v121, :cond_1c

    .line 192
    const-string v121, "mFrom"

    const-string v122, "mNoFrom"

    move-object/from16 v0, p2

    move-object/from16 v1, v121

    move-object/from16 v2, v122

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getExtra(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v72

    check-cast v72, Ljava/lang/String;

    .line 194
    .local v72, "mFrom":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v121, v0

    invoke-static/range {v121 .. v121}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v121

    if-eqz v121, :cond_1a

    .line 195
    const-string v121, "SettingsIntentReceiver"

    new-instance v122, Ljava/lang/StringBuilder;

    invoke-direct/range {v122 .. v122}, Ljava/lang/StringBuilder;-><init>()V

    const-string v123, "onReceive(), action: "

    invoke-virtual/range {v122 .. v123}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v122

    move-object/from16 v0, v122

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v122

    const-string v123, ", Talkback turn off"

    invoke-virtual/range {v122 .. v123}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v122

    invoke-virtual/range {v122 .. v122}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v122

    invoke-static/range {v121 .. v122}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    const-string v121, "SettingsIntentReceiver"

    new-instance v122, Ljava/lang/StringBuilder;

    invoke-direct/range {v122 .. v122}, Ljava/lang/StringBuilder;-><init>()V

    const-string v123, "BroadCast Intent from: "

    invoke-virtual/range {v122 .. v123}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v122

    move-object/from16 v0, v122

    move-object/from16 v1, v72

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v122

    invoke-virtual/range {v122 .. v122}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v122

    invoke-static/range {v121 .. v122}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v121, v0

    invoke-static/range {v121 .. v121}, Lcom/android/settings/Utils;->turnOffTalkBack(Landroid/content/Context;)Z

    .line 199
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v121

    const-string v122, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_ACCESSIBILITY_RAPID_KEY_INPUT"

    invoke-virtual/range {v121 .. v122}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v121

    if-eqz v121, :cond_19

    .line 200
    const-string v121, "SettingsIntentReceiver"

    new-instance v122, Ljava/lang/StringBuilder;

    invoke-direct/range {v122 .. v122}, Ljava/lang/StringBuilder;-><init>()V

    const-string v123, "onReceive(), action: "

    invoke-virtual/range {v122 .. v123}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v122

    move-object/from16 v0, v122

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v122

    const-string v123, ", Rapid key input off"

    invoke-virtual/range {v122 .. v123}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v122

    invoke-virtual/range {v122 .. v122}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v122

    invoke-static/range {v121 .. v122}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v121

    const-string v122, "rapid_key_input"

    const/16 v123, 0x0

    invoke-static/range {v121 .. v123}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 227
    :cond_19
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v121, v0

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/SettingsIntentReceiver;->isEnabledScreenReaderService()Z

    move-result v122

    move-object/from16 v0, p0

    move-object/from16 v1, v121

    move/from16 v2, v122

    invoke-direct {v0, v1, v2}, Lcom/android/settings/SettingsIntentReceiver;->sendTalkbackNotification(Landroid/content/Context;Z)V

    goto/16 :goto_1

    .line 204
    :cond_1a
    const-string v121, "SettingsIntentReceiver"

    new-instance v122, Ljava/lang/StringBuilder;

    invoke-direct/range {v122 .. v122}, Ljava/lang/StringBuilder;-><init>()V

    const-string v123, "onReceive(), action: "

    invoke-virtual/range {v122 .. v123}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v122

    move-object/from16 v0, v122

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v122

    const-string v123, ", Talkback turn on"

    invoke-virtual/range {v122 .. v123}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v122

    invoke-virtual/range {v122 .. v122}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v122

    invoke-static/range {v121 .. v122}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    const-string v121, "SettingsIntentReceiver"

    new-instance v122, Ljava/lang/StringBuilder;

    invoke-direct/range {v122 .. v122}, Ljava/lang/StringBuilder;-><init>()V

    const-string v123, "BroadCast Intent from: "

    invoke-virtual/range {v122 .. v123}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v122

    move-object/from16 v0, v122

    move-object/from16 v1, v72

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v122

    invoke-virtual/range {v122 .. v122}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v122

    invoke-static/range {v121 .. v122}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v121, v0

    invoke-virtual/range {v121 .. v121}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v121

    const-string v122, "enabled_accessibility_services"

    const-string v123, "com.google.android.marvin.talkback/com.google.android.marvin.talkback.TalkBackService"

    invoke-static/range {v121 .. v123}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 208
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v121, v0

    invoke-virtual/range {v121 .. v121}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v121

    const-string v122, "accessibility_enabled"

    const/16 v123, 0x1

    invoke-static/range {v121 .. v123}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 211
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v121, v0

    invoke-static/range {v121 .. v121}, Lcom/android/settings/Utils;->isTalkBackExclusiveOptionEnabled(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v25

    .line 212
    .restart local v25    # "bundle_data":Landroid/os/Bundle;
    const-string v121, "is_enabled"

    const/16 v122, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v121

    move/from16 v2, v122

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v64

    .line 214
    .restart local v64    # "is_enabled":Z
    if-eqz v64, :cond_1b

    .line 215
    const-string v121, "option_flag"

    const/16 v122, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v121

    move/from16 v2, v122

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v71

    .line 216
    .restart local v71    # "mDisableExclusiveOptionsFlag":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v121, v0

    move-object/from16 v0, v121

    move/from16 v1, v71

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->turnOffTalkBackExclusiveOptions(Landroid/content/Context;I)V

    .line 219
    .end local v71    # "mDisableExclusiveOptionsFlag":I
    :cond_1b
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v121

    const-string v122, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_ACCESSIBILITY_RAPID_KEY_INPUT"

    invoke-virtual/range {v121 .. v122}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v121

    if-eqz v121, :cond_19

    .line 220
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v121

    const-string v122, "rapid_key_input_menu_checked"

    const/16 v123, 0x0

    invoke-static/range {v121 .. v123}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v121

    if-eqz v121, :cond_19

    .line 221
    const-string v121, "SettingsIntentReceiver"

    new-instance v122, Ljava/lang/StringBuilder;

    invoke-direct/range {v122 .. v122}, Ljava/lang/StringBuilder;-><init>()V

    const-string v123, "onReceive(), action: "

    invoke-virtual/range {v122 .. v123}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v122

    move-object/from16 v0, v122

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v122

    const-string v123, ", Rapid key input on"

    invoke-virtual/range {v122 .. v123}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v122

    invoke-virtual/range {v122 .. v122}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v122

    invoke-static/range {v121 .. v122}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v121

    const-string v122, "rapid_key_input"

    const/16 v123, 0x1

    invoke-static/range {v121 .. v123}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_7

    .line 228
    .end local v25    # "bundle_data":Landroid/os/Bundle;
    .end local v64    # "is_enabled":Z
    .end local v72    # "mFrom":Ljava/lang/String;
    :cond_1c
    const-string v121, "android.intent.action.EMERGENCY_STATE_CHANGED"

    move-object/from16 v0, v121

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v121

    if-eqz v121, :cond_20

    .line 229
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/SettingsIntentReceiver;->isEnabledScreenReaderService()Z

    move-result v121

    if-eqz v121, :cond_1e

    .line 230
    const-string v121, "notification"

    move-object/from16 v0, p1

    move-object/from16 v1, v121

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v90

    check-cast v90, Landroid/app/NotificationManager;

    .line 231
    .local v90, "nManager":Landroid/app/NotificationManager;
    const-string v121, "reason"

    const/16 v122, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v121

    move/from16 v2, v122

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v42

    .line 232
    .local v42, "emergencyBroadcastCheck":I
    const v93, 0xd20fe

    .line 233
    .local v93, "notificationID":I
    const v43, 0xcae7d

    .line 234
    .local v43, "emergencyNotificationID":I
    new-instance v92, Landroid/app/Notification;

    invoke-direct/range {v92 .. v92}, Landroid/app/Notification;-><init>()V

    .line 235
    .local v92, "notification":Landroid/app/Notification;
    const v121, 0x7f0205fd

    move/from16 v0, v121

    move-object/from16 v1, v92

    iput v0, v1, Landroid/app/Notification;->icon:I

    .line 236
    const-wide/16 v122, 0x0

    move-wide/from16 v0, v122

    move-object/from16 v2, v92

    iput-wide v0, v2, Landroid/app/Notification;->when:J

    .line 237
    move-object/from16 v0, v92

    iget v0, v0, Landroid/app/Notification;->flags:I

    move/from16 v121, v0

    or-int/lit8 v121, v121, 0x2

    move/from16 v0, v121

    move-object/from16 v1, v92

    iput v0, v1, Landroid/app/Notification;->flags:I

    .line 239
    const v121, 0x7f0a0a34

    move-object/from16 v0, p1

    move/from16 v1, v121

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 240
    .local v8, "TitleText":Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/Utils;->isLocaleRTL()Z

    move-result v121

    if-eqz v121, :cond_1d

    .line 241
    new-instance v121, Ljava/lang/StringBuilder;

    invoke-direct/range {v121 .. v121}, Ljava/lang/StringBuilder;-><init>()V

    const-string v122, "\u200f"

    invoke-virtual/range {v121 .. v122}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v121

    move-object/from16 v0, v121

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v121

    invoke-virtual/range {v121 .. v121}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 244
    :cond_1d
    const/16 v121, 0x2

    move/from16 v0, v42

    move/from16 v1, v121

    if-ne v0, v1, :cond_1f

    .line 245
    move-object/from16 v0, v90

    move/from16 v1, v93

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 246
    const/16 v121, 0x0

    const/16 v122, 0x0

    move-object/from16 v0, v92

    move-object/from16 v1, p1

    move-object/from16 v2, v121

    move-object/from16 v3, v122

    invoke-virtual {v0, v1, v8, v2, v3}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 247
    move-object/from16 v0, v90

    move/from16 v1, v43

    move-object/from16 v2, v92

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 259
    .end local v8    # "TitleText":Ljava/lang/String;
    .end local v42    # "emergencyBroadcastCheck":I
    .end local v43    # "emergencyNotificationID":I
    .end local v90    # "nManager":Landroid/app/NotificationManager;
    .end local v92    # "notification":Landroid/app/Notification;
    .end local v93    # "notificationID":I
    :cond_1e
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v121, v0

    const-string v122, "notification"

    invoke-virtual/range {v121 .. v122}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v75

    check-cast v75, Landroid/app/NotificationManager;

    .line 260
    .local v75, "mNM":Landroid/app/NotificationManager;
    const v121, 0x7f0205fe

    move-object/from16 v0, v75

    move/from16 v1, v121

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    goto/16 :goto_1

    .line 248
    .end local v75    # "mNM":Landroid/app/NotificationManager;
    .restart local v8    # "TitleText":Ljava/lang/String;
    .restart local v42    # "emergencyBroadcastCheck":I
    .restart local v43    # "emergencyNotificationID":I
    .restart local v90    # "nManager":Landroid/app/NotificationManager;
    .restart local v92    # "notification":Landroid/app/Notification;
    .restart local v93    # "notificationID":I
    :cond_1f
    const/16 v121, 0x4

    move/from16 v0, v42

    move/from16 v1, v121

    if-ne v0, v1, :cond_1e

    .line 249
    move-object/from16 v0, v90

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 250
    new-instance v73, Landroid/content/Intent;

    invoke-direct/range {v73 .. v73}, Landroid/content/Intent;-><init>()V

    .line 251
    .local v73, "mIntent":Landroid/content/Intent;
    const-string v121, "android.settings.ACCESSIBILITY_SETTINGS"

    move-object/from16 v0, v73

    move-object/from16 v1, v121

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 252
    const v121, 0x8000

    move-object/from16 v0, v73

    move/from16 v1, v121

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 253
    const/16 v121, 0x0

    const/16 v122, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v121

    move-object/from16 v2, v73

    move/from16 v3, v122

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v100

    .line 254
    .local v100, "pi":Landroid/app/PendingIntent;
    const v121, 0x7f0a0a35

    move-object/from16 v0, p1

    move/from16 v1, v121

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v121

    move-object/from16 v0, v92

    move-object/from16 v1, p1

    move-object/from16 v2, v121

    move-object/from16 v3, v100

    invoke-virtual {v0, v1, v8, v2, v3}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 256
    move-object/from16 v0, v90

    move/from16 v1, v93

    move-object/from16 v2, v92

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_8

    .line 261
    .end local v8    # "TitleText":Ljava/lang/String;
    .end local v42    # "emergencyBroadcastCheck":I
    .end local v43    # "emergencyNotificationID":I
    .end local v73    # "mIntent":Landroid/content/Intent;
    .end local v90    # "nManager":Landroid/app/NotificationManager;
    .end local v92    # "notification":Landroid/app/Notification;
    .end local v93    # "notificationID":I
    .end local v100    # "pi":Landroid/app/PendingIntent;
    :cond_20
    const-string v121, "com.android.settings.action.sound_detector"

    move-object/from16 v0, v121

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v121

    if-eqz v121, :cond_22

    .line 262
    const v7, 0xd2158

    .line 263
    .local v7, "SOUND_DETECTOR_RUNNING_ID":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v121, v0

    invoke-virtual/range {v121 .. v121}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v121

    const-string v122, "sound_detector"

    const/16 v123, 0x0

    invoke-static/range {v121 .. v123}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v114

    .line 264
    .local v114, "state":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v121, v0

    const-string v122, "notification"

    invoke-virtual/range {v121 .. v122}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v94

    check-cast v94, Landroid/app/NotificationManager;

    .line 266
    .local v94, "notificationManager":Landroid/app/NotificationManager;
    const/16 v121, 0x1

    move/from16 v0, v114

    move/from16 v1, v121

    if-ne v0, v1, :cond_21

    .line 269
    new-instance v77, Landroid/content/Intent;

    invoke-direct/range {v77 .. v77}, Landroid/content/Intent;-><init>()V

    .line 270
    .local v77, "mSdIntent":Landroid/content/Intent;
    const-string v121, "android.settings.accessibility.BABYCRYING_DETECTING"

    move-object/from16 v0, v77

    move-object/from16 v1, v121

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 271
    const-string v121, "mNotify"

    const/16 v122, 0x1

    move-object/from16 v0, v77

    move-object/from16 v1, v121

    move/from16 v2, v122

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 272
    const/high16 v121, 0x24800000

    move-object/from16 v0, v77

    move/from16 v1, v121

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 274
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v121, v0

    const/16 v122, 0x0

    const/high16 v123, 0x10000000

    move-object/from16 v0, v121

    move/from16 v1, v122

    move-object/from16 v2, v77

    move/from16 v3, v123

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v101

    .line 276
    .local v101, "pie":Landroid/app/PendingIntent;
    new-instance v121, Landroid/support/v4/app/NotificationCompat$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v122, v0

    invoke-direct/range {v121 .. v122}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v122, v0

    const v123, 0x7f0a0aeb

    invoke-virtual/range {v122 .. v123}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v122

    invoke-virtual/range {v121 .. v122}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v121

    const v122, 0x7f0205f5

    invoke-virtual/range {v121 .. v122}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v121

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v122, v0

    const v123, 0x7f0a0aef

    invoke-virtual/range {v122 .. v123}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v122

    invoke-virtual/range {v121 .. v122}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v121

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v122, v0

    const v123, 0x7f0a0aef

    invoke-virtual/range {v122 .. v123}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v122

    invoke-virtual/range {v121 .. v122}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v121

    const/16 v122, 0x1

    invoke-virtual/range {v121 .. v122}, Landroid/support/v4/app/NotificationCompat$Builder;->setOngoing(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v121

    invoke-virtual/range {v121 .. v121}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v92

    .line 283
    .restart local v92    # "notification":Landroid/app/Notification;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v121, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v122, v0

    const v123, 0x7f0a0aeb

    invoke-virtual/range {v122 .. v123}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v122

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v123, v0

    const v124, 0x7f0a0aef

    invoke-virtual/range {v123 .. v124}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v123

    move-object/from16 v0, v92

    move-object/from16 v1, v121

    move-object/from16 v2, v122

    move-object/from16 v3, v123

    move-object/from16 v4, v101

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 285
    move-object/from16 v0, v94

    move-object/from16 v1, v92

    invoke-virtual {v0, v7, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_1

    .line 287
    .end local v77    # "mSdIntent":Landroid/content/Intent;
    .end local v92    # "notification":Landroid/app/Notification;
    .end local v101    # "pie":Landroid/app/PendingIntent;
    :cond_21
    move-object/from16 v0, v94

    invoke-virtual {v0, v7}, Landroid/app/NotificationManager;->cancel(I)V

    goto/16 :goto_1

    .line 289
    .end local v7    # "SOUND_DETECTOR_RUNNING_ID":I
    .end local v94    # "notificationManager":Landroid/app/NotificationManager;
    .end local v114    # "state":I
    :cond_22
    const-string v121, "com.android.settings.action.sound_detector.start"

    move-object/from16 v0, v121

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v121

    if-eqz v121, :cond_23

    .line 290
    const v7, 0xd2158

    .line 291
    .restart local v7    # "SOUND_DETECTOR_RUNNING_ID":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v121, v0

    const-string v122, "notification"

    invoke-virtual/range {v121 .. v122}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v94

    check-cast v94, Landroid/app/NotificationManager;

    .line 294
    .restart local v94    # "notificationManager":Landroid/app/NotificationManager;
    new-instance v77, Landroid/content/Intent;

    invoke-direct/range {v77 .. v77}, Landroid/content/Intent;-><init>()V

    .line 295
    .restart local v77    # "mSdIntent":Landroid/content/Intent;
    const-string v121, "android.settings.accessibility.BABYCRYING_DETECTING"

    move-object/from16 v0, v77

    move-object/from16 v1, v121

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 296
    const-string v121, "mNotify"

    const/16 v122, 0x1

    move-object/from16 v0, v77

    move-object/from16 v1, v121

    move/from16 v2, v122

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 297
    const/high16 v121, 0x24800000

    move-object/from16 v0, v77

    move/from16 v1, v121

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 299
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v121, v0

    const/16 v122, 0x0

    const/high16 v123, 0x10000000

    move-object/from16 v0, v121

    move/from16 v1, v122

    move-object/from16 v2, v77

    move/from16 v3, v123

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v101

    .line 301
    .restart local v101    # "pie":Landroid/app/PendingIntent;
    new-instance v121, Landroid/support/v4/app/NotificationCompat$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v122, v0

    invoke-direct/range {v121 .. v122}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v122, v0

    const v123, 0x7f0a0aeb

    invoke-virtual/range {v122 .. v123}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v122

    invoke-virtual/range {v121 .. v122}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v121

    const v122, 0x7f0205f4

    invoke-virtual/range {v121 .. v122}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v121

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v122, v0

    const v123, 0x7f0a0af0

    invoke-virtual/range {v122 .. v123}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v122

    invoke-virtual/range {v121 .. v122}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v121

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v122, v0

    const v123, 0x7f0a0af0

    invoke-virtual/range {v122 .. v123}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v122

    invoke-virtual/range {v121 .. v122}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v121

    const/16 v122, 0x1

    invoke-virtual/range {v121 .. v122}, Landroid/support/v4/app/NotificationCompat$Builder;->setOngoing(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v121

    invoke-virtual/range {v121 .. v121}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v92

    .line 308
    .restart local v92    # "notification":Landroid/app/Notification;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v121, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v122, v0

    const v123, 0x7f0a0aeb

    invoke-virtual/range {v122 .. v123}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v122

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v123, v0

    const v124, 0x7f0a0af0

    invoke-virtual/range {v123 .. v124}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v123

    move-object/from16 v0, v92

    move-object/from16 v1, v121

    move-object/from16 v2, v122

    move-object/from16 v3, v123

    move-object/from16 v4, v101

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 310
    move-object/from16 v0, v94

    move-object/from16 v1, v92

    invoke-virtual {v0, v7, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_1

    .line 311
    .end local v7    # "SOUND_DETECTOR_RUNNING_ID":I
    .end local v77    # "mSdIntent":Landroid/content/Intent;
    .end local v92    # "notification":Landroid/app/Notification;
    .end local v94    # "notificationManager":Landroid/app/NotificationManager;
    .end local v101    # "pie":Landroid/app/PendingIntent;
    :cond_23
    const-string v121, "com.android.settings.action.sound_detector.stop"

    move-object/from16 v0, v121

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v121

    if-eqz v121, :cond_24

    .line 312
    const v7, 0xd2158

    .line 313
    .restart local v7    # "SOUND_DETECTOR_RUNNING_ID":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v121, v0

    const-string v122, "notification"

    invoke-virtual/range {v121 .. v122}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v94

    check-cast v94, Landroid/app/NotificationManager;

    .line 316
    .restart local v94    # "notificationManager":Landroid/app/NotificationManager;
    new-instance v77, Landroid/content/Intent;

    invoke-direct/range {v77 .. v77}, Landroid/content/Intent;-><init>()V

    .line 317
    .restart local v77    # "mSdIntent":Landroid/content/Intent;
    const-string v121, "android.settings.accessibility.BABYCRYING_DETECTING"

    move-object/from16 v0, v77

    move-object/from16 v1, v121

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 318
    const-string v121, "mNotify"

    const/16 v122, 0x1

    move-object/from16 v0, v77

    move-object/from16 v1, v121

    move/from16 v2, v122

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 319
    const/high16 v121, 0x24800000

    move-object/from16 v0, v77

    move/from16 v1, v121

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 321
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v121, v0

    const/16 v122, 0x0

    const/high16 v123, 0x10000000

    move-object/from16 v0, v121

    move/from16 v1, v122

    move-object/from16 v2, v77

    move/from16 v3, v123

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v101

    .line 323
    .restart local v101    # "pie":Landroid/app/PendingIntent;
    new-instance v121, Landroid/support/v4/app/NotificationCompat$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v122, v0

    invoke-direct/range {v121 .. v122}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v122, v0

    const v123, 0x7f0a0aeb

    invoke-virtual/range {v122 .. v123}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v122

    invoke-virtual/range {v121 .. v122}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v121

    const v122, 0x7f0205f5

    invoke-virtual/range {v121 .. v122}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v121

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v122, v0

    const v123, 0x7f0a0aef

    invoke-virtual/range {v122 .. v123}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v122

    invoke-virtual/range {v121 .. v122}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v121

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v122, v0

    const v123, 0x7f0a0aef

    invoke-virtual/range {v122 .. v123}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v122

    invoke-virtual/range {v121 .. v122}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v121

    const/16 v122, 0x1

    invoke-virtual/range {v121 .. v122}, Landroid/support/v4/app/NotificationCompat$Builder;->setOngoing(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v121

    invoke-virtual/range {v121 .. v121}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v92

    .line 330
    .restart local v92    # "notification":Landroid/app/Notification;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v121, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v122, v0

    const v123, 0x7f0a0aeb

    invoke-virtual/range {v122 .. v123}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v122

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v123, v0

    const v124, 0x7f0a0aef

    invoke-virtual/range {v123 .. v124}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v123

    move-object/from16 v0, v92

    move-object/from16 v1, v121

    move-object/from16 v2, v122

    move-object/from16 v3, v123

    move-object/from16 v4, v101

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 332
    move-object/from16 v0, v94

    move-object/from16 v1, v92

    invoke-virtual {v0, v7, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_1

    .line 333
    .end local v7    # "SOUND_DETECTOR_RUNNING_ID":I
    .end local v77    # "mSdIntent":Landroid/content/Intent;
    .end local v92    # "notification":Landroid/app/Notification;
    .end local v94    # "notificationManager":Landroid/app/NotificationManager;
    .end local v101    # "pie":Landroid/app/PendingIntent;
    :cond_24
    const-string v121, "com.android.settings.action.doorbell_detector"

    move-object/from16 v0, v121

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v121

    if-eqz v121, :cond_26

    .line 334
    const v7, 0xd21bc

    .line 335
    .restart local v7    # "SOUND_DETECTOR_RUNNING_ID":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v121, v0

    invoke-virtual/range {v121 .. v121}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v121

    const-string v122, "doorbell_detector"

    const/16 v123, 0x0

    invoke-static/range {v121 .. v123}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v114

    .line 336
    .restart local v114    # "state":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v121, v0

    const-string v122, "notification"

    invoke-virtual/range {v121 .. v122}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v94

    check-cast v94, Landroid/app/NotificationManager;

    .line 338
    .restart local v94    # "notificationManager":Landroid/app/NotificationManager;
    const/16 v121, 0x1

    move/from16 v0, v114

    move/from16 v1, v121

    if-ne v0, v1, :cond_25

    .line 341
    new-instance v77, Landroid/content/Intent;

    invoke-direct/range {v77 .. v77}, Landroid/content/Intent;-><init>()V

    .line 342
    .restart local v77    # "mSdIntent":Landroid/content/Intent;
    const-string v121, "android.settings.accessibility.DOORBELL_DETECTING"

    move-object/from16 v0, v77

    move-object/from16 v1, v121

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 343
    const-string v121, "mNotify"

    const/16 v122, 0x1

    move-object/from16 v0, v77

    move-object/from16 v1, v121

    move/from16 v2, v122

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 344
    const/high16 v121, 0x24800000

    move-object/from16 v0, v77

    move/from16 v1, v121

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 346
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v121, v0

    const/16 v122, 0x0

    const/high16 v123, 0x10000000

    move-object/from16 v0, v121

    move/from16 v1, v122

    move-object/from16 v2, v77

    move/from16 v3, v123

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v101

    .line 348
    .restart local v101    # "pie":Landroid/app/PendingIntent;
    new-instance v121, Landroid/support/v4/app/NotificationCompat$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v122, v0

    invoke-direct/range {v121 .. v122}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v122, v0

    const v123, 0x7f0a0aee

    invoke-virtual/range {v122 .. v123}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v122

    invoke-virtual/range {v121 .. v122}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v121

    const v122, 0x7f0205f5

    invoke-virtual/range {v121 .. v122}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v121

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v122, v0

    const v123, 0x7f0a0af1

    invoke-virtual/range {v122 .. v123}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v122

    invoke-virtual/range {v121 .. v122}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v121

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v122, v0

    const v123, 0x7f0a0af1

    invoke-virtual/range {v122 .. v123}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v122

    invoke-virtual/range {v121 .. v122}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v121

    const/16 v122, 0x1

    invoke-virtual/range {v121 .. v122}, Landroid/support/v4/app/NotificationCompat$Builder;->setOngoing(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v121

    invoke-virtual/range {v121 .. v121}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v92

    .line 355
    .restart local v92    # "notification":Landroid/app/Notification;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v121, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v122, v0

    const v123, 0x7f0a0aee

    invoke-virtual/range {v122 .. v123}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v122

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v123, v0

    const v124, 0x7f0a0af1

    invoke-virtual/range {v123 .. v124}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v123

    move-object/from16 v0, v92

    move-object/from16 v1, v121

    move-object/from16 v2, v122

    move-object/from16 v3, v123

    move-object/from16 v4, v101

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 357
    move-object/from16 v0, v94

    move-object/from16 v1, v92

    invoke-virtual {v0, v7, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_1

    .line 359
    .end local v77    # "mSdIntent":Landroid/content/Intent;
    .end local v92    # "notification":Landroid/app/Notification;
    .end local v101    # "pie":Landroid/app/PendingIntent;
    :cond_25
    move-object/from16 v0, v94

    invoke-virtual {v0, v7}, Landroid/app/NotificationManager;->cancel(I)V

    goto/16 :goto_1

    .line 361
    .end local v7    # "SOUND_DETECTOR_RUNNING_ID":I
    .end local v94    # "notificationManager":Landroid/app/NotificationManager;
    .end local v114    # "state":I
    :cond_26
    const-string v121, "com.android.settings.action.doorbell_detector.start"

    move-object/from16 v0, v121

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v121

    if-eqz v121, :cond_27

    .line 362
    const v7, 0xd21bc

    .line 363
    .restart local v7    # "SOUND_DETECTOR_RUNNING_ID":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v121, v0

    const-string v122, "notification"

    invoke-virtual/range {v121 .. v122}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v94

    check-cast v94, Landroid/app/NotificationManager;

    .line 366
    .restart local v94    # "notificationManager":Landroid/app/NotificationManager;
    new-instance v77, Landroid/content/Intent;

    invoke-direct/range {v77 .. v77}, Landroid/content/Intent;-><init>()V

    .line 367
    .restart local v77    # "mSdIntent":Landroid/content/Intent;
    const-string v121, "android.settings.accessibility.DOORBELL_DETECTING"

    move-object/from16 v0, v77

    move-object/from16 v1, v121

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 368
    const-string v121, "mNotify"

    const/16 v122, 0x1

    move-object/from16 v0, v77

    move-object/from16 v1, v121

    move/from16 v2, v122

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 369
    const/high16 v121, 0x24800000

    move-object/from16 v0, v77

    move/from16 v1, v121

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 371
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v121, v0

    const/16 v122, 0x0

    const/high16 v123, 0x10000000

    move-object/from16 v0, v121

    move/from16 v1, v122

    move-object/from16 v2, v77

    move/from16 v3, v123

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v101

    .line 373
    .restart local v101    # "pie":Landroid/app/PendingIntent;
    new-instance v121, Landroid/support/v4/app/NotificationCompat$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v122, v0

    invoke-direct/range {v121 .. v122}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v122, v0

    const v123, 0x7f0a0aee

    invoke-virtual/range {v122 .. v123}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v122

    invoke-virtual/range {v121 .. v122}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v121

    const v122, 0x7f0205f4

    invoke-virtual/range {v121 .. v122}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v121

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v122, v0

    const v123, 0x7f0a0af2

    invoke-virtual/range {v122 .. v123}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v122

    invoke-virtual/range {v121 .. v122}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v121

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v122, v0

    const v123, 0x7f0a0af2

    invoke-virtual/range {v122 .. v123}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v122

    invoke-virtual/range {v121 .. v122}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v121

    const/16 v122, 0x1

    invoke-virtual/range {v121 .. v122}, Landroid/support/v4/app/NotificationCompat$Builder;->setOngoing(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v121

    invoke-virtual/range {v121 .. v121}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v92

    .line 380
    .restart local v92    # "notification":Landroid/app/Notification;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v121, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v122, v0

    const v123, 0x7f0a0aee

    invoke-virtual/range {v122 .. v123}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v122

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v123, v0

    const v124, 0x7f0a0af2

    invoke-virtual/range {v123 .. v124}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v123

    move-object/from16 v0, v92

    move-object/from16 v1, v121

    move-object/from16 v2, v122

    move-object/from16 v3, v123

    move-object/from16 v4, v101

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 382
    move-object/from16 v0, v94

    move-object/from16 v1, v92

    invoke-virtual {v0, v7, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_1

    .line 383
    .end local v7    # "SOUND_DETECTOR_RUNNING_ID":I
    .end local v77    # "mSdIntent":Landroid/content/Intent;
    .end local v92    # "notification":Landroid/app/Notification;
    .end local v94    # "notificationManager":Landroid/app/NotificationManager;
    .end local v101    # "pie":Landroid/app/PendingIntent;
    :cond_27
    const-string v121, "com.android.settings.action.doorbell_detector.stop"

    move-object/from16 v0, v121

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v121

    if-eqz v121, :cond_28

    .line 384
    const v7, 0xd21bc

    .line 385
    .restart local v7    # "SOUND_DETECTOR_RUNNING_ID":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v121, v0

    const-string v122, "notification"

    invoke-virtual/range {v121 .. v122}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v94

    check-cast v94, Landroid/app/NotificationManager;

    .line 388
    .restart local v94    # "notificationManager":Landroid/app/NotificationManager;
    new-instance v77, Landroid/content/Intent;

    invoke-direct/range {v77 .. v77}, Landroid/content/Intent;-><init>()V

    .line 389
    .restart local v77    # "mSdIntent":Landroid/content/Intent;
    const-string v121, "android.settings.accessibility.DOORBELL_DETECTING"

    move-object/from16 v0, v77

    move-object/from16 v1, v121

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 390
    const-string v121, "mNotify"

    const/16 v122, 0x1

    move-object/from16 v0, v77

    move-object/from16 v1, v121

    move/from16 v2, v122

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 391
    const/high16 v121, 0x24800000

    move-object/from16 v0, v77

    move/from16 v1, v121

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 393
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v121, v0

    const/16 v122, 0x0

    const/high16 v123, 0x10000000

    move-object/from16 v0, v121

    move/from16 v1, v122

    move-object/from16 v2, v77

    move/from16 v3, v123

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v101

    .line 395
    .restart local v101    # "pie":Landroid/app/PendingIntent;
    new-instance v121, Landroid/support/v4/app/NotificationCompat$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v122, v0

    invoke-direct/range {v121 .. v122}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v122, v0

    const v123, 0x7f0a0aee

    invoke-virtual/range {v122 .. v123}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v122

    invoke-virtual/range {v121 .. v122}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v121

    const v122, 0x7f0205f5

    invoke-virtual/range {v121 .. v122}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v121

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v122, v0

    const v123, 0x7f0a0af1

    invoke-virtual/range {v122 .. v123}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v122

    invoke-virtual/range {v121 .. v122}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v121

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v122, v0

    const v123, 0x7f0a0af1

    invoke-virtual/range {v122 .. v123}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v122

    invoke-virtual/range {v121 .. v122}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v121

    const/16 v122, 0x1

    invoke-virtual/range {v121 .. v122}, Landroid/support/v4/app/NotificationCompat$Builder;->setOngoing(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v121

    invoke-virtual/range {v121 .. v121}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v92

    .line 402
    .restart local v92    # "notification":Landroid/app/Notification;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v121, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v122, v0

    const v123, 0x7f0a0aee

    invoke-virtual/range {v122 .. v123}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v122

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v123, v0

    const v124, 0x7f0a0af1

    invoke-virtual/range {v123 .. v124}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v123

    move-object/from16 v0, v92

    move-object/from16 v1, v121

    move-object/from16 v2, v122

    move-object/from16 v3, v123

    move-object/from16 v4, v101

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 404
    move-object/from16 v0, v94

    move-object/from16 v1, v92

    invoke-virtual {v0, v7, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_1

    .line 405
    .end local v7    # "SOUND_DETECTOR_RUNNING_ID":I
    .end local v77    # "mSdIntent":Landroid/content/Intent;
    .end local v92    # "notification":Landroid/app/Notification;
    .end local v94    # "notificationManager":Landroid/app/NotificationManager;
    .end local v101    # "pie":Landroid/app/PendingIntent;
    :cond_28
    const-string v121, "android.intent.action.ACTION_ADAPTIVE_DISPLAY_CHANGED"

    move-object/from16 v0, v121

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v121

    if-eqz v121, :cond_2c

    .line 406
    new-instance v67, Landroid/content/Intent;

    invoke-direct/range {v67 .. v67}, Landroid/content/Intent;-><init>()V

    .line 407
    .local v67, "mAdaptIntent":Landroid/content/Intent;
    const-string v121, "com.android.settings"

    const-string v122, "com.android.settings.ModePreviewDialog"

    move-object/from16 v0, v67

    move-object/from16 v1, v121

    move-object/from16 v2, v122

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v121

    const/high16 v122, 0x10000000

    invoke-virtual/range {v121 .. v122}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 410
    invoke-static/range {p1 .. p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v79

    .line 411
    .local v79, "mSharedPreferences":Landroid/content/SharedPreferences;
    const-string v121, "adapt_noti"

    const/16 v122, 0x0

    move-object/from16 v0, v79

    move-object/from16 v1, v121

    move/from16 v2, v122

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v37

    .line 413
    .local v37, "do_not_show_again":Z
    const/16 v63, 0x1

    .line 415
    .local v63, "isSupportScreenMode":Z
    if-eqz v63, :cond_2b

    const-string v121, "screen_mode_automatic_setting"

    const/16 v122, 0x1

    move-object/from16 v0, v107

    move-object/from16 v1, v121

    move/from16 v2, v122

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v121

    const/16 v122, 0x1

    move/from16 v0, v121

    move/from16 v1, v122

    if-ne v0, v1, :cond_2b

    .line 417
    if-nez v37, :cond_2a

    .line 418
    const-string v121, "statusbar"

    move-object/from16 v0, p1

    move-object/from16 v1, v121

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v80

    check-cast v80, Landroid/app/StatusBarManager;

    .line 419
    .restart local v80    # "mStatusBar":Landroid/app/StatusBarManager;
    if-eqz v80, :cond_29

    .line 420
    invoke-virtual/range {v80 .. v80}, Landroid/app/StatusBarManager;->collapsePanels()V

    .line 421
    :cond_29
    move-object/from16 v0, p1

    move-object/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 423
    .end local v80    # "mStatusBar":Landroid/app/StatusBarManager;
    :cond_2a
    const/16 v121, 0x4

    invoke-static/range {v121 .. v121}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeUserMode(I)Z

    goto/16 :goto_1

    .line 429
    :cond_2b
    const-string v121, "screen_mode_setting"

    const/16 v122, 0x0

    move-object/from16 v0, v107

    move-object/from16 v1, v121

    move/from16 v2, v122

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v121

    invoke-static/range {v121 .. v121}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeUserMode(I)Z

    goto/16 :goto_1

    .line 436
    .end local v37    # "do_not_show_again":Z
    .end local v63    # "isSupportScreenMode":Z
    .end local v67    # "mAdaptIntent":Landroid/content/Intent;
    .end local v79    # "mSharedPreferences":Landroid/content/SharedPreferences;
    :cond_2c
    const-string v121, "android.intent.action.ACTION_SHUTDOWN"

    move-object/from16 v0, v121

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v121

    if-eqz v121, :cond_2d

    .line 438
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v121

    const-string v122, "torch_light"

    const/16 v123, 0x0

    invoke-static/range {v121 .. v123}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 446
    :cond_2d
    const-string v121, "android.intent.action.NEGATIVECOLOR_ON"

    move-object/from16 v0, v121

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v121

    if-eqz v121, :cond_2f

    .line 447
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v121

    const-string v122, "powersaving_switch"

    const/16 v123, 0x0

    invoke-static/range {v121 .. v123}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v103

    .line 448
    .local v103, "powersavingState":I
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v121

    const-string v122, "blackgrey_powersaving_mode"

    const/16 v123, 0x0

    invoke-static/range {v121 .. v123}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v22

    .line 449
    .local v22, "black_grey_powersaving":I
    const/16 v121, 0x1

    move/from16 v0, v103

    move/from16 v1, v121

    if-ne v0, v1, :cond_2e

    const/16 v121, 0x1

    move/from16 v0, v22

    move/from16 v1, v121

    if-ne v0, v1, :cond_2e

    .line 450
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v121

    const-string v122, "high_contrast"

    const/16 v123, 0x0

    invoke-static/range {v121 .. v123}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 453
    :cond_2e
    const-string v121, "accessibility"

    invoke-static/range {v121 .. v121}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v121

    invoke-static/range {v121 .. v121}, Landroid/view/accessibility/IAccessibilityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v53

    .line 455
    .local v53, "iAccessibilityManager":Landroid/view/accessibility/IAccessibilityManager;
    const/16 v121, 0x1

    :try_start_0
    move-object/from16 v0, v53

    move/from16 v1, v121

    invoke-interface {v0, v1}, Landroid/view/accessibility/IAccessibilityManager;->setmDNIeNegative(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 456
    :catch_0
    move-exception v40

    .line 458
    .local v40, "e":Landroid/os/RemoteException;
    invoke-virtual/range {v40 .. v40}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_1

    .line 461
    .end local v22    # "black_grey_powersaving":I
    .end local v40    # "e":Landroid/os/RemoteException;
    .end local v53    # "iAccessibilityManager":Landroid/view/accessibility/IAccessibilityManager;
    .end local v103    # "powersavingState":I
    :cond_2f
    const-string v121, "android.intent.action.NEGATIVECOLOR_OFF"

    move-object/from16 v0, v121

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v121

    if-eqz v121, :cond_30

    .line 463
    const-string v121, "accessibility"

    invoke-static/range {v121 .. v121}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v121

    invoke-static/range {v121 .. v121}, Landroid/view/accessibility/IAccessibilityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v53

    .line 465
    .restart local v53    # "iAccessibilityManager":Landroid/view/accessibility/IAccessibilityManager;
    const/16 v121, 0x0

    :try_start_1
    move-object/from16 v0, v53

    move/from16 v1, v121

    invoke-interface {v0, v1}, Landroid/view/accessibility/IAccessibilityManager;->setmDNIeNegative(Z)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 466
    :catch_1
    move-exception v40

    .line 468
    .restart local v40    # "e":Landroid/os/RemoteException;
    invoke-virtual/range {v40 .. v40}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_1

    .line 471
    .end local v40    # "e":Landroid/os/RemoteException;
    .end local v53    # "iAccessibilityManager":Landroid/view/accessibility/IAccessibilityManager;
    :cond_30
    const-string v121, "com.sec.android.sviewcover.CHANGE_COVER_BACKGROUND"

    move-object/from16 v0, v121

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v121

    if-eqz v121, :cond_31

    .line 472
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v121

    const-string v122, "sview_color_wallpaper"

    const/16 v123, 0x0

    invoke-static/range {v121 .. v123}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v120

    .line 474
    .local v120, "wallpaperindex":I
    const-string v121, "SettingsIntentReceiver"

    new-instance v122, Ljava/lang/StringBuilder;

    invoke-direct/range {v122 .. v122}, Ljava/lang/StringBuilder;-><init>()V

    const-string v123, "onReceive(), action: "

    invoke-virtual/range {v122 .. v123}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v122

    move-object/from16 v0, v122

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v122

    const-string v123, " sview_color_wallpaper DB:"

    invoke-virtual/range {v122 .. v123}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v122

    move-object/from16 v0, v122

    move/from16 v1, v120

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v122

    invoke-virtual/range {v122 .. v122}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v122

    invoke-static/range {v121 .. v122}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    const/16 v121, 0x1

    move/from16 v0, v120

    move/from16 v1, v121

    if-ne v0, v1, :cond_5

    .line 478
    invoke-static/range {p1 .. p1}, Lcom/android/settings/Utils;->saveSViewWallpaperDrawable(Landroid/content/Context;)V

    goto/16 :goto_1

    .line 480
    .end local v120    # "wallpaperindex":I
    :cond_31
    const-string v121, "android.intent.action.BCS_REQUEST"

    move-object/from16 v0, v121

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v121

    if-eqz v121, :cond_35

    .line 481
    const-string v121, "command"

    move-object/from16 v0, p2

    move-object/from16 v1, v121

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 482
    .local v26, "command":Ljava/lang/String;
    const-string v121, "SettingsIntentReceiver"

    new-instance v122, Ljava/lang/StringBuilder;

    invoke-direct/range {v122 .. v122}, Ljava/lang/StringBuilder;-><init>()V

    const-string v123, "onReceive(), action: "

    invoke-virtual/range {v122 .. v123}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v122

    move-object/from16 v0, v122

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v122

    const-string v123, ", command: "

    invoke-virtual/range {v122 .. v123}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v122

    move-object/from16 v0, v122

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v122

    invoke-virtual/range {v122 .. v122}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v122

    invoke-static/range {v121 .. v122}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    if-eqz v26, :cond_32

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v26

    .line 485
    :goto_9
    const-string v121, "AT+AIRPLANEVALUE"

    move-object/from16 v0, v121

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v121

    if-nez v121, :cond_33

    .line 486
    const-string v121, "SettingsIntentReceiver"

    const-string v122, "ATT CMD is not AT+AIRPLANEVALUE"

    invoke-static/range {v121 .. v122}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 484
    :cond_32
    const-string v26, ""

    goto :goto_9

    .line 489
    :cond_33
    new-instance v108, Landroid/content/Intent;

    const-string v121, "android.intent.action.BCS_RESPONSE"

    move-object/from16 v0, v108

    move-object/from16 v1, v121

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 490
    .local v108, "responseIntent":Landroid/content/Intent;
    const-string v56, ""

    .line 491
    .local v56, "isAirplane":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v121

    const-string v122, "airplane_mode_on"

    const/16 v123, 0x0

    invoke-static/range {v121 .. v123}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v121

    const/16 v122, 0x1

    move/from16 v0, v121

    move/from16 v1, v122

    if-ne v0, v1, :cond_34

    .line 492
    const-string v56, "ON"

    .line 496
    :goto_a
    const-string v121, "response"

    move-object/from16 v0, v108

    move-object/from16 v1, v121

    move-object/from16 v2, v56

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 497
    const-string v121, "SettingsIntentReceiver"

    new-instance v122, Ljava/lang/StringBuilder;

    invoke-direct/range {v122 .. v122}, Ljava/lang/StringBuilder;-><init>()V

    const-string v123, "response is "

    invoke-virtual/range {v122 .. v123}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v122

    move-object/from16 v0, v122

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v122

    invoke-virtual/range {v122 .. v122}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v122

    invoke-static/range {v121 .. v122}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    move-object/from16 v0, p1

    move-object/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 494
    :cond_34
    const-string v56, "OFF"

    goto :goto_a

    .line 500
    .end local v26    # "command":Ljava/lang/String;
    .end local v56    # "isAirplane":Ljava/lang/String;
    .end local v108    # "responseIntent":Landroid/content/Intent;
    :cond_35
    const-string v121, "android.media.RINGER_MODE_CHANGED"

    move-object/from16 v0, v121

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v121

    if-eqz v121, :cond_37

    .line 501
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v46

    .line 502
    .restart local v46    # "extras":Landroid/os/Bundle;
    const/16 v109, 0x2

    .line 503
    .local v109, "ringerMode":I
    if-eqz v46, :cond_36

    .line 504
    const-string v121, "android.media.EXTRA_RINGER_MODE"

    move-object/from16 v0, v46

    move-object/from16 v1, v121

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v109

    .line 512
    :goto_b
    packed-switch v109, :pswitch_data_0

    goto/16 :goto_1

    .line 516
    :pswitch_0
    const-string v121, "vibrate_in_silent"

    const/16 v122, 0x0

    move-object/from16 v0, v107

    move-object/from16 v1, v121

    move/from16 v2, v122

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 507
    :cond_36
    const-string v121, "audio"

    move-object/from16 v0, p1

    move-object/from16 v1, v121

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/media/AudioManager;

    .line 508
    .local v15, "audioManager":Landroid/media/AudioManager;
    invoke-virtual {v15}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v109

    goto :goto_b

    .line 521
    .end local v15    # "audioManager":Landroid/media/AudioManager;
    :pswitch_1
    const-string v121, "vibrate_in_silent"

    const/16 v122, 0x1

    move-object/from16 v0, v107

    move-object/from16 v1, v121

    move/from16 v2, v122

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 525
    :pswitch_2
    const-string v121, "vibrate_in_silent"

    const/16 v122, 0x1

    move-object/from16 v0, v107

    move-object/from16 v1, v121

    move/from16 v2, v122

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 530
    .end local v46    # "extras":Landroid/os/Bundle;
    .end local v109    # "ringerMode":I
    :cond_37
    const-string v121, "android.intent.action.BOOT_COMPLETED"

    move-object/from16 v0, v121

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v121

    if-eqz v121, :cond_7d

    .line 533
    const-string v121, "first_sim_brightness_flag"

    const/16 v122, -0x1

    move-object/from16 v0, v107

    move-object/from16 v1, v121

    move/from16 v2, v122

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v49

    .line 534
    .local v49, "first_sim_brightness_flag":I
    const-string v121, "SettingsIntentReceiver"

    new-instance v122, Ljava/lang/StringBuilder;

    invoke-direct/range {v122 .. v122}, Ljava/lang/StringBuilder;-><init>()V

    const-string v123, "first_sim_brightness_flag : "

    invoke-virtual/range {v122 .. v123}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v122

    move-object/from16 v0, v122

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v122

    invoke-virtual/range {v122 .. v122}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v122

    invoke-static/range {v121 .. v122}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    const/16 v121, 0x1

    move/from16 v0, v49

    move/from16 v1, v121

    if-eq v0, v1, :cond_39

    const-string v121, "SEC_FLOATING_FEATURE_SETTINGS_CAMERA_ONLY_MODEL"

    invoke-static/range {v121 .. v121}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v121

    if-nez v121, :cond_39

    invoke-static/range {p1 .. p1}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v121

    if-nez v121, :cond_39

    .line 536
    invoke-static/range {p1 .. p1}, Lcom/android/settings/Utils;->isSimMissing(Landroid/content/Context;)Z

    move-result v121

    if-eqz v121, :cond_56

    .line 537
    const/16 v121, -0x1

    move/from16 v0, v49

    move/from16 v1, v121

    if-ne v0, v1, :cond_39

    .line 538
    invoke-static/range {p1 .. p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v112

    .line 539
    .local v112, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string v121, "pref_siop_brightness"

    const/16 v122, -0x1

    move-object/from16 v0, v112

    move-object/from16 v1, v121

    move/from16 v2, v122

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v83

    .line 540
    .local v83, "max_brightness":I
    if-gez v83, :cond_38

    .line 541
    const/16 v83, 0xff

    .line 543
    :cond_38
    const-string v121, "screen_brightness_mode"

    const/16 v122, 0x0

    move-object/from16 v0, v107

    move-object/from16 v1, v121

    move/from16 v2, v122

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 544
    const-string v121, "screen_brightness"

    move-object/from16 v0, v107

    move-object/from16 v1, v121

    move/from16 v2, v83

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 545
    const-string v121, "first_sim_brightness_flag"

    const/16 v122, 0x0

    move-object/from16 v0, v107

    move-object/from16 v1, v121

    move/from16 v2, v122

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 603
    .end local v83    # "max_brightness":I
    .end local v112    # "sharedPreferences":Landroid/content/SharedPreferences;
    :cond_39
    :goto_c
    const-string v121, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v122

    invoke-virtual/range {v121 .. v122}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v121

    if-eqz v121, :cond_67

    const-string v121, "ro.boot_recovery"

    const/16 v122, 0x0

    invoke-static/range {v121 .. v122}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v121

    const/16 v122, 0x4

    move/from16 v0, v121

    move/from16 v1, v122

    if-ne v0, v1, :cond_67

    sget-object v121, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v122, "user"

    invoke-virtual/range {v121 .. v122}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v121

    if-eqz v121, :cond_67

    .line 604
    const-string v121, "adb_enabled_changed_by_usb_mode"

    const/16 v122, 0x1

    move-object/from16 v0, v107

    move-object/from16 v1, v121

    move/from16 v2, v122

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 605
    const-string v121, "adb_enabled"

    const/16 v122, 0x1

    move-object/from16 v0, v107

    move-object/from16 v1, v121

    move/from16 v2, v122

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 630
    :cond_3a
    :goto_d
    :try_start_2
    const-string v121, "db_first_booting"

    const/16 v122, -0x1

    move-object/from16 v0, v107

    move-object/from16 v1, v121

    move/from16 v2, v122

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v121

    if-lez v121, :cond_68

    const/16 v47, 0x1

    .line 631
    .local v47, "first":Z
    :goto_e
    if-nez v47, :cond_3b

    .line 632
    invoke-direct/range {p0 .. p1}, Lcom/android/settings/SettingsIntentReceiver;->SetMyProfileTextSize(Landroid/content/Context;)V

    .line 633
    const-string v121, "db_first_booting"

    const/16 v122, 0x1

    move-object/from16 v0, v107

    move-object/from16 v1, v121

    move/from16 v2, v122

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 640
    .end local v47    # "first":Z
    :cond_3b
    :goto_f
    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v121

    if-nez v121, :cond_3c

    .line 641
    const-string v121, "auto_adjust_touch"

    const/16 v122, 0x0

    move-object/from16 v0, v107

    move-object/from16 v1, v121

    move/from16 v2, v122

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v121

    if-eqz v121, :cond_69

    const/16 v121, 0x1

    :goto_10
    invoke-static/range {v121 .. v121}, Lcom/sec/android/hardware/SecHardwareInterface;->enableGloveMode(Z)Z

    .line 646
    :cond_3c
    const-string v121, "SEC_FLOATING_FEATURE_SETTINGS_CAMERA_ONLY_MODEL"

    invoke-static/range {v121 .. v121}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v121

    if-nez v121, :cond_3d

    .line 648
    const-string v121, "power_saving_mode"

    const/16 v122, 0x0

    move-object/from16 v0, v107

    move-object/from16 v1, v121

    move/from16 v2, v122

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v121

    if-eqz v121, :cond_6a

    const/16 v121, 0x1

    :goto_11
    invoke-static/range {v121 .. v121}, Lcom/sec/android/hardware/SecHardwareInterface;->setAmoledACL(Z)Z

    .line 653
    :cond_3d
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v121

    const-string v122, "smart_network"

    const/16 v123, 0x0

    invoke-static/range {v121 .. v123}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v121

    if-lez v121, :cond_6b

    const/16 v59, 0x1

    .line 655
    .restart local v59    # "isOn":Z
    :goto_12
    const-string v121, "statusbar"

    move-object/from16 v0, p1

    move-object/from16 v1, v121

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v80

    check-cast v80, Landroid/app/StatusBarManager;

    .line 656
    .restart local v80    # "mStatusBar":Landroid/app/StatusBarManager;
    const-string v121, "SEC_FLOATING_FEATURE_SETTINGS_CAMERA_ONLY_MODEL"

    invoke-static/range {v121 .. v121}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v121

    if-eqz v121, :cond_3e

    .line 657
    const-string v121, "smart_network"

    const v122, 0x7f020600

    const/16 v123, 0x0

    const/16 v124, 0x0

    move-object/from16 v0, v80

    move-object/from16 v1, v121

    move/from16 v2, v122

    move/from16 v3, v123

    move-object/from16 v4, v124

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    .line 658
    if-eqz v59, :cond_6c

    .line 659
    const-string v121, "smart_network"

    const/16 v122, 0x1

    move-object/from16 v0, v80

    move-object/from16 v1, v121

    move/from16 v2, v122

    invoke-virtual {v0, v1, v2}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 665
    :cond_3e
    :goto_13
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v121

    const-string v122, "audio_balance"

    const/16 v123, 0x32

    invoke-static/range {v121 .. v123}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v16

    .line 666
    .local v16, "audio_balance":I
    const/16 v121, 0x32

    move/from16 v0, v16

    move/from16 v1, v121

    if-eq v0, v1, :cond_3f

    .line 667
    const-string v121, "sound_balance"

    move-object/from16 v0, v107

    move-object/from16 v1, v121

    move/from16 v2, v16

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 668
    const-string v121, "audio_balance"

    const/16 v122, 0x32

    move-object/from16 v0, v107

    move-object/from16 v1, v121

    move/from16 v2, v122

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 671
    :cond_3f
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v121

    const-string v122, "color_blind"

    const/16 v123, 0x0

    invoke-static/range {v121 .. v123}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v121

    if-nez v121, :cond_40

    .line 673
    const-string v121, "accessibility"

    invoke-static/range {v121 .. v121}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v121

    invoke-static/range {v121 .. v121}, Landroid/view/accessibility/IAccessibilityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v53

    .line 675
    .restart local v53    # "iAccessibilityManager":Landroid/view/accessibility/IAccessibilityManager;
    :try_start_3
    const-string v121, "high_contrast"

    const/16 v122, 0x0

    move-object/from16 v0, v107

    move-object/from16 v1, v121

    move/from16 v2, v122

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v121

    if-eqz v121, :cond_6d

    const/16 v121, 0x1

    :goto_14
    move-object/from16 v0, v53

    move/from16 v1, v121

    invoke-interface {v0, v1}, Landroid/view/accessibility/IAccessibilityManager;->setmDNIeNegative(Z)Z
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    .line 683
    .end local v53    # "iAccessibilityManager":Landroid/view/accessibility/IAccessibilityManager;
    :cond_40
    :goto_15
    const-string v121, "TGY"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v122

    invoke-virtual/range {v121 .. v122}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v121

    if-eqz v121, :cond_41

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v121

    const-string v122, "CscFeature_IMS_EnableVoLTE"

    invoke-virtual/range {v121 .. v122}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v121

    if-eqz v121, :cond_41

    .line 686
    const-string v121, "notification_panel_active_app_list"

    move-object/from16 v0, v107

    move-object/from16 v1, v121

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 687
    .local v10, "active_app_list":Ljava/lang/String;
    const-string v121, "notification_panel_active_app_list_for_reset"

    move-object/from16 v0, v107

    move-object/from16 v1, v121

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 689
    .local v12, "active_app_reset_list":Ljava/lang/String;
    if-eqz v10, :cond_41

    if-eqz v12, :cond_41

    .line 690
    const-string v121, "Volte"

    move-object/from16 v0, v121

    invoke-virtual {v10, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v121

    if-eqz v121, :cond_41

    const-string v121, "Volte"

    move-object/from16 v0, v121

    invoke-virtual {v12, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v121

    if-eqz v121, :cond_41

    .line 691
    const-string v121, "Volte"

    const-string v122, "VoLte"

    move-object/from16 v0, v121

    move-object/from16 v1, v122

    invoke-virtual {v10, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    .line 692
    const-string v121, "Volte"

    const-string v122, "VoLte"

    move-object/from16 v0, v121

    move-object/from16 v1, v122

    invoke-virtual {v12, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v12

    .line 694
    const-string v121, "notification_panel_active_app_list"

    move-object/from16 v0, v107

    move-object/from16 v1, v121

    invoke-static {v0, v1, v10}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 695
    const-string v121, "notification_panel_active_app_list_for_reset"

    move-object/from16 v0, v107

    move-object/from16 v1, v121

    invoke-static {v0, v1, v12}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 696
    const-string v121, "notification_panel_default_active_app_list"

    move-object/from16 v0, v107

    move-object/from16 v1, v121

    invoke-static {v0, v1, v12}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 702
    .end local v10    # "active_app_list":Ljava/lang/String;
    .end local v12    # "active_app_reset_list":Ljava/lang/String;
    :cond_41
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v121

    const-string v122, "CscFeature_Common_EnableAirMessage"

    invoke-virtual/range {v121 .. v122}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v121

    if-eqz v121, :cond_42

    .line 704
    const-string v121, "notification_panel_active_app_list"

    move-object/from16 v0, v107

    move-object/from16 v1, v121

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 705
    .restart local v10    # "active_app_list":Ljava/lang/String;
    const-string v121, "notification_panel_active_app_list_for_reset"

    move-object/from16 v0, v107

    move-object/from16 v1, v121

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 707
    .restart local v12    # "active_app_reset_list":Ljava/lang/String;
    if-eqz v10, :cond_42

    if-eqz v12, :cond_42

    .line 708
    const-string v121, "GlassMsg"

    move-object/from16 v0, v121

    invoke-virtual {v10, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v121

    if-eqz v121, :cond_42

    const-string v121, "GlassMsg"

    move-object/from16 v0, v121

    invoke-virtual {v12, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v121

    if-eqz v121, :cond_42

    .line 709
    const-string v121, "GlassMsg"

    const-string v122, "FloatingMessage"

    move-object/from16 v0, v121

    move-object/from16 v1, v122

    invoke-virtual {v10, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    .line 710
    const-string v121, "GlassMsg"

    const-string v122, "FloatingMessage"

    move-object/from16 v0, v121

    move-object/from16 v1, v122

    invoke-virtual {v12, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v12

    .line 712
    const-string v121, "notification_panel_active_app_list"

    move-object/from16 v0, v107

    move-object/from16 v1, v121

    invoke-static {v0, v1, v10}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 713
    const-string v121, "notification_panel_active_app_list_for_reset"

    move-object/from16 v0, v107

    move-object/from16 v1, v121

    invoke-static {v0, v1, v12}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 714
    const-string v121, "notification_panel_default_active_app_list"

    move-object/from16 v0, v107

    move-object/from16 v1, v121

    invoke-static {v0, v1, v12}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 720
    .end local v10    # "active_app_list":Ljava/lang/String;
    .end local v12    # "active_app_reset_list":Ljava/lang/String;
    :cond_42
    const-string v121, "torch_light"

    const/16 v122, 0x0

    move-object/from16 v0, v107

    move-object/from16 v1, v121

    move/from16 v2, v122

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v121

    const/16 v122, 0x1

    move/from16 v0, v121

    move/from16 v1, v122

    if-ne v0, v1, :cond_43

    .line 722
    const-string v121, "torch_light"

    const/16 v122, 0x0

    move-object/from16 v0, v107

    move-object/from16 v1, v121

    move/from16 v2, v122

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 723
    new-instance v73, Landroid/content/Intent;

    const-string v121, "android.intent.action.ACTION_ASSISTIVE_OFF_WIDGETUPDATE"

    move-object/from16 v0, v73

    move-object/from16 v1, v121

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 724
    .restart local v73    # "mIntent":Landroid/content/Intent;
    move-object/from16 v0, p1

    move-object/from16 v1, v73

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 727
    .end local v73    # "mIntent":Landroid/content/Intent;
    :cond_43
    const/16 v63, 0x1

    .line 729
    .restart local v63    # "isSupportScreenMode":Z
    if-eqz v63, :cond_6e

    const-string v121, "screen_mode_automatic_setting"

    const/16 v122, 0x1

    move-object/from16 v0, v107

    move-object/from16 v1, v121

    move/from16 v2, v122

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v121

    const/16 v122, 0x1

    move/from16 v0, v121

    move/from16 v1, v122

    if-ne v0, v1, :cond_6e

    .line 731
    const/16 v121, 0x4

    invoke-static/range {v121 .. v121}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeUserMode(I)Z

    .line 740
    :goto_16
    const-string v121, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_S_PEN_HOVERING_N_DETACHMENT"

    invoke-static/range {v121 .. v121}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v121

    if-eqz v121, :cond_44

    .line 742
    const-string v121, "pen_settings"

    const/16 v122, 0x0

    move-object/from16 v0, v107

    move-object/from16 v1, v121

    move/from16 v2, v122

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v32

    .line 743
    .local v32, "currentPenSettings":I
    invoke-static/range {v32 .. v32}, Lcom/sec/android/hardware/SecHardwareInterface;->setEPenType(I)Z

    .line 744
    const-string v121, "SettingsIntentReceiver"

    new-instance v122, Ljava/lang/StringBuilder;

    invoke-direct/range {v122 .. v122}, Ljava/lang/StringBuilder;-><init>()V

    const-string v123, "set pen settings to "

    invoke-virtual/range {v122 .. v123}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v122

    move-object/from16 v0, v122

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v122

    invoke-virtual/range {v122 .. v122}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v122

    invoke-static/range {v121 .. v122}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    const-string v121, "pen_detect_mode_disabled"

    const/16 v122, 0x0

    move-object/from16 v0, v107

    move-object/from16 v1, v121

    move/from16 v2, v122

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v30

    .line 747
    .local v30, "currentPenBatterySavingMode":I
    invoke-static/range {v30 .. v30}, Lcom/sec/android/hardware/SecHardwareInterface;->setEPenSavingmode(I)Z

    .line 748
    const-string v121, "SettingsIntentReceiver"

    new-instance v122, Ljava/lang/StringBuilder;

    invoke-direct/range {v122 .. v122}, Ljava/lang/StringBuilder;-><init>()V

    const-string v123, "currentPenBatterySavingMode: "

    invoke-virtual/range {v122 .. v123}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v122

    move-object/from16 v0, v122

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v122

    invoke-virtual/range {v122 .. v122}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v122

    invoke-static/range {v121 .. v122}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    .end local v30    # "currentPenBatterySavingMode":I
    .end local v32    # "currentPenSettings":I
    :cond_44
    const-string v121, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_S_PEN_HOVERING_N_DETACHMENT"

    invoke-static/range {v121 .. v121}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v121

    if-eqz v121, :cond_45

    .line 752
    const-string v121, "pen_hand_side"

    const/16 v122, 0x1

    move-object/from16 v0, v107

    move-object/from16 v1, v121

    move/from16 v2, v122

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v31

    .line 753
    .local v31, "currentPenHandType":I
    invoke-static/range {v31 .. v31}, Lcom/sec/android/hardware/SecHardwareInterface;->setEpenHandType(I)V

    .line 754
    const-string v121, "SettingsIntentReceiver"

    new-instance v122, Ljava/lang/StringBuilder;

    invoke-direct/range {v122 .. v122}, Ljava/lang/StringBuilder;-><init>()V

    const-string v123, "currentPenHandType: "

    invoke-virtual/range {v122 .. v123}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v122

    move-object/from16 v0, v122

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v122

    invoke-virtual/range {v122 .. v122}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v122

    invoke-static/range {v121 .. v122}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    .end local v31    # "currentPenHandType":I
    :cond_45
    invoke-static/range {p1 .. p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v112

    .line 760
    .restart local v112    # "sharedPreferences":Landroid/content/SharedPreferences;
    const-string v121, "pref_device_provision"

    const/16 v122, 0x0

    move-object/from16 v0, v112

    move-object/from16 v1, v121

    move/from16 v2, v122

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v121

    if-nez v121, :cond_47

    .line 761
    const-string v121, "screen_off_timeout"

    const/16 v122, 0x7530

    move-object/from16 v0, v107

    move-object/from16 v1, v121

    move/from16 v2, v122

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v121

    const v122, 0x1d8a8

    move/from16 v0, v121

    move/from16 v1, v122

    if-ne v0, v1, :cond_46

    .line 762
    const-string v121, "SettingsIntentReceiver"

    const-string v122, "Overriding setup wizard set screen timeout"

    invoke-static/range {v121 .. v122}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    const-string v122, "screen_off_timeout"

    const-string v121, "USC"

    const-string v123, "ro.csc.sales_code"

    invoke-static/range {v123 .. v123}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v123

    move-object/from16 v0, v121

    move-object/from16 v1, v123

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v121

    if-eqz v121, :cond_6f

    const v121, 0xea60

    :goto_17
    move-object/from16 v0, v107

    move-object/from16 v1, v122

    move/from16 v2, v121

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 766
    :cond_46
    const-string v121, "device_provisioned"

    const/16 v122, 0x0

    move-object/from16 v0, v107

    move-object/from16 v1, v121

    move/from16 v2, v122

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v121

    const/16 v122, 0x1

    move/from16 v0, v121

    move/from16 v1, v122

    if-ne v0, v1, :cond_47

    .line 767
    invoke-interface/range {v112 .. v112}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v41

    .line 768
    .restart local v41    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string v121, "pref_device_provision"

    const/16 v122, 0x1

    move-object/from16 v0, v41

    move-object/from16 v1, v121

    move/from16 v2, v122

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 769
    invoke-interface/range {v41 .. v41}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 774
    .end local v41    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_47
    const-string v121, "notification_panel_active_app_list_for_reset"

    move-object/from16 v0, v107

    move-object/from16 v1, v121

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 775
    .local v11, "active_app_list_for_reset":Ljava/lang/String;
    if-nez v11, :cond_48

    .line 776
    const-string v121, "notification_panel_active_app_list"

    move-object/from16 v0, v107

    move-object/from16 v1, v121

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v98

    .line 777
    .local v98, "original":Ljava/lang/String;
    const-string v121, "SettingsIntentReceiver"

    new-instance v122, Ljava/lang/StringBuilder;

    invoke-direct/range {v122 .. v122}, Ljava/lang/StringBuilder;-><init>()V

    const-string v123, "original: "

    invoke-virtual/range {v122 .. v123}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v122

    move-object/from16 v0, v122

    move-object/from16 v1, v98

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v122

    invoke-virtual/range {v122 .. v122}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v122

    invoke-static/range {v121 .. v122}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 778
    const-string v121, "notification_panel_active_app_list_for_reset"

    move-object/from16 v0, v107

    move-object/from16 v1, v121

    move-object/from16 v2, v98

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 779
    const-string v121, "notification_panel_active_number_of_apps_for_reset"

    const/16 v122, 0xa

    move-object/from16 v0, v107

    move-object/from16 v1, v121

    move/from16 v2, v122

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 783
    .end local v98    # "original":Ljava/lang/String;
    :cond_48
    const-string v121, "notification_panel_active_app_list"

    move-object/from16 v0, v107

    move-object/from16 v1, v121

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v97

    .line 784
    .local v97, "orgList":Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v121

    const-string v122, "CscFeature_Common_SupportSecWFC"

    invoke-virtual/range {v121 .. v122}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v121

    if-eqz v121, :cond_49

    const-string v121, "WifiCalling"

    move-object/from16 v0, v97

    move-object/from16 v1, v121

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v121

    if-nez v121, :cond_49

    .line 786
    const-string v121, "Bluetooth"

    move-object/from16 v0, v97

    move-object/from16 v1, v121

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v121

    if-eqz v121, :cond_49

    .line 787
    const-string v121, "Bluetooth;"

    const-string v122, "Bluetooth;WifiCalling;"

    move-object/from16 v0, v97

    move-object/from16 v1, v121

    move-object/from16 v2, v122

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v87

    .line 788
    .local v87, "modifiedList":Ljava/lang/String;
    const-string v121, "notification_panel_active_app_list"

    move-object/from16 v0, v107

    move-object/from16 v1, v121

    move-object/from16 v2, v87

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 790
    const-string v121, "notification_panel_active_app_list_for_reset"

    move-object/from16 v0, v107

    move-object/from16 v1, v121

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v66

    .line 791
    .local v66, "listForReset":Ljava/lang/String;
    const-string v121, "WifiCalling"

    move-object/from16 v0, v66

    move-object/from16 v1, v121

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v121

    if-nez v121, :cond_49

    .line 792
    const-string v121, "Bluetooth;"

    const-string v122, "Bluetooth;WifiCalling;"

    move-object/from16 v0, v66

    move-object/from16 v1, v121

    move-object/from16 v2, v122

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v88

    .line 793
    .local v88, "modifiedListForReset":Ljava/lang/String;
    const-string v121, "notification_panel_active_app_list_for_reset"

    move-object/from16 v0, v107

    move-object/from16 v1, v121

    move-object/from16 v2, v88

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 799
    .end local v66    # "listForReset":Ljava/lang/String;
    .end local v87    # "modifiedList":Ljava/lang/String;
    .end local v88    # "modifiedListForReset":Ljava/lang/String;
    :cond_49
    const-string v121, "notification_panel_active_app_list"

    move-object/from16 v0, v107

    move-object/from16 v1, v121

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v97

    .line 800
    const-string v121, "SmartScroll"

    move-object/from16 v0, v97

    move-object/from16 v1, v121

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v121

    if-eqz v121, :cond_4a

    .line 801
    const-string v121, "SmartScroll;"

    const-string v122, ""

    move-object/from16 v0, v97

    move-object/from16 v1, v121

    move-object/from16 v2, v122

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v87

    .line 802
    .restart local v87    # "modifiedList":Ljava/lang/String;
    const-string v121, "notification_panel_active_app_list"

    move-object/from16 v0, v107

    move-object/from16 v1, v121

    move-object/from16 v2, v87

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 804
    const-string v121, "notification_panel_active_app_list_for_reset"

    move-object/from16 v0, v107

    move-object/from16 v1, v121

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v66

    .line 805
    .restart local v66    # "listForReset":Ljava/lang/String;
    const-string v121, "SmartScroll"

    move-object/from16 v0, v66

    move-object/from16 v1, v121

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v121

    if-eqz v121, :cond_4a

    .line 806
    const-string v121, "SmartScroll;"

    const-string v122, ""

    move-object/from16 v0, v66

    move-object/from16 v1, v121

    move-object/from16 v2, v122

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v88

    .line 807
    .restart local v88    # "modifiedListForReset":Ljava/lang/String;
    const-string v121, "notification_panel_active_app_list_for_reset"

    move-object/from16 v0, v107

    move-object/from16 v1, v121

    move-object/from16 v2, v88

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 840
    .end local v66    # "listForReset":Ljava/lang/String;
    .end local v87    # "modifiedList":Ljava/lang/String;
    .end local v88    # "modifiedListForReset":Ljava/lang/String;
    :cond_4a
    const-string v121, "screen_off_timeout"

    const/16 v122, 0x7530

    move-object/from16 v0, v107

    move-object/from16 v1, v121

    move/from16 v2, v122

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v95

    .line 842
    .local v95, "oldScreenTimOut":I
    const v121, 0x927c0

    move/from16 v0, v95

    move/from16 v1, v121

    if-gt v0, v1, :cond_4b

    if-gez v95, :cond_4c

    .line 844
    :cond_4b
    const-string v121, "SettingsIntentReceiver"

    const-string v122, "Reset screen timeout to 10mins"

    invoke-static/range {v121 .. v122}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 845
    const-string v121, "screen_off_timeout"

    const v122, 0x927c0

    move-object/from16 v0, v107

    move-object/from16 v1, v121

    move/from16 v2, v122

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 848
    :cond_4c
    const-string v121, "stay_on_while_plugged_in"

    const/16 v122, 0x0

    move-object/from16 v0, v107

    move-object/from16 v1, v121

    move/from16 v2, v122

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v96

    .line 850
    .local v96, "oldStayAwake":I
    if-eqz v96, :cond_4d

    .line 851
    const-string v121, "SettingsIntentReceiver"

    const-string v122, "Set stay awake off"

    invoke-static/range {v121 .. v122}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 852
    const-string v121, "stay_on_while_plugged_in"

    const/16 v122, 0x0

    move-object/from16 v0, v107

    move-object/from16 v1, v121

    move/from16 v2, v122

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 858
    :cond_4d
    const-string v121, "screen_off_timeout"

    const/16 v122, 0x7530

    move-object/from16 v0, v107

    move-object/from16 v1, v121

    move/from16 v2, v122

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v121

    if-nez v121, :cond_4e

    .line 859
    const-string v121, "SettingsIntentReceiver"

    const-string v122, "Reset screen timeout to 30 seconds"

    invoke-static/range {v121 .. v122}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 860
    const-string v121, "screen_off_timeout"

    const/16 v122, 0x7530

    move-object/from16 v0, v107

    move-object/from16 v1, v121

    move/from16 v2, v122

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 864
    :cond_4e
    const-string v121, "usb_setting_mode"

    const/16 v122, 0x0

    move-object/from16 v0, v107

    move-object/from16 v1, v121

    move/from16 v2, v122

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v121

    const/16 v122, 0x2

    move/from16 v0, v121

    move/from16 v1, v122

    if-ne v0, v1, :cond_4f

    .line 865
    const-string v121, "usb_setting_mode"

    const/16 v122, 0x0

    move-object/from16 v0, v107

    move-object/from16 v1, v121

    move/from16 v2, v122

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 874
    :cond_4f
    const-string v121, "TMB"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsIntentReceiver;->mSalesCode:Ljava/lang/String;

    move-object/from16 v122, v0

    invoke-virtual/range {v121 .. v122}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v121

    if-eqz v121, :cond_50

    .line 875
    const-string v121, "auto_time"

    const/16 v122, 0x1

    move-object/from16 v0, v107

    move-object/from16 v1, v121

    move/from16 v2, v122

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 876
    const-string v121, "auto_time_zone"

    const/16 v122, 0x1

    move-object/from16 v0, v107

    move-object/from16 v1, v121

    move/from16 v2, v122

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 883
    :cond_50
    const-string v121, "storage.mmc.size"

    const-string v122, "none"

    invoke-static/range {v121 .. v122}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v70

    .line 884
    .local v70, "mDefaultMemory":Ljava/lang/String;
    const-string v121, "SettingsIntentReceiver"

    new-instance v122, Ljava/lang/StringBuilder;

    invoke-direct/range {v122 .. v122}, Ljava/lang/StringBuilder;-><init>()V

    const-string v123, "storage property: "

    invoke-virtual/range {v122 .. v123}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v122

    move-object/from16 v0, v122

    move-object/from16 v1, v70

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v122

    invoke-virtual/range {v122 .. v122}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v122

    invoke-static/range {v121 .. v122}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 885
    const-wide/16 v34, 0x0

    .line 886
    .local v34, "defaultMem":J
    const-string v121, "SettingsIntentReceiver"

    new-instance v122, Ljava/lang/StringBuilder;

    invoke-direct/range {v122 .. v122}, Ljava/lang/StringBuilder;-><init>()V

    const-string v123, "storage db: "

    invoke-virtual/range {v122 .. v123}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v122

    const-string v123, "storage_mmc_size"

    const-wide/16 v124, 0x0

    move-object/from16 v0, v107

    move-object/from16 v1, v123

    move-wide/from16 v2, v124

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v124

    move-object/from16 v0, v122

    move-wide/from16 v1, v124

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v122

    invoke-virtual/range {v122 .. v122}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v122

    invoke-static/range {v121 .. v122}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 887
    const-string v121, "storage_mmc_size"

    const-wide/16 v122, 0x0

    move-object/from16 v0, v107

    move-object/from16 v1, v121

    move-wide/from16 v2, v122

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v122

    const-wide/16 v124, 0x0

    cmp-long v121, v122, v124

    if-nez v121, :cond_51

    .line 888
    const-string v121, "none"

    move-object/from16 v0, v121

    move-object/from16 v1, v70

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v121

    if-nez v121, :cond_51

    .line 889
    invoke-static/range {v70 .. v70}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v34

    .line 890
    const-string v121, "storage_mmc_size"

    move-object/from16 v0, v107

    move-object/from16 v1, v121

    move-wide/from16 v2, v34

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 894
    :cond_51
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/SettingsIntentReceiver;->isEnabledScreenReaderService()Z

    move-result v121

    if-eqz v121, :cond_52

    .line 895
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v121, v0

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/SettingsIntentReceiver;->isEnabledScreenReaderService()Z

    move-result v122

    move-object/from16 v0, p0

    move-object/from16 v1, v121

    move/from16 v2, v122

    invoke-direct {v0, v1, v2}, Lcom/android/settings/SettingsIntentReceiver;->sendTalkbackNotification(Landroid/content/Context;Z)V

    .line 898
    :cond_52
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v121, v0

    invoke-virtual/range {v121 .. v121}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v121

    const-string v122, "sound_detector"

    const/16 v123, 0x0

    invoke-static/range {v121 .. v123}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v121

    const/16 v122, 0x1

    move/from16 v0, v121

    move/from16 v1, v122

    if-ne v0, v1, :cond_70

    const/16 v62, 0x1

    .line 899
    .local v62, "isSoundDetectorOn":Z
    :goto_18
    if-eqz v62, :cond_53

    .line 900
    const v7, 0xd2158

    .line 901
    .restart local v7    # "SOUND_DETECTOR_RUNNING_ID":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v121, v0

    const-string v122, "notification"

    invoke-virtual/range {v121 .. v122}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v94

    check-cast v94, Landroid/app/NotificationManager;

    .line 905
    .restart local v94    # "notificationManager":Landroid/app/NotificationManager;
    new-instance v77, Landroid/content/Intent;

    invoke-direct/range {v77 .. v77}, Landroid/content/Intent;-><init>()V

    .line 906
    .restart local v77    # "mSdIntent":Landroid/content/Intent;
    const-string v121, "android.settings.accessibility.BABYCRYING_DETECTING"

    move-object/from16 v0, v77

    move-object/from16 v1, v121

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 907
    const-string v121, "mNotify"

    const/16 v122, 0x1

    move-object/from16 v0, v77

    move-object/from16 v1, v121

    move/from16 v2, v122

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 908
    const/high16 v121, 0x24800000

    move-object/from16 v0, v77

    move/from16 v1, v121

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 910
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v121, v0

    const/16 v122, 0x0

    const/high16 v123, 0x10000000

    move-object/from16 v0, v121

    move/from16 v1, v122

    move-object/from16 v2, v77

    move/from16 v3, v123

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v101

    .line 911
    .restart local v101    # "pie":Landroid/app/PendingIntent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v121, v0

    invoke-virtual/range {v121 .. v121}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v121

    const-string v122, "isBabyCryingEnable"

    const/16 v123, 0x0

    invoke-static/range {v121 .. v123}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 913
    new-instance v121, Landroid/support/v4/app/NotificationCompat$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v122, v0

    invoke-direct/range {v121 .. v122}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v122, v0

    const v123, 0x7f0a0aeb

    invoke-virtual/range {v122 .. v123}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v122

    invoke-virtual/range {v121 .. v122}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v121

    const v122, 0x7f0205f5

    invoke-virtual/range {v121 .. v122}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v121

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v122, v0

    const v123, 0x7f0a0aef

    invoke-virtual/range {v122 .. v123}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v122

    invoke-virtual/range {v121 .. v122}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v121

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v122, v0

    const v123, 0x7f0a0aef

    invoke-virtual/range {v122 .. v123}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v122

    invoke-virtual/range {v121 .. v122}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v121

    const/16 v122, 0x1

    invoke-virtual/range {v121 .. v122}, Landroid/support/v4/app/NotificationCompat$Builder;->setOngoing(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v121

    invoke-virtual/range {v121 .. v121}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v92

    .line 920
    .restart local v92    # "notification":Landroid/app/Notification;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v121, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v122, v0

    const v123, 0x7f0a0aeb

    invoke-virtual/range {v122 .. v123}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v122

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v123, v0

    const v124, 0x7f0a0aef

    invoke-virtual/range {v123 .. v124}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v123

    move-object/from16 v0, v92

    move-object/from16 v1, v121

    move-object/from16 v2, v122

    move-object/from16 v3, v123

    move-object/from16 v4, v101

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 922
    move-object/from16 v0, v94

    move-object/from16 v1, v92

    invoke-virtual {v0, v7, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 925
    .end local v7    # "SOUND_DETECTOR_RUNNING_ID":I
    .end local v77    # "mSdIntent":Landroid/content/Intent;
    .end local v92    # "notification":Landroid/app/Notification;
    .end local v94    # "notificationManager":Landroid/app/NotificationManager;
    .end local v101    # "pie":Landroid/app/PendingIntent;
    :cond_53
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v121, v0

    invoke-virtual/range {v121 .. v121}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v121

    const-string v122, "doorbell_detector"

    const/16 v123, 0x0

    invoke-static/range {v121 .. v123}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v121

    const/16 v122, 0x1

    move/from16 v0, v121

    move/from16 v1, v122

    if-ne v0, v1, :cond_71

    const/16 v58, 0x1

    .line 926
    .local v58, "isDoorbellDetectorOn":Z
    :goto_19
    if-eqz v58, :cond_54

    .line 927
    const v7, 0xd21bc

    .line 928
    .restart local v7    # "SOUND_DETECTOR_RUNNING_ID":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v121, v0

    const-string v122, "notification"

    invoke-virtual/range {v121 .. v122}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v94

    check-cast v94, Landroid/app/NotificationManager;

    .line 932
    .restart local v94    # "notificationManager":Landroid/app/NotificationManager;
    new-instance v77, Landroid/content/Intent;

    invoke-direct/range {v77 .. v77}, Landroid/content/Intent;-><init>()V

    .line 933
    .restart local v77    # "mSdIntent":Landroid/content/Intent;
    const-string v121, "android.settings.accessibility.DOORBELL_DETECTING"

    move-object/from16 v0, v77

    move-object/from16 v1, v121

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 934
    const-string v121, "mNotify"

    const/16 v122, 0x1

    move-object/from16 v0, v77

    move-object/from16 v1, v121

    move/from16 v2, v122

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 935
    const/high16 v121, 0x24800000

    move-object/from16 v0, v77

    move/from16 v1, v121

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 937
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v121, v0

    const/16 v122, 0x0

    const/high16 v123, 0x10000000

    move-object/from16 v0, v121

    move/from16 v1, v122

    move-object/from16 v2, v77

    move/from16 v3, v123

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v101

    .line 938
    .restart local v101    # "pie":Landroid/app/PendingIntent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v121, v0

    invoke-virtual/range {v121 .. v121}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v121

    const-string v122, "isDoorbellEnable"

    const/16 v123, 0x0

    invoke-static/range {v121 .. v123}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 940
    new-instance v121, Landroid/support/v4/app/NotificationCompat$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v122, v0

    invoke-direct/range {v121 .. v122}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v122, v0

    const v123, 0x7f0a0aee

    invoke-virtual/range {v122 .. v123}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v122

    invoke-virtual/range {v121 .. v122}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v121

    const v122, 0x7f0205f5

    invoke-virtual/range {v121 .. v122}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v121

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v122, v0

    const v123, 0x7f0a0af1

    invoke-virtual/range {v122 .. v123}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v122

    invoke-virtual/range {v121 .. v122}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v121

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v122, v0

    const v123, 0x7f0a0af1

    invoke-virtual/range {v122 .. v123}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v122

    invoke-virtual/range {v121 .. v122}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v121

    const/16 v122, 0x1

    invoke-virtual/range {v121 .. v122}, Landroid/support/v4/app/NotificationCompat$Builder;->setOngoing(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v121

    invoke-virtual/range {v121 .. v121}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v92

    .line 947
    .restart local v92    # "notification":Landroid/app/Notification;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v121, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v122, v0

    const v123, 0x7f0a0aee

    invoke-virtual/range {v122 .. v123}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v122

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v123, v0

    const v124, 0x7f0a0af1

    invoke-virtual/range {v123 .. v124}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v123

    move-object/from16 v0, v92

    move-object/from16 v1, v121

    move-object/from16 v2, v122

    move-object/from16 v3, v123

    move-object/from16 v4, v101

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 949
    move-object/from16 v0, v94

    move-object/from16 v1, v92

    invoke-virtual {v0, v7, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 952
    .end local v7    # "SOUND_DETECTOR_RUNNING_ID":I
    .end local v77    # "mSdIntent":Landroid/content/Intent;
    .end local v92    # "notification":Landroid/app/Notification;
    .end local v94    # "notificationManager":Landroid/app/NotificationManager;
    .end local v101    # "pie":Landroid/app/PendingIntent;
    :cond_54
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/SettingsIntentReceiver;->makeSecurityWarningNotificaiton()V

    .line 954
    invoke-direct/range {p0 .. p1}, Lcom/android/settings/SettingsIntentReceiver;->makeActiveKeyNotification(Landroid/content/Context;)V

    .line 956
    invoke-direct/range {p0 .. p1}, Lcom/android/settings/SettingsIntentReceiver;->sendDrivingmodeNotification(Landroid/content/Context;)V

    .line 957
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v121, v0

    invoke-virtual/range {v121 .. v121}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v121

    const-string v122, "boottime"

    const/16 v123, 0x0

    invoke-static/range {v121 .. v123}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v48

    .line 959
    .local v48, "firstBoot":I
    if-nez v48, :cond_74

    .line 993
    new-instance v6, Landroid/content/Intent;

    const-string v121, "android.intent.action.DOWNLOADABLE"

    move-object/from16 v0, v121

    invoke-direct {v6, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 994
    .local v6, "LauncherIntent":Landroid/content/Intent;
    const-string v121, "android.intent.category.DOWNLOADABLE"

    move-object/from16 v0, v121

    invoke-virtual {v6, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 995
    const/16 v81, 0x0

    .line 996
    .local v81, "mTempList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const-string v68, ""

    .line 997
    .local v68, "mAppinfo":Ljava/lang/String;
    const/16 v121, 0xa0

    move-object/from16 v0, v76

    move/from16 v1, v121

    invoke-virtual {v0, v6, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v81

    .line 998
    const/16 v52, 0x0

    .local v52, "i":I
    :goto_1a
    invoke-interface/range {v81 .. v81}, Ljava/util/List;->size()I

    move-result v121

    move/from16 v0, v52

    move/from16 v1, v121

    if-ge v0, v1, :cond_72

    .line 1000
    :try_start_4
    move-object/from16 v0, v81

    move/from16 v1, v52

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v121

    check-cast v121, Landroid/content/pm/ResolveInfo;

    move-object/from16 v0, v121

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v121, v0

    move-object/from16 v0, v121

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    move-object/from16 v86, v0

    .line 1001
    .local v86, "metadata":Landroid/os/Bundle;
    const-string v121, "com.sec.ENABLE_DOWNLOADABLE_LIST"

    move-object/from16 v0, v86

    move-object/from16 v1, v121

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v121

    if-eqz v121, :cond_55

    .line 1002
    new-instance v121, Ljava/lang/StringBuilder;

    invoke-direct/range {v121 .. v121}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v121

    move-object/from16 v1, v68

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v122

    move-object/from16 v0, v81

    move/from16 v1, v52

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v121

    check-cast v121, Landroid/content/pm/ResolveInfo;

    move-object/from16 v0, v121

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v121, v0

    move-object/from16 v0, v121

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v121, v0

    move-object/from16 v0, v122

    move-object/from16 v1, v121

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v121

    const-string v122, "/"

    invoke-virtual/range {v121 .. v122}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v122

    move-object/from16 v0, v81

    move/from16 v1, v52

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v121

    check-cast v121, Landroid/content/pm/ResolveInfo;

    move-object/from16 v0, v121

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v121, v0

    move-object/from16 v0, v121

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v121, v0

    move-object/from16 v0, v122

    move-object/from16 v1, v121

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v121

    const-string v122, ";"

    invoke-virtual/range {v121 .. v122}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v121

    invoke-virtual/range {v121 .. v121}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    move-result-object v68

    .line 998
    .end local v86    # "metadata":Landroid/os/Bundle;
    :cond_55
    :goto_1b
    add-int/lit8 v52, v52, 0x1

    goto/16 :goto_1a

    .line 548
    .end local v6    # "LauncherIntent":Landroid/content/Intent;
    .end local v11    # "active_app_list_for_reset":Ljava/lang/String;
    .end local v16    # "audio_balance":I
    .end local v34    # "defaultMem":J
    .end local v48    # "firstBoot":I
    .end local v52    # "i":I
    .end local v58    # "isDoorbellDetectorOn":Z
    .end local v59    # "isOn":Z
    .end local v62    # "isSoundDetectorOn":Z
    .end local v63    # "isSupportScreenMode":Z
    .end local v68    # "mAppinfo":Ljava/lang/String;
    .end local v70    # "mDefaultMemory":Ljava/lang/String;
    .end local v80    # "mStatusBar":Landroid/app/StatusBarManager;
    .end local v81    # "mTempList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v95    # "oldScreenTimOut":I
    .end local v96    # "oldStayAwake":I
    .end local v97    # "orgList":Ljava/lang/String;
    .end local v112    # "sharedPreferences":Landroid/content/SharedPreferences;
    :cond_56
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v121, v0

    invoke-virtual/range {v121 .. v121}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v121

    const v122, 0x10e004e

    invoke-virtual/range {v121 .. v122}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v36

    .line 552
    .local v36, "default_brightness":I
    const-string v121, "DCM"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v122

    invoke-virtual/range {v121 .. v122}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v121

    if-eqz v121, :cond_59

    .line 553
    const-string v121, "hltedcm"

    const-string v122, "ro.product.device"

    invoke-static/range {v122 .. v122}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v122

    invoke-virtual/range {v121 .. v122}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v121

    if-nez v121, :cond_57

    const-string v121, "SC-01F"

    const-string v122, "ro.product.model"

    invoke-static/range {v122 .. v122}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v122

    invoke-virtual/range {v121 .. v122}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v121

    if-nez v121, :cond_57

    const-string v121, "hltejs01dcm"

    const-string v122, "ro.product.device"

    invoke-static/range {v122 .. v122}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v122

    invoke-virtual/range {v121 .. v122}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v121

    if-nez v121, :cond_57

    const-string v121, "SC-02F"

    const-string v122, "ro.product.model"

    invoke-static/range {v122 .. v122}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v122

    invoke-virtual/range {v121 .. v122}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v121

    if-nez v121, :cond_57

    const-string v121, "kltedcm"

    const-string v122, "ro.product.device"

    invoke-static/range {v122 .. v122}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v122

    invoke-virtual/range {v121 .. v122}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v121

    if-nez v121, :cond_57

    const-string v121, "SC-04F"

    const-string v122, "ro.product.model"

    invoke-static/range {v122 .. v122}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v122

    invoke-virtual/range {v121 .. v122}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v121

    if-nez v121, :cond_57

    const-string v121, "kltedcmactive"

    const-string v122, "ro.product.device"

    invoke-static/range {v122 .. v122}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v122

    invoke-virtual/range {v121 .. v122}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v121

    if-nez v121, :cond_57

    const-string v121, "SC-02G"

    const-string v122, "ro.product.model"

    invoke-static/range {v122 .. v122}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v122

    invoke-virtual/range {v121 .. v122}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v121

    if-nez v121, :cond_57

    const-string v121, "sltedcm"

    const-string v122, "ro.product.device"

    invoke-static/range {v122 .. v122}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v122

    invoke-virtual/range {v121 .. v122}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v121

    if-nez v121, :cond_57

    const-string v121, "trltedcm"

    const-string v122, "ro.product.device"

    invoke-static/range {v122 .. v122}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v122

    invoke-virtual/range {v121 .. v122}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v121

    if-nez v121, :cond_57

    const-string v121, "tbltedcm"

    const-string v122, "ro.product.device"

    invoke-static/range {v122 .. v122}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v122

    invoke-virtual/range {v121 .. v122}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v121

    if-nez v121, :cond_57

    const-string v121, "SC-01G"

    const-string v122, "ro.product.model"

    invoke-static/range {v122 .. v122}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v122

    invoke-virtual/range {v121 .. v122}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v121

    if-nez v121, :cond_57

    const-string v121, "klimtltedcm"

    const-string v122, "ro.product.device"

    invoke-static/range {v122 .. v122}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v122

    invoke-virtual/range {v121 .. v122}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v121

    if-nez v121, :cond_57

    const-string v121, "SC-03G"

    const-string v122, "ro.product.model"

    invoke-static/range {v122 .. v122}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v122

    invoke-virtual/range {v121 .. v122}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v121

    if-eqz v121, :cond_59

    .line 563
    :cond_57
    const-string v121, "com.nttdocomo.android.dhome"

    move-object/from16 v0, p0

    move-object/from16 v1, v121

    invoke-direct {v0, v1}, Lcom/android/settings/SettingsIntentReceiver;->isPreffered(Ljava/lang/String;)Z

    move-result v121

    if-eqz v121, :cond_59

    .line 564
    const-string v121, "hltedcm"

    const-string v122, "ro.product.device"

    invoke-static/range {v122 .. v122}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v122

    invoke-virtual/range {v121 .. v122}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v121

    if-nez v121, :cond_58

    const-string v121, "SC-01F"

    const-string v122, "ro.product.model"

    invoke-static/range {v122 .. v122}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v122

    invoke-virtual/range {v121 .. v122}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v121

    if-eqz v121, :cond_5b

    .line 566
    :cond_58
    const/16 v36, 0x46

    .line 593
    :cond_59
    :goto_1c
    const-string v121, "screen_brightness"

    move-object/from16 v0, v107

    move-object/from16 v1, v121

    move/from16 v2, v36

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 594
    invoke-static/range {p1 .. p1}, Lcom/android/settings/Utils;->isSupportLightSensor(Landroid/content/Context;)Z

    move-result v121

    if-eqz v121, :cond_5a

    .line 595
    const-string v121, "screen_brightness_mode"

    const/16 v122, 0x1

    move-object/from16 v0, v107

    move-object/from16 v1, v121

    move/from16 v2, v122

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 597
    :cond_5a
    const-string v121, "first_sim_brightness_flag"

    const/16 v122, 0x1

    move-object/from16 v0, v107

    move-object/from16 v1, v121

    move/from16 v2, v122

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_c

    .line 567
    :cond_5b
    const-string v121, "hltejs01dcm"

    const-string v122, "ro.product.device"

    invoke-static/range {v122 .. v122}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v122

    invoke-virtual/range {v121 .. v122}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v121

    if-nez v121, :cond_5c

    const-string v121, "SC-02F"

    const-string v122, "ro.product.model"

    invoke-static/range {v122 .. v122}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v122

    invoke-virtual/range {v121 .. v122}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v121

    if-eqz v121, :cond_5d

    .line 569
    :cond_5c
    const/16 v36, 0x50

    goto :goto_1c

    .line 570
    :cond_5d
    const-string v121, "kltedcm"

    const-string v122, "ro.product.device"

    invoke-static/range {v122 .. v122}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v122

    invoke-virtual/range {v121 .. v122}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v121

    if-nez v121, :cond_5e

    const-string v121, "SC-04F"

    const-string v122, "ro.product.model"

    invoke-static/range {v122 .. v122}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v122

    invoke-virtual/range {v121 .. v122}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v121

    if-eqz v121, :cond_5f

    .line 572
    :cond_5e
    const/16 v36, 0x28

    goto :goto_1c

    .line 573
    :cond_5f
    const-string v121, "sltedcm"

    const-string v122, "ro.product.device"

    invoke-static/range {v122 .. v122}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v122

    invoke-virtual/range {v121 .. v122}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v121

    if-eqz v121, :cond_60

    .line 575
    const/16 v36, 0x2d

    goto :goto_1c

    .line 576
    :cond_60
    const-string v121, "trltedcm"

    const-string v122, "ro.product.device"

    invoke-static/range {v122 .. v122}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v122

    invoke-virtual/range {v121 .. v122}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v121

    if-eqz v121, :cond_61

    .line 578
    const/16 v36, 0x2d

    goto/16 :goto_1c

    .line 579
    :cond_61
    const-string v121, "tbltedcm"

    const-string v122, "ro.product.device"

    invoke-static/range {v122 .. v122}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v122

    invoke-virtual/range {v121 .. v122}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v121

    if-nez v121, :cond_62

    const-string v121, "SC-01G"

    const-string v122, "ro.product.model"

    invoke-static/range {v122 .. v122}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v122

    invoke-virtual/range {v121 .. v122}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v121

    if-eqz v121, :cond_63

    .line 581
    :cond_62
    const/16 v36, 0x2d

    goto/16 :goto_1c

    .line 582
    :cond_63
    const-string v121, "kltedcmactive"

    const-string v122, "ro.product.device"

    invoke-static/range {v122 .. v122}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v122

    invoke-virtual/range {v121 .. v122}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v121

    if-nez v121, :cond_64

    const-string v121, "SC-02G"

    const-string v122, "ro.product.model"

    invoke-static/range {v122 .. v122}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v122

    invoke-virtual/range {v121 .. v122}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v121

    if-eqz v121, :cond_65

    .line 584
    :cond_64
    const/16 v36, 0x2d

    goto/16 :goto_1c

    .line 585
    :cond_65
    const-string v121, "klimtltedcm"

    const-string v122, "ro.product.device"

    invoke-static/range {v122 .. v122}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v122

    invoke-virtual/range {v121 .. v122}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v121

    if-nez v121, :cond_66

    const-string v121, "SC-03G"

    const-string v122, "ro.product.model"

    invoke-static/range {v122 .. v122}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v122

    invoke-virtual/range {v121 .. v122}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v121

    if-eqz v121, :cond_59

    .line 587
    :cond_66
    const/16 v36, 0x34

    goto/16 :goto_1c

    .line 606
    .end local v36    # "default_brightness":I
    :cond_67
    const-string v121, "adb_enabled_changed_by_usb_mode"

    const/16 v122, 0x0

    move-object/from16 v0, v107

    move-object/from16 v1, v121

    move/from16 v2, v122

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v121

    const/16 v122, 0x1

    move/from16 v0, v121

    move/from16 v1, v122

    if-ne v0, v1, :cond_3a

    const-string v121, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v122

    invoke-virtual/range {v121 .. v122}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v121

    if-eqz v121, :cond_3a

    const-string v121, "ro.boot_recovery"

    const/16 v122, 0x0

    invoke-static/range {v121 .. v122}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v121

    const/16 v122, 0x4

    move/from16 v0, v121

    move/from16 v1, v122

    if-eq v0, v1, :cond_3a

    sget-object v121, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v122, "user"

    invoke-virtual/range {v121 .. v122}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v121

    if-eqz v121, :cond_3a

    .line 607
    const-string v121, "adb_enabled_changed_by_usb_mode"

    const/16 v122, 0x0

    move-object/from16 v0, v107

    move-object/from16 v1, v121

    move/from16 v2, v122

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 608
    const-string v121, "adb_enabled"

    const/16 v122, 0x0

    move-object/from16 v0, v107

    move-object/from16 v1, v121

    move/from16 v2, v122

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_d

    .line 630
    :cond_68
    const/16 v47, 0x0

    goto/16 :goto_e

    .line 635
    :catch_2
    move-exception v40

    .line 636
    .local v40, "e":Ljava/lang/Exception;
    const-string v121, "SettingsIntentReceiver"

    const-string v122, " Error changing font size for myprofile"

    invoke-static/range {v121 .. v122}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_f

    .line 641
    .end local v40    # "e":Ljava/lang/Exception;
    :cond_69
    const/16 v121, 0x0

    goto/16 :goto_10

    .line 648
    :cond_6a
    const/16 v121, 0x0

    goto/16 :goto_11

    .line 653
    :cond_6b
    const/16 v59, 0x0

    goto/16 :goto_12

    .line 661
    .restart local v59    # "isOn":Z
    .restart local v80    # "mStatusBar":Landroid/app/StatusBarManager;
    :cond_6c
    const-string v121, "smart_network"

    const/16 v122, 0x0

    move-object/from16 v0, v80

    move-object/from16 v1, v121

    move/from16 v2, v122

    invoke-virtual {v0, v1, v2}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    goto/16 :goto_13

    .line 675
    .restart local v16    # "audio_balance":I
    .restart local v53    # "iAccessibilityManager":Landroid/view/accessibility/IAccessibilityManager;
    :cond_6d
    const/16 v121, 0x0

    goto/16 :goto_14

    .line 676
    :catch_3
    move-exception v40

    .line 678
    .local v40, "e":Landroid/os/RemoteException;
    invoke-virtual/range {v40 .. v40}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_15

    .line 736
    .end local v40    # "e":Landroid/os/RemoteException;
    .end local v53    # "iAccessibilityManager":Landroid/view/accessibility/IAccessibilityManager;
    .restart local v63    # "isSupportScreenMode":Z
    :cond_6e
    const-string v121, "screen_mode_setting"

    const/16 v122, 0x1

    move-object/from16 v0, v107

    move-object/from16 v1, v121

    move/from16 v2, v122

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v121

    invoke-static/range {v121 .. v121}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeUserMode(I)Z

    goto/16 :goto_16

    .line 763
    .restart local v112    # "sharedPreferences":Landroid/content/SharedPreferences;
    :cond_6f
    const/16 v121, 0x7530

    goto/16 :goto_17

    .line 898
    .restart local v11    # "active_app_list_for_reset":Ljava/lang/String;
    .restart local v34    # "defaultMem":J
    .restart local v70    # "mDefaultMemory":Ljava/lang/String;
    .restart local v95    # "oldScreenTimOut":I
    .restart local v96    # "oldStayAwake":I
    .restart local v97    # "orgList":Ljava/lang/String;
    :cond_70
    const/16 v62, 0x0

    goto/16 :goto_18

    .line 925
    .restart local v62    # "isSoundDetectorOn":Z
    :cond_71
    const/16 v58, 0x0

    goto/16 :goto_19

    .line 1004
    .restart local v6    # "LauncherIntent":Landroid/content/Intent;
    .restart local v48    # "firstBoot":I
    .restart local v52    # "i":I
    .restart local v58    # "isDoorbellDetectorOn":Z
    .restart local v68    # "mAppinfo":Ljava/lang/String;
    .restart local v81    # "mTempList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :catch_4
    move-exception v40

    .line 1005
    .local v40, "e":Ljava/lang/Exception;
    const-string v121, "SettingsIntentReceiver"

    const-string v122, "Can not read metadata"

    invoke-static/range {v121 .. v122}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1b

    .line 1008
    .end local v40    # "e":Ljava/lang/Exception;
    :cond_72
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v121, v0

    invoke-virtual/range {v121 .. v121}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v121

    const-string v122, "preload_list"

    move-object/from16 v0, v121

    move-object/from16 v1, v122

    move-object/from16 v2, v68

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1009
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v121, v0

    invoke-static/range {v121 .. v121}, Lcom/android/settings/Utils;->isDualFolderType(Landroid/content/Context;)Z

    move-result v121

    if-eqz v121, :cond_73

    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v121

    if-eqz v121, :cond_73

    .line 1011
    :try_start_5
    const-string v121, "SettingsIntentReceiver"

    const-string v122, "writeFontSize"

    invoke-static/range {v121 .. v122}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1012
    new-instance v28, Landroid/content/res/Configuration;

    invoke-direct/range {v28 .. v28}, Landroid/content/res/Configuration;-><init>()V

    .line 1013
    .local v28, "curConfig":Landroid/content/res/Configuration;
    const v121, 0x3fae147b    # 1.36f

    move/from16 v0, v121

    move-object/from16 v1, v28

    iput v0, v1, Landroid/content/res/Configuration;->fontScale:F

    .line 1014
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v121

    move-object/from16 v0, v121

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->updatePersistentConfiguration(Landroid/content/res/Configuration;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_5

    .line 1019
    .end local v28    # "curConfig":Landroid/content/res/Configuration;
    :cond_73
    :goto_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v121, v0

    invoke-virtual/range {v121 .. v121}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v121

    const-string v122, "boottime"

    const/16 v123, 0x1

    invoke-static/range {v121 .. v123}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1023
    .end local v6    # "LauncherIntent":Landroid/content/Intent;
    .end local v52    # "i":I
    .end local v68    # "mAppinfo":Ljava/lang/String;
    .end local v81    # "mTempList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_74
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v121, v0

    invoke-virtual/range {v121 .. v121}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v121

    const-string v122, "com.sec.feature.spen_usp"

    invoke-virtual/range {v121 .. v122}, Landroid/content/pm/PackageManager;->getSystemFeatureLevel(Ljava/lang/String;)I

    move-result v118

    .line 1024
    .local v118, "uspLevel":I
    const/16 v121, 0x1

    move/from16 v0, v118

    move/from16 v1, v121

    if-le v0, v1, :cond_78

    .line 1025
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v121, v0

    invoke-virtual/range {v121 .. v121}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v121

    const-string v122, "handwriting_language"

    invoke-static/range {v121 .. v122}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 1026
    .local v29, "currentLang":Ljava/lang/String;
    if-nez v29, :cond_75

    .line 1027
    const-string v29, ""

    .line 1028
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/android/settings/SettingsIntentReceiver;->setHandwritingLanguage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v110

    .line 1030
    .local v110, "setLanguage":Ljava/lang/String;
    const-string v121, "SettingsIntentReceiver"

    new-instance v122, Ljava/lang/StringBuilder;

    invoke-direct/range {v122 .. v122}, Ljava/lang/StringBuilder;-><init>()V

    const-string v123, "handwriting_language setLanguage : "

    invoke-virtual/range {v122 .. v123}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v122

    move-object/from16 v0, v122

    move-object/from16 v1, v110

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v122

    invoke-virtual/range {v122 .. v122}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v122

    invoke-static/range {v121 .. v122}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1031
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v121, v0

    invoke-virtual/range {v121 .. v121}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v121

    const-string v122, "handwriting_language"

    move-object/from16 v0, v121

    move-object/from16 v1, v122

    move-object/from16 v2, v110

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1032
    new-instance v50, Landroid/content/Intent;

    const-string v121, "com.android.setting.HANDWRITING_LANGUAGE_CHANGED"

    move-object/from16 v0, v50

    move-object/from16 v1, v121

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1033
    .local v50, "handwritingIntent":Landroid/content/Intent;
    const-string v121, "language"

    move-object/from16 v0, v50

    move-object/from16 v1, v121

    move-object/from16 v2, v110

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1034
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v121, v0

    move-object/from16 v0, v121

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1053
    .end local v29    # "currentLang":Ljava/lang/String;
    .end local v50    # "handwritingIntent":Landroid/content/Intent;
    .end local v110    # "setLanguage":Ljava/lang/String;
    :cond_75
    :goto_1e
    const-string v121, "block_emergency_message"

    const/16 v122, 0x0

    move-object/from16 v0, v107

    move-object/from16 v1, v121

    move/from16 v2, v122

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1054
    const-string v121, "safetycare_geolookout_registering"

    const/16 v122, 0x0

    move-object/from16 v0, v107

    move-object/from16 v1, v121

    move/from16 v2, v122

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1064
    const-string v121, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_BLACKUI_QUICK_ACCES"

    invoke-static/range {v121 .. v121}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v121

    if-eqz v121, :cond_76

    .line 1065
    const-string v121, "quick_application_access"

    const/16 v122, 0x1

    move-object/from16 v0, v107

    move-object/from16 v1, v121

    move/from16 v2, v122

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v121

    if-lez v121, :cond_7a

    const/16 v45, 0x1

    .line 1067
    .local v45, "enabled":Z
    :goto_1f
    invoke-static/range {v45 .. v45}, Lcom/android/settings/Utils;->enableQuickApplicationAccess(Z)Z

    .line 1071
    .end local v45    # "enabled":Z
    :cond_76
    const-string v121, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_LED_INDICATOR"

    invoke-static/range {v121 .. v121}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v121

    if-eqz v121, :cond_77

    const/16 v121, 0x0

    invoke-static/range {v121 .. v121}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v121

    if-nez v121, :cond_77

    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v121

    if-eqz v121, :cond_77

    .line 1073
    const-string v121, "dormant_disable_notifications"

    const/16 v122, 0x0

    move-object/from16 v0, v107

    move-object/from16 v1, v121

    move/from16 v2, v122

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v121

    const/16 v122, 0x1

    move/from16 v0, v121

    move/from16 v1, v122

    if-ne v0, v1, :cond_7b

    const/16 v119, 0x1

    .line 1074
    .local v119, "value":Z
    :goto_20
    const-string v122, "dormant_disable_led_indicator"

    if-eqz v119, :cond_7c

    const/16 v121, 0x1

    :goto_21
    move-object/from16 v0, v107

    move-object/from16 v1, v122

    move/from16 v2, v121

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1077
    .end local v119    # "value":Z
    :cond_77
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v121

    const-string v122, "CscFeature_Setting_ConfigOpeartorHomeMode"

    invoke-virtual/range {v121 .. v122}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v121

    const-string v122, "notuseteasymode"

    invoke-virtual/range {v121 .. v122}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v121

    if-eqz v121, :cond_5

    const/16 v121, 0x1

    const-string v122, "op_mode_switch"

    const/16 v123, 0x0

    move-object/from16 v0, v107

    move-object/from16 v1, v122

    move/from16 v2, v123

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v122

    move/from16 v0, v121

    move/from16 v1, v122

    if-ne v0, v1, :cond_5

    .line 1079
    const-string v121, "easy_mode_switch"

    const/16 v122, 0x1

    move-object/from16 v0, v107

    move-object/from16 v1, v121

    move/from16 v2, v122

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1080
    const-string v121, "op_mode_switch"

    const/16 v122, 0x0

    move-object/from16 v0, v107

    move-object/from16 v1, v121

    move/from16 v2, v122

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 1015
    .end local v118    # "uspLevel":I
    .restart local v6    # "LauncherIntent":Landroid/content/Intent;
    .restart local v52    # "i":I
    .restart local v68    # "mAppinfo":Ljava/lang/String;
    .restart local v81    # "mTempList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :catch_5
    move-exception v40

    .line 1016
    .local v40, "e":Landroid/os/RemoteException;
    const-string v121, "SettingsIntentReceiver"

    const-string v122, "Unable to save font size"

    invoke-static/range {v121 .. v122}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1d

    .line 1036
    .end local v6    # "LauncherIntent":Landroid/content/Intent;
    .end local v40    # "e":Landroid/os/RemoteException;
    .end local v52    # "i":I
    .end local v68    # "mAppinfo":Ljava/lang/String;
    .end local v81    # "mTempList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v118    # "uspLevel":I
    :cond_78
    const-string v121, "DCM"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v122

    invoke-virtual/range {v121 .. v122}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v121

    if-eqz v121, :cond_75

    .line 1038
    const-string v121, "hltejs01dcm"

    const-string v122, "ro.product.device"

    invoke-static/range {v122 .. v122}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v122

    invoke-virtual/range {v121 .. v122}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v121

    if-nez v121, :cond_79

    const-string v121, "SC-02F"

    const-string v122, "ro.product.model"

    invoke-static/range {v122 .. v122}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v122

    invoke-virtual/range {v121 .. v122}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v121

    if-eqz v121, :cond_75

    .line 1039
    :cond_79
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v121, v0

    invoke-virtual/range {v121 .. v121}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v121

    const-string v122, "handwriting_language"

    invoke-static/range {v121 .. v122}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 1040
    .restart local v29    # "currentLang":Ljava/lang/String;
    if-nez v29, :cond_75

    .line 1041
    const-string v110, "ja_JP"

    .line 1042
    .restart local v110    # "setLanguage":Ljava/lang/String;
    const-string v121, "SettingsIntentReceiver"

    new-instance v122, Ljava/lang/StringBuilder;

    invoke-direct/range {v122 .. v122}, Ljava/lang/StringBuilder;-><init>()V

    const-string v123, "handwriting_language setLanguage : "

    invoke-virtual/range {v122 .. v123}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v122

    move-object/from16 v0, v122

    move-object/from16 v1, v110

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v122

    invoke-virtual/range {v122 .. v122}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v122

    invoke-static/range {v121 .. v122}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1043
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v121, v0

    invoke-virtual/range {v121 .. v121}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v121

    const-string v122, "handwriting_language"

    move-object/from16 v0, v121

    move-object/from16 v1, v122

    move-object/from16 v2, v110

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1044
    new-instance v50, Landroid/content/Intent;

    const-string v121, "com.android.setting.HANDWRITING_LANGUAGE_CHANGED"

    move-object/from16 v0, v50

    move-object/from16 v1, v121

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1045
    .restart local v50    # "handwritingIntent":Landroid/content/Intent;
    const-string v121, "language"

    move-object/from16 v0, v50

    move-object/from16 v1, v121

    move-object/from16 v2, v110

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1046
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v121, v0

    move-object/from16 v0, v121

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1e

    .line 1065
    .end local v29    # "currentLang":Ljava/lang/String;
    .end local v50    # "handwritingIntent":Landroid/content/Intent;
    .end local v110    # "setLanguage":Ljava/lang/String;
    :cond_7a
    const/16 v45, 0x0

    goto/16 :goto_1f

    .line 1073
    :cond_7b
    const/16 v119, 0x0

    goto/16 :goto_20

    .line 1074
    .restart local v119    # "value":Z
    :cond_7c
    const/16 v121, 0x0

    goto/16 :goto_21

    .line 1082
    .end local v11    # "active_app_list_for_reset":Ljava/lang/String;
    .end local v16    # "audio_balance":I
    .end local v34    # "defaultMem":J
    .end local v48    # "firstBoot":I
    .end local v49    # "first_sim_brightness_flag":I
    .end local v58    # "isDoorbellDetectorOn":Z
    .end local v59    # "isOn":Z
    .end local v62    # "isSoundDetectorOn":Z
    .end local v63    # "isSupportScreenMode":Z
    .end local v70    # "mDefaultMemory":Ljava/lang/String;
    .end local v80    # "mStatusBar":Landroid/app/StatusBarManager;
    .end local v95    # "oldScreenTimOut":I
    .end local v96    # "oldStayAwake":I
    .end local v97    # "orgList":Ljava/lang/String;
    .end local v112    # "sharedPreferences":Landroid/content/SharedPreferences;
    .end local v118    # "uspLevel":I
    .end local v119    # "value":Z
    :cond_7d
    const-string v121, "android.intent.action.DOCK_EVENT"

    move-object/from16 v0, v121

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v121

    if-eqz v121, :cond_83

    .line 1083
    const-string v121, "android.intent.extra.DOCK_STATE"

    const/16 v122, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v121

    move/from16 v2, v122

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v114

    .line 1084
    .restart local v114    # "state":I
    const-string v121, "SettingsIntentReceiver"

    new-instance v122, Ljava/lang/StringBuilder;

    invoke-direct/range {v122 .. v122}, Ljava/lang/StringBuilder;-><init>()V

    const-string v123, "Received dock event with state: "

    invoke-virtual/range {v122 .. v123}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v122

    move-object/from16 v0, v122

    move/from16 v1, v114

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v122

    invoke-virtual/range {v122 .. v122}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v122

    invoke-static/range {v121 .. v122}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1085
    const-string v121, "cradle_enable"

    const/16 v122, 0x0

    move-object/from16 v0, v107

    move-object/from16 v1, v121

    move/from16 v2, v122

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v27

    .line 1087
    .local v27, "cradleEnabled":I
    if-nez v114, :cond_80

    .line 1089
    const-string v121, "cradle_connect"

    const/16 v122, 0x0

    move-object/from16 v0, v107

    move-object/from16 v1, v121

    move/from16 v2, v122

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1090
    if-eqz v27, :cond_7f

    .line 1091
    const-string v121, "SettingsIntentReceiver"

    const-string v122, "Cradle is enabled without dock"

    invoke-static/range {v121 .. v122}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1092
    new-instance v78, Landroid/content/Intent;

    invoke-direct/range {v78 .. v78}, Landroid/content/Intent;-><init>()V

    .line 1093
    .local v78, "mSendIntent":Landroid/content/Intent;
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/SettingsIntentReceiver;->checkSmartDockType()Z

    move-result v121

    if-eqz v121, :cond_7e

    .line 1094
    const-string v121, "SettingsIntentReceiver"

    const-string v122, "SmartDock connected, Do nothing"

    invoke-static/range {v121 .. v122}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1099
    :goto_22
    const-string v121, "state"

    const/16 v122, 0x0

    move-object/from16 v0, v78

    move-object/from16 v1, v121

    move/from16 v2, v122

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1100
    move-object/from16 v0, p1

    move-object/from16 v1, v78

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1101
    const-string v121, "SettingsIntentReceiver"

    const-string v122, "Sound state changed to device (state: 0)"

    invoke-static/range {v121 .. v122}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1096
    :cond_7e
    const-string v121, "com.sec.android.intent.action.INTERNAL_SPEAKER"

    move-object/from16 v0, v78

    move-object/from16 v1, v121

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_22

    .line 1103
    .end local v78    # "mSendIntent":Landroid/content/Intent;
    :cond_7f
    const-string v121, "SettingsIntentReceiver"

    new-instance v122, Ljava/lang/StringBuilder;

    invoke-direct/range {v122 .. v122}, Ljava/lang/StringBuilder;-><init>()V

    const-string v123, "Cradle is disabled1: "

    invoke-virtual/range {v122 .. v123}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v122

    move-object/from16 v0, v122

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v122

    invoke-virtual/range {v122 .. v122}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v122

    invoke-static/range {v121 .. v122}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1104
    const-string v121, "SettingsIntentReceiver"

    const-string v122, "Sound state is device"

    invoke-static/range {v121 .. v122}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1106
    :cond_80
    const/16 v121, 0x7

    move/from16 v0, v114

    move/from16 v1, v121

    if-eq v0, v1, :cond_5

    .line 1108
    const-string v121, "cradle_connect"

    const/16 v122, 0x1

    move-object/from16 v0, v107

    move-object/from16 v1, v121

    move/from16 v2, v122

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1109
    if-eqz v27, :cond_82

    .line 1110
    const-string v121, "SettingsIntentReceiver"

    const-string v122, "Cradle is enabled with dock"

    invoke-static/range {v121 .. v122}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1111
    new-instance v78, Landroid/content/Intent;

    invoke-direct/range {v78 .. v78}, Landroid/content/Intent;-><init>()V

    .line 1112
    .restart local v78    # "mSendIntent":Landroid/content/Intent;
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/SettingsIntentReceiver;->checkSmartDockType()Z

    move-result v121

    if-eqz v121, :cond_81

    .line 1113
    const-string v121, "SettingsIntentReceiver"

    const-string v122, "SmartDock connected, Do nothing"

    invoke-static/range {v121 .. v122}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1118
    :goto_23
    const-string v121, "state"

    const/16 v122, 0x1

    move-object/from16 v0, v78

    move-object/from16 v1, v121

    move/from16 v2, v122

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1119
    move-object/from16 v0, p1

    move-object/from16 v1, v78

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1120
    const-string v121, "SettingsIntentReceiver"

    const-string v122, "Sound state changed to line out (state: 1)"

    invoke-static/range {v121 .. v122}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1115
    :cond_81
    const-string v121, "com.sec.android.intent.action.INTERNAL_SPEAKER"

    move-object/from16 v0, v78

    move-object/from16 v1, v121

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_23

    .line 1122
    .end local v78    # "mSendIntent":Landroid/content/Intent;
    :cond_82
    const-string v121, "SettingsIntentReceiver"

    new-instance v122, Ljava/lang/StringBuilder;

    invoke-direct/range {v122 .. v122}, Ljava/lang/StringBuilder;-><init>()V

    const-string v123, "Cradle is disabled2: "

    invoke-virtual/range {v122 .. v123}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v122

    move-object/from16 v0, v122

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v122

    invoke-virtual/range {v122 .. v122}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v122

    invoke-static/range {v121 .. v122}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1123
    const-string v121, "SettingsIntentReceiver"

    const-string v122, "Sound state is device"

    invoke-static/range {v121 .. v122}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1128
    .end local v27    # "cradleEnabled":I
    .end local v114    # "state":I
    :cond_83
    const-string v121, "android.intent.action.CSC_CHAMELEON_UPDATE_SETTINGS"

    move-object/from16 v0, v121

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v121

    if-eqz v121, :cond_88

    .line 1129
    const-string v121, "persist.sys.roaming_menu"

    const-string v122, "roaming_menu"

    move-object/from16 v0, p2

    move-object/from16 v1, v122

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v122

    invoke-static/range {v121 .. v122}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1130
    const-string v121, "persist.sys.tether_data"

    const-string v122, "tether_data"

    move-object/from16 v0, p2

    move-object/from16 v1, v122

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v122

    invoke-static/range {v121 .. v122}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1132
    const-string v121, "operators_carrierhomepage"

    move-object/from16 v0, p2

    move-object/from16 v1, v121

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v51

    .line 1133
    .local v51, "homepage":Ljava/lang/String;
    const-string v121, "operators_brandalpha"

    move-object/from16 v0, p2

    move-object/from16 v1, v121

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 1134
    .local v23, "brandalpha":Ljava/lang/String;
    if-eqz v51, :cond_84

    const-string v121, "null"

    move-object/from16 v0, v51

    move-object/from16 v1, v121

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v121

    if-eqz v121, :cond_86

    .line 1135
    :cond_84
    const-string v121, "db_chameleon_carrierhomepage"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v122, v0

    const v123, 0x7f0a1785

    invoke-virtual/range {v122 .. v123}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v122

    move-object/from16 v0, v107

    move-object/from16 v1, v121

    move-object/from16 v2, v122

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1140
    :goto_24
    if-eqz v23, :cond_85

    const-string v121, "null"

    move-object/from16 v0, v23

    move-object/from16 v1, v121

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v121

    if-eqz v121, :cond_87

    .line 1141
    :cond_85
    const-string v121, "db_chameleon_brandalpha"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v122, v0

    const v123, 0x7f0a1786

    invoke-virtual/range {v122 .. v123}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v122

    move-object/from16 v0, v107

    move-object/from16 v1, v121

    move-object/from16 v2, v122

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_1

    .line 1137
    :cond_86
    const-string v121, "db_chameleon_carrierhomepage"

    move-object/from16 v0, v107

    move-object/from16 v1, v121

    move-object/from16 v2, v51

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_24

    .line 1143
    :cond_87
    const-string v121, "db_chameleon_brandalpha"

    move-object/from16 v0, v107

    move-object/from16 v1, v121

    move-object/from16 v2, v23

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_1

    .line 1145
    .end local v23    # "brandalpha":Ljava/lang/String;
    .end local v51    # "homepage":Ljava/lang/String;
    :cond_88
    const-string v121, "android.intent.action.MAX_BRIGHTNESS_CHANGED"

    move-object/from16 v0, v121

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v121

    if-eqz v121, :cond_89

    .line 1148
    const-string v121, "max_brightness"

    const/16 v122, -0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v121

    move/from16 v2, v122

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v74

    .line 1149
    .local v74, "mMaxBrightness":I
    const-string v121, "change_type"

    const/16 v122, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v121

    move/from16 v2, v122

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v69

    .line 1150
    .local v69, "mChangeType":I
    invoke-static/range {p1 .. p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v112

    .line 1151
    .restart local v112    # "sharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface/range {v112 .. v112}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v41

    .line 1152
    .restart local v41    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string v121, "pref_siop_brightness"

    move-object/from16 v0, v41

    move-object/from16 v1, v121

    move/from16 v2, v74

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1153
    const-string v121, "pref_siop_brightness_change_type"

    move-object/from16 v0, v41

    move-object/from16 v1, v121

    move/from16 v2, v69

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1154
    invoke-interface/range {v41 .. v41}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_1

    .line 1155
    .end local v41    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v69    # "mChangeType":I
    .end local v74    # "mMaxBrightness":I
    .end local v112    # "sharedPreferences":Landroid/content/SharedPreferences;
    :cond_89
    const-string v121, "osp.signin.SAMSUNG_ACCOUNT_SIGNOUT"

    move-object/from16 v0, v121

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v121

    if-eqz v121, :cond_8b

    .line 1156
    const-string v121, "change_alert"

    const/16 v122, 0x0

    move-object/from16 v0, v107

    move-object/from16 v1, v121

    move/from16 v2, v122

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1157
    const-string v121, "samsung_signin"

    const/16 v122, 0x0

    move-object/from16 v0, v107

    move-object/from16 v1, v121

    move/from16 v2, v122

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1158
    invoke-static/range {p1 .. p1}, Lcom/android/settings/Utils;->isSupportLMM(Landroid/content/Context;)Z

    move-result v121

    if-nez v121, :cond_8a

    .line 1159
    const-string v121, "remote_control"

    const/16 v122, 0x0

    move-object/from16 v0, v107

    move-object/from16 v1, v121

    move/from16 v2, v122

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1161
    :cond_8a
    const/16 v121, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v121

    invoke-direct {v0, v1, v2}, Lcom/android/settings/SettingsIntentReceiver;->toggleFmm(Landroid/content/Context;Z)V

    goto/16 :goto_1

    .line 1162
    :cond_8b
    const-string v121, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v122

    invoke-virtual/range {v121 .. v122}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v121

    if-eqz v121, :cond_93

    .line 1164
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v121

    invoke-virtual/range {v121 .. v121}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v121

    const-string v122, "com.sec.android.app.montblanc"

    invoke-virtual/range {v121 .. v122}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v121

    if-eqz v121, :cond_8c

    .line 1165
    invoke-static/range {p1 .. p1}, Lcom/android/settings/Utils;->getTypeOfCover(Landroid/content/Context;)I

    move-result v121

    const/16 v122, 0x64

    move/from16 v0, v121

    move/from16 v1, v122

    if-ne v0, v1, :cond_8c

    .line 1166
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v121

    const-string v122, "lockscreen_ripple_effect"

    const/16 v123, 0xa

    invoke-static/range {v121 .. v123}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1197
    :cond_8c
    invoke-static {}, Lcom/android/settings/Utils;->isChinaNAL()Z

    move-result v121

    if-eqz v121, :cond_5

    .line 1198
    const-string v121, "persist.sys.setupwizard"

    invoke-static/range {v121 .. v121}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v111

    .line 1199
    .local v111, "setupwizard":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v121

    invoke-virtual/range {v121 .. v121}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v99

    .line 1201
    .local v99, "packageName":Ljava/lang/String;
    const/16 v20, 0x0

    .line 1202
    .local v20, "bKnoxInstall":Z
    const/16 v19, 0x0

    .line 1203
    .local v19, "bGearManagerInstall":Z
    const/16 v17, 0x0

    .line 1204
    .local v17, "bCarModeUpdate":Z
    const/16 v60, 0x0

    .line 1205
    .local v60, "isOwner":Z
    const-string v121, "com.sec.android.extra.PRELOADINSTALL"

    const/16 v122, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v121

    move/from16 v2, v122

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v61

    .line 1206
    .local v61, "isPreinstall":Z
    if-eqz v99, :cond_8e

    const-string v121, "com.sec.knox.knoxappsinstaller"

    move-object/from16 v0, v99

    move-object/from16 v1, v121

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v121

    if-nez v121, :cond_8d

    const-string v121, "com.sec.android.app.knoxlauncher"

    move-object/from16 v0, v99

    move-object/from16 v1, v121

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v121

    if-nez v121, :cond_8d

    const-string v121, "com.sec.knox.app.container"

    move-object/from16 v0, v99

    move-object/from16 v1, v121

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v121

    if-nez v121, :cond_8d

    const-string v121, "sec_container_1"

    move-object/from16 v0, v99

    move-object/from16 v1, v121

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v121

    if-eqz v121, :cond_8e

    .line 1211
    :cond_8d
    const/16 v20, 0x1

    .line 1214
    :cond_8e
    if-eqz v99, :cond_8f

    const-string v121, "com.sec.android.automotive.drivelink"

    move-object/from16 v0, v99

    move-object/from16 v1, v121

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v121

    if-eqz v121, :cond_8f

    .line 1215
    const/16 v17, 0x1

    .line 1217
    :cond_8f
    if-eqz v99, :cond_91

    const-string v121, "com.samsung.accessory"

    move-object/from16 v0, v99

    move-object/from16 v1, v121

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v121

    if-nez v121, :cond_90

    const-string v121, "com.sec.android.fotaprovider"

    move-object/from16 v0, v99

    move-object/from16 v1, v121

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v121

    if-nez v121, :cond_90

    const-string v121, "com.samsung.android.gear2plugin"

    move-object/from16 v0, v99

    move-object/from16 v1, v121

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v121

    if-eqz v121, :cond_91

    .line 1221
    :cond_90
    const/16 v19, 0x1

    .line 1224
    :cond_91
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v121

    if-nez v121, :cond_92

    .line 1225
    const/16 v60, 0x1

    .line 1228
    :cond_92
    if-nez v20, :cond_5

    if-nez v61, :cond_5

    const-string v121, "FINISH"

    move-object/from16 v0, v121

    move-object/from16 v1, v111

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v121

    if-eqz v121, :cond_5

    if-nez v19, :cond_5

    if-nez v17, :cond_5

    if-eqz v60, :cond_5

    .line 1229
    new-instance v14, Landroid/os/Bundle;

    invoke-direct {v14}, Landroid/os/Bundle;-><init>()V

    .line 1230
    .local v14, "args":Landroid/os/Bundle;
    const-string v121, "package"

    move-object/from16 v0, v121

    move-object/from16 v1, v99

    invoke-virtual {v14, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1231
    new-instance v13, Landroid/content/Intent;

    invoke-direct {v13}, Landroid/content/Intent;-><init>()V

    .line 1232
    .local v13, "appOpsintent":Landroid/content/Intent;
    const-string v121, "android.intent.action.MAIN"

    move-object/from16 v0, v121

    invoke-virtual {v13, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1233
    const-string v121, "com.android.settings"

    const-string v122, "com.android.settings.Settings$AppOpsDetailsActivity"

    move-object/from16 v0, v121

    move-object/from16 v1, v122

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v121

    const v122, 0x10008000

    invoke-virtual/range {v121 .. v122}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1235
    const-string v121, ":settings:show_fragment"

    const-class v122, Lcom/android/settings/applications/AppOpsDetails;

    invoke-virtual/range {v122 .. v122}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v122

    move-object/from16 v0, v121

    move-object/from16 v1, v122

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1236
    const-string v121, ":settings:show_fragment_args"

    move-object/from16 v0, v121

    invoke-virtual {v13, v0, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1237
    const-string v121, ":settings:show_fragment_title_resid"

    const v122, 0x7f0a091e

    move-object/from16 v0, v121

    move/from16 v1, v122

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1238
    const-string v121, ":settings:show_fragment_title"

    const v122, 0x7f0a091e

    move-object/from16 v0, p1

    move/from16 v1, v122

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v122

    move-object/from16 v0, v121

    move-object/from16 v1, v122

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1239
    const-string v121, ":settings:show_fragment_as_shortcut"

    const/16 v122, 0x0

    move-object/from16 v0, v121

    move/from16 v1, v122

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1240
    const-string v121, "PACKAGE_ADDED"

    const/16 v122, 0x1

    move-object/from16 v0, v121

    move/from16 v1, v122

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1241
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 1244
    .end local v13    # "appOpsintent":Landroid/content/Intent;
    .end local v14    # "args":Landroid/os/Bundle;
    .end local v17    # "bCarModeUpdate":Z
    .end local v19    # "bGearManagerInstall":Z
    .end local v20    # "bKnoxInstall":Z
    .end local v60    # "isOwner":Z
    .end local v61    # "isPreinstall":Z
    .end local v99    # "packageName":Ljava/lang/String;
    .end local v111    # "setupwizard":Ljava/lang/String;
    :cond_93
    const-string v121, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v122

    invoke-virtual/range {v121 .. v122}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v121

    if-nez v121, :cond_5

    .line 1283
    const-string v121, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v122

    invoke-virtual/range {v121 .. v122}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v121

    if-eqz v121, :cond_94

    .line 1284
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v33

    .line 1285
    .local v33, "data":Landroid/net/Uri;
    invoke-virtual/range {v33 .. v33}, Landroid/net/Uri;->getEncodedSchemeSpecificPart()Ljava/lang/String;

    move-result-object v102

    .line 1287
    .local v102, "pkgName":Ljava/lang/String;
    const-string v121, "com.sec.android.app.montblanc"

    move-object/from16 v0, v102

    move-object/from16 v1, v121

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v121

    if-eqz v121, :cond_5

    .line 1288
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v121, v0

    invoke-virtual/range {v121 .. v121}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v121

    const-string v122, "lockscreen_ripple_effect"

    const/16 v123, 0x0

    invoke-static/range {v121 .. v123}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v121

    const/16 v122, 0xa

    move/from16 v0, v121

    move/from16 v1, v122

    if-ne v0, v1, :cond_5

    .line 1289
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v121, v0

    invoke-virtual/range {v121 .. v121}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v121

    const-string v122, "lockscreen_ripple_effect"

    const/16 v123, 0x3

    invoke-static/range {v121 .. v123}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 1367
    .end local v33    # "data":Landroid/net/Uri;
    .end local v102    # "pkgName":Ljava/lang/String;
    :cond_94
    const-string v121, "android.settings.EAS_POLICY_STATE_CHANGED"

    move-object/from16 v0, v121

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v121

    if-eqz v121, :cond_97

    .line 1368
    const-string v121, "device_policy"

    move-object/from16 v0, p1

    move-object/from16 v1, v121

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Landroid/app/admin/DevicePolicyManager;

    .line 1369
    .local v38, "dpm":Landroid/app/admin/DevicePolicyManager;
    if-eqz v38, :cond_95

    const/16 v121, 0x0

    move-object/from16 v0, v38

    move-object/from16 v1, v121

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v84

    .line 1371
    .local v84, "maxTimeout":J
    :goto_25
    const-string v121, "DeviceLockTime"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v122

    const-string v123, "CscFeature_Setting_ReplaceMenuLockAutoAs"

    invoke-virtual/range {v122 .. v123}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v122

    invoke-virtual/range {v121 .. v122}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v57

    .line 1374
    .local v57, "isDeviceLockTime":Z
    const-wide/16 v122, 0x1

    cmp-long v121, v84, v122

    if-gez v121, :cond_5

    .line 1375
    const-string v121, "SettingsIntentReceiver"

    const-string v122, "Max timeout is removed. Rollback timeout value"

    invoke-static/range {v121 .. v122}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1376
    const-string v121, "screen_off_timeout"

    const-string v122, "screen_off_timeout_rollback"

    const/16 v123, 0x7530

    move-object/from16 v0, v107

    move-object/from16 v1, v122

    move/from16 v2, v123

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v122

    move-object/from16 v0, v107

    move-object/from16 v1, v121

    move/from16 v2, v122

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1378
    const-string v122, "lock_screen_lock_after_timeout"

    const-string v123, "lock_after_timeout_rollback"

    if-eqz v57, :cond_96

    const v121, 0x927c0

    :goto_26
    move-object/from16 v0, v107

    move-object/from16 v1, v123

    move/from16 v2, v121

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v121

    move-object/from16 v0, v107

    move-object/from16 v1, v122

    move/from16 v2, v121

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 1369
    .end local v57    # "isDeviceLockTime":Z
    .end local v84    # "maxTimeout":J
    :cond_95
    const-wide/16 v84, 0x0

    goto :goto_25

    .line 1378
    .restart local v57    # "isDeviceLockTime":Z
    .restart local v84    # "maxTimeout":J
    :cond_96
    const/16 v121, 0x1388

    goto :goto_26

    .line 1383
    .end local v38    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .end local v57    # "isDeviceLockTime":Z
    .end local v84    # "maxTimeout":J
    :cond_97
    const-string v121, "android.settings.ACTIVE_KEY_CLEAR"

    move-object/from16 v0, v121

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v121

    if-eqz v121, :cond_98

    .line 1384
    invoke-static/range {p1 .. p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v112

    .line 1385
    .restart local v112    # "sharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface/range {v112 .. v112}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v41

    .line 1386
    .restart local v41    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string v121, "pref_active_key_noti"

    const/16 v122, 0x1

    move-object/from16 v0, v41

    move-object/from16 v1, v121

    move/from16 v2, v122

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1387
    invoke-interface/range {v41 .. v41}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1390
    const-string v121, "notification"

    move-object/from16 v0, p1

    move-object/from16 v1, v121

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v91

    check-cast v91, Landroid/app/NotificationManager;

    .line 1391
    .local v91, "nm":Landroid/app/NotificationManager;
    const v121, 0x7f0205f7

    move-object/from16 v0, v91

    move/from16 v1, v121

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    goto/16 :goto_1

    .line 1393
    .end local v41    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v91    # "nm":Landroid/app/NotificationManager;
    .end local v112    # "sharedPreferences":Landroid/content/SharedPreferences;
    :cond_98
    const-string v121, "android.settings.SECURITY_WARNING_CLEAR"

    move-object/from16 v0, v121

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v121

    if-eqz v121, :cond_99

    .line 1394
    invoke-static/range {p1 .. p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v112

    .line 1395
    .restart local v112    # "sharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface/range {v112 .. v112}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v41

    .line 1396
    .restart local v41    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string v121, "pref_security_warning"

    const/16 v122, 0x1

    move-object/from16 v0, v41

    move-object/from16 v1, v121

    move/from16 v2, v122

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1397
    invoke-interface/range {v41 .. v41}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1400
    const-string v121, "notification"

    move-object/from16 v0, p1

    move-object/from16 v1, v121

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v91

    check-cast v91, Landroid/app/NotificationManager;

    .line 1401
    .restart local v91    # "nm":Landroid/app/NotificationManager;
    const v121, 0x7f0205fc

    move-object/from16 v0, v91

    move/from16 v1, v121

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    goto/16 :goto_1

    .line 1402
    .end local v41    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v91    # "nm":Landroid/app/NotificationManager;
    .end local v112    # "sharedPreferences":Landroid/content/SharedPreferences;
    :cond_99
    const-string v121, "android.intent.action.LOCALE_CHANGED"

    move-object/from16 v0, v121

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v121

    if-eqz v121, :cond_9a

    .line 1403
    new-instance v116, Ljava/lang/Thread;

    new-instance v121, Lcom/android/settings/SettingsIntentReceiver$1;

    move-object/from16 v0, v121

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/SettingsIntentReceiver$1;-><init>(Lcom/android/settings/SettingsIntentReceiver;)V

    move-object/from16 v0, v116

    move-object/from16 v1, v121

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1479
    .local v116, "thread":Ljava/lang/Thread;
    invoke-virtual/range {v116 .. v116}, Ljava/lang/Thread;->start()V

    goto/16 :goto_1

    .line 1480
    .end local v116    # "thread":Ljava/lang/Thread;
    :cond_9a
    const-string v121, "SamsungIME.UpdateSelectedLanguageAction"

    move-object/from16 v0, v121

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v121

    if-eqz v121, :cond_9f

    .line 1481
    const-string v121, "SettingsIntentReceiver"

    const-string v122, "get action : SamsungIME.UpdateSelectedLanguageAction"

    invoke-static/range {v121 .. v122}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1482
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v121, v0

    invoke-virtual/range {v121 .. v121}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v121

    const-string v122, "com.sec.feature.spen_usp"

    invoke-virtual/range {v121 .. v122}, Landroid/content/pm/PackageManager;->getSystemFeatureLevel(Ljava/lang/String;)I

    move-result v118

    .line 1483
    .restart local v118    # "uspLevel":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v121, v0

    invoke-virtual/range {v121 .. v121}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v121

    const-string v122, "default_input_method"

    invoke-static/range {v121 .. v122}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v55

    .line 1485
    .local v55, "inputMethodId":Ljava/lang/String;
    const/16 v121, 0x1

    move/from16 v0, v118

    move/from16 v1, v121

    if-le v0, v1, :cond_5

    const-string v121, "com.sec.android.inputmethod/.SamsungKeypad"

    move-object/from16 v0, v121

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v121

    if-eqz v121, :cond_5

    .line 1486
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v121, v0

    invoke-static/range {v121 .. v121}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v113

    .line 1487
    .local v113, "sharedPrefs":Landroid/content/SharedPreferences;
    const-string v121, "pref_current_handwriting_lang_llist"

    const-string v122, ""

    move-object/from16 v0, v113

    move-object/from16 v1, v121

    move-object/from16 v2, v122

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v105

    .line 1488
    .local v105, "prefLangList":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v121, v0

    invoke-virtual/range {v121 .. v121}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v121

    const-string v122, "handwriting_language_list"

    invoke-static/range {v121 .. v122}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v54

    .line 1489
    .local v54, "imLanguageList":Ljava/lang/String;
    if-eqz v105, :cond_9b

    move-object/from16 v0, v105

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v121

    if-nez v121, :cond_15

    .line 1493
    :cond_9b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v121, v0

    invoke-virtual/range {v121 .. v121}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v121

    const-string v122, "handwriting_language"

    invoke-static/range {v121 .. v122}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 1494
    .restart local v29    # "currentLang":Ljava/lang/String;
    if-nez v29, :cond_9c

    .line 1495
    const-string v29, ""

    .line 1497
    :cond_9c
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/android/settings/SettingsIntentReceiver;->setHandwritingLanguage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v110

    .line 1498
    .restart local v110    # "setLanguage":Ljava/lang/String;
    move-object/from16 v0, v29

    move-object/from16 v1, v110

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v121

    if-nez v121, :cond_5

    .line 1499
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v121, v0

    invoke-virtual/range {v121 .. v121}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v121

    const-string v122, "handwriting_language"

    move-object/from16 v0, v121

    move-object/from16 v1, v122

    move-object/from16 v2, v110

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1500
    new-instance v50, Landroid/content/Intent;

    const-string v121, "com.android.setting.HANDWRITING_LANGUAGE_CHANGED"

    move-object/from16 v0, v50

    move-object/from16 v1, v121

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1501
    .restart local v50    # "handwritingIntent":Landroid/content/Intent;
    const-string v121, "language"

    move-object/from16 v0, v50

    move-object/from16 v1, v121

    move-object/from16 v2, v110

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1502
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v121, v0

    move-object/from16 v0, v121

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1504
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v121, v0

    invoke-static/range {v121 .. v121}, Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference;->getLocaleInfoAdapter(Landroid/content/Context;)[Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference$LanguageInfo;

    move-result-object v65

    .line 1505
    .local v65, "langInfo":[Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference$LanguageInfo;
    const/16 v52, 0x0

    .restart local v52    # "i":I
    :goto_27
    move-object/from16 v0, v65

    array-length v0, v0

    move/from16 v121, v0

    move/from16 v0, v52

    move/from16 v1, v121

    if-ge v0, v1, :cond_9d

    .line 1506
    if-eqz v110, :cond_9e

    .line 1507
    aget-object v121, v65, v52

    if-eqz v121, :cond_9e

    aget-object v121, v65, v52

    invoke-virtual/range {v121 .. v121}, Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference$LanguageInfo;->getLanguage()Ljava/lang/String;

    move-result-object v121

    move-object/from16 v0, v110

    move-object/from16 v1, v121

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v121

    if-eqz v121, :cond_9e

    .line 1508
    aget-object v121, v65, v52

    invoke-virtual/range {v121 .. v121}, Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference$LanguageInfo;->getTitle()Ljava/lang/String;

    move-result-object v110

    .line 1513
    :cond_9d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v121, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v122, v0

    const v123, 0x7f0a1bb8

    const/16 v124, 0x1

    move/from16 v0, v124

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v124, v0

    const/16 v125, 0x0

    aput-object v110, v124, v125

    invoke-virtual/range {v122 .. v124}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v122

    const/16 v123, 0x0

    invoke-static/range {v121 .. v123}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v121

    invoke-virtual/range {v121 .. v121}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 1505
    :cond_9e
    add-int/lit8 v52, v52, 0x1

    goto :goto_27

    .line 1516
    .end local v29    # "currentLang":Ljava/lang/String;
    .end local v50    # "handwritingIntent":Landroid/content/Intent;
    .end local v52    # "i":I
    .end local v54    # "imLanguageList":Ljava/lang/String;
    .end local v55    # "inputMethodId":Ljava/lang/String;
    .end local v65    # "langInfo":[Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference$LanguageInfo;
    .end local v105    # "prefLangList":Ljava/lang/String;
    .end local v110    # "setLanguage":Ljava/lang/String;
    .end local v113    # "sharedPrefs":Landroid/content/SharedPreferences;
    .end local v118    # "uspLevel":I
    :cond_9f
    const-string v121, "android.intent.action.INPUT_METHOD_CHANGED"

    move-object/from16 v0, v121

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v121

    if-eqz v121, :cond_a7

    .line 1517
    const-string v121, "SettingsIntentReceiver"

    const-string v122, "get action : android.intent.action.INPUT_METHOD_CHANGED"

    invoke-static/range {v121 .. v122}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1518
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v121, v0

    invoke-virtual/range {v121 .. v121}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v121

    const-string v122, "com.sec.feature.spen_usp"

    invoke-virtual/range {v121 .. v122}, Landroid/content/pm/PackageManager;->getSystemFeatureLevel(Ljava/lang/String;)I

    move-result v118

    .line 1519
    .restart local v118    # "uspLevel":I
    const/16 v121, 0x1

    move/from16 v0, v118

    move/from16 v1, v121

    if-le v0, v1, :cond_a5

    .line 1520
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v121, v0

    invoke-virtual/range {v121 .. v121}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v121

    const-string v122, "default_input_method"

    invoke-static/range {v121 .. v122}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v55

    .line 1521
    .restart local v55    # "inputMethodId":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v121, v0

    invoke-virtual/range {v121 .. v121}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v121

    const-string v122, "handwriting_language"

    invoke-static/range {v121 .. v122}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 1522
    .restart local v29    # "currentLang":Ljava/lang/String;
    const/16 v18, 0x0

    .line 1523
    .local v18, "bCheckKeepCurLang":Z
    if-eqz v29, :cond_15

    .line 1525
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v121, v0

    invoke-virtual/range {v121 .. v121}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v121

    const-string v122, "handwriting_language_list"

    invoke-static/range {v121 .. v122}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v54

    .line 1527
    .restart local v54    # "imLanguageList":Ljava/lang/String;
    const-string v121, "com.sec.android.inputmethod/.SamsungKeypad"

    move-object/from16 v0, v121

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v121

    if-eqz v121, :cond_a2

    .line 1529
    if-eqz v54, :cond_a1

    move-object/from16 v0, v54

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v121

    if-eqz v121, :cond_a1

    .line 1530
    const/16 v18, 0x1

    .line 1542
    :goto_28
    const-string v121, "SettingsIntentReceiver"

    new-instance v122, Ljava/lang/StringBuilder;

    invoke-direct/range {v122 .. v122}, Ljava/lang/StringBuilder;-><init>()V

    const-string v123, "handwriting_language current Language keep state : "

    invoke-virtual/range {v122 .. v123}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v122

    move-object/from16 v0, v122

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v122

    invoke-virtual/range {v122 .. v122}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v122

    invoke-static/range {v121 .. v122}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1544
    if-nez v18, :cond_5

    .line 1545
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/android/settings/SettingsIntentReceiver;->setHandwritingLanguage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v110

    .line 1546
    .restart local v110    # "setLanguage":Ljava/lang/String;
    move-object/from16 v0, v29

    move-object/from16 v1, v110

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v121

    if-nez v121, :cond_5

    .line 1547
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v121, v0

    invoke-virtual/range {v121 .. v121}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v121

    const-string v122, "handwriting_language"

    move-object/from16 v0, v121

    move-object/from16 v1, v122

    move-object/from16 v2, v110

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1548
    new-instance v50, Landroid/content/Intent;

    const-string v121, "com.android.setting.HANDWRITING_LANGUAGE_CHANGED"

    move-object/from16 v0, v50

    move-object/from16 v1, v121

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1549
    .restart local v50    # "handwritingIntent":Landroid/content/Intent;
    const-string v121, "language"

    move-object/from16 v0, v50

    move-object/from16 v1, v121

    move-object/from16 v2, v110

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1550
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v121, v0

    move-object/from16 v0, v121

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1551
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v121, v0

    invoke-static/range {v121 .. v121}, Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference;->getLocaleInfoAdapter(Landroid/content/Context;)[Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference$LanguageInfo;

    move-result-object v65

    .line 1552
    .restart local v65    # "langInfo":[Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference$LanguageInfo;
    const/16 v52, 0x0

    .restart local v52    # "i":I
    :goto_29
    move-object/from16 v0, v65

    array-length v0, v0

    move/from16 v121, v0

    move/from16 v0, v52

    move/from16 v1, v121

    if-ge v0, v1, :cond_a0

    .line 1553
    if-eqz v110, :cond_a4

    .line 1554
    aget-object v121, v65, v52

    if-eqz v121, :cond_a4

    aget-object v121, v65, v52

    invoke-virtual/range {v121 .. v121}, Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference$LanguageInfo;->getLanguage()Ljava/lang/String;

    move-result-object v121

    move-object/from16 v0, v110

    move-object/from16 v1, v121

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v121

    if-eqz v121, :cond_a4

    .line 1555
    aget-object v121, v65, v52

    invoke-virtual/range {v121 .. v121}, Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference$LanguageInfo;->getTitle()Ljava/lang/String;

    move-result-object v110

    .line 1560
    :cond_a0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v121, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v122, v0

    const v123, 0x7f0a1bb8

    const/16 v124, 0x1

    move/from16 v0, v124

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v124, v0

    const/16 v125, 0x0

    aput-object v110, v124, v125

    invoke-virtual/range {v122 .. v124}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v122

    const/16 v123, 0x0

    invoke-static/range {v121 .. v123}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v121

    invoke-virtual/range {v121 .. v121}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 1532
    .end local v50    # "handwritingIntent":Landroid/content/Intent;
    .end local v52    # "i":I
    .end local v65    # "langInfo":[Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference$LanguageInfo;
    .end local v110    # "setLanguage":Ljava/lang/String;
    :cond_a1
    const/16 v18, 0x0

    goto/16 :goto_28

    .line 1535
    :cond_a2
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/android/settings/SettingsIntentReceiver;->checkVOLanguage(Ljava/lang/String;)Z

    move-result v121

    if-eqz v121, :cond_a3

    .line 1536
    const/16 v18, 0x1

    goto/16 :goto_28

    .line 1538
    :cond_a3
    const/16 v18, 0x0

    goto/16 :goto_28

    .line 1552
    .restart local v50    # "handwritingIntent":Landroid/content/Intent;
    .restart local v52    # "i":I
    .restart local v65    # "langInfo":[Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference$LanguageInfo;
    .restart local v110    # "setLanguage":Ljava/lang/String;
    :cond_a4
    add-int/lit8 v52, v52, 0x1

    goto :goto_29

    .line 1563
    .end local v18    # "bCheckKeepCurLang":Z
    .end local v29    # "currentLang":Ljava/lang/String;
    .end local v50    # "handwritingIntent":Landroid/content/Intent;
    .end local v52    # "i":I
    .end local v54    # "imLanguageList":Ljava/lang/String;
    .end local v55    # "inputMethodId":Ljava/lang/String;
    .end local v65    # "langInfo":[Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference$LanguageInfo;
    .end local v110    # "setLanguage":Ljava/lang/String;
    :cond_a5
    const-string v121, "DCM"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v122

    invoke-virtual/range {v121 .. v122}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v121

    if-eqz v121, :cond_5

    .line 1565
    const-string v121, "hltejs01dcm"

    const-string v122, "ro.product.device"

    invoke-static/range {v122 .. v122}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v122

    invoke-virtual/range {v121 .. v122}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v121

    if-nez v121, :cond_a6

    const-string v121, "SC-02F"

    const-string v122, "ro.product.model"

    invoke-static/range {v122 .. v122}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v122

    invoke-virtual/range {v121 .. v122}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v121

    if-eqz v121, :cond_5

    .line 1566
    :cond_a6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v121, v0

    invoke-virtual/range {v121 .. v121}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v121

    const-string v122, "handwriting_language"

    invoke-static/range {v121 .. v122}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 1567
    .restart local v29    # "currentLang":Ljava/lang/String;
    if-nez v29, :cond_5

    .line 1568
    const-string v29, "ja_JP"

    .line 1569
    const-string v121, "SettingsIntentReceiver"

    new-instance v122, Ljava/lang/StringBuilder;

    invoke-direct/range {v122 .. v122}, Ljava/lang/StringBuilder;-><init>()V

    const-string v123, "handwriting_language setLanguage : "

    invoke-virtual/range {v122 .. v123}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v122

    move-object/from16 v0, v122

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v122

    invoke-virtual/range {v122 .. v122}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v122

    invoke-static/range {v121 .. v122}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1570
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v121, v0

    invoke-virtual/range {v121 .. v121}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v121

    const-string v122, "handwriting_language"

    move-object/from16 v0, v121

    move-object/from16 v1, v122

    move-object/from16 v2, v29

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1571
    new-instance v50, Landroid/content/Intent;

    const-string v121, "com.android.setting.HANDWRITING_LANGUAGE_CHANGED"

    move-object/from16 v0, v50

    move-object/from16 v1, v121

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1572
    .restart local v50    # "handwritingIntent":Landroid/content/Intent;
    const-string v121, "language"

    move-object/from16 v0, v50

    move-object/from16 v1, v121

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1573
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v121, v0

    move-object/from16 v0, v121

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 1577
    .end local v29    # "currentLang":Ljava/lang/String;
    .end local v50    # "handwritingIntent":Landroid/content/Intent;
    .end local v118    # "uspLevel":I
    :cond_a7
    const-string v121, "SamsungIME.UpdateAvailableLanguageAction"

    move-object/from16 v0, v121

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v121

    if-eqz v121, :cond_5

    .line 1578
    const-string v121, "SettingsIntentReceiver"

    const-string v122, "get action : SamsungIME.UpdateAvailableLanguageAction"

    invoke-static/range {v121 .. v122}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1579
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v121, v0

    invoke-virtual/range {v121 .. v121}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v121

    const-string v122, "com.sec.feature.spen_usp"

    invoke-virtual/range {v121 .. v122}, Landroid/content/pm/PackageManager;->getSystemFeatureLevel(Ljava/lang/String;)I

    move-result v118

    .line 1580
    .restart local v118    # "uspLevel":I
    const/16 v121, 0x1

    move/from16 v0, v118

    move/from16 v1, v121

    if-le v0, v1, :cond_a8

    .line 1581
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v121, v0

    invoke-virtual/range {v121 .. v121}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v121

    const-string v122, "device_provisioned"

    const/16 v123, 0x0

    invoke-static/range {v121 .. v123}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v106

    .line 1582
    .local v106, "provision":I
    if-nez v106, :cond_5

    .line 1583
    const-string v29, ""

    .line 1584
    .restart local v29    # "currentLang":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/android/settings/SettingsIntentReceiver;->setHandwritingLanguage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v110

    .line 1585
    .restart local v110    # "setLanguage":Ljava/lang/String;
    move-object/from16 v0, v29

    move-object/from16 v1, v110

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v121

    if-nez v121, :cond_5

    .line 1586
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v121, v0

    invoke-virtual/range {v121 .. v121}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v121

    const-string v122, "handwriting_language"

    move-object/from16 v0, v121

    move-object/from16 v1, v122

    move-object/from16 v2, v110

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1587
    new-instance v50, Landroid/content/Intent;

    const-string v121, "com.android.setting.HANDWRITING_LANGUAGE_CHANGED"

    move-object/from16 v0, v50

    move-object/from16 v1, v121

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1588
    .restart local v50    # "handwritingIntent":Landroid/content/Intent;
    const-string v121, "language"

    move-object/from16 v0, v50

    move-object/from16 v1, v121

    move-object/from16 v2, v110

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1589
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v121, v0

    move-object/from16 v0, v121

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 1592
    .end local v29    # "currentLang":Ljava/lang/String;
    .end local v50    # "handwritingIntent":Landroid/content/Intent;
    .end local v106    # "provision":I
    .end local v110    # "setLanguage":Ljava/lang/String;
    :cond_a8
    const-string v121, "DCM"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v122

    invoke-virtual/range {v121 .. v122}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v121

    if-eqz v121, :cond_5

    .line 1594
    const-string v121, "hltejs01dcm"

    const-string v122, "ro.product.device"

    invoke-static/range {v122 .. v122}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v122

    invoke-virtual/range {v121 .. v122}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v121

    if-nez v121, :cond_a9

    const-string v121, "JS01"

    const-string v122, "ro.product.model"

    invoke-static/range {v122 .. v122}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v122

    invoke-virtual/range {v121 .. v122}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v121

    if-eqz v121, :cond_5

    .line 1595
    :cond_a9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v121, v0

    invoke-virtual/range {v121 .. v121}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v121

    const-string v122, "handwriting_language"

    invoke-static/range {v121 .. v122}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 1596
    .restart local v29    # "currentLang":Ljava/lang/String;
    if-nez v29, :cond_5

    .line 1597
    const-string v29, "ja_JP"

    .line 1598
    const-string v121, "SettingsIntentReceiver"

    new-instance v122, Ljava/lang/StringBuilder;

    invoke-direct/range {v122 .. v122}, Ljava/lang/StringBuilder;-><init>()V

    const-string v123, "handwriting_language setLanguage : "

    invoke-virtual/range {v122 .. v123}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v122

    move-object/from16 v0, v122

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v122

    invoke-virtual/range {v122 .. v122}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v122

    invoke-static/range {v121 .. v122}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1599
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v121, v0

    invoke-virtual/range {v121 .. v121}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v121

    const-string v122, "handwriting_language"

    move-object/from16 v0, v121

    move-object/from16 v1, v122

    move-object/from16 v2, v29

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1600
    new-instance v50, Landroid/content/Intent;

    const-string v121, "com.android.setting.HANDWRITING_LANGUAGE_CHANGED"

    move-object/from16 v0, v50

    move-object/from16 v1, v121

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1601
    .restart local v50    # "handwritingIntent":Landroid/content/Intent;
    const-string v121, "language"

    move-object/from16 v0, v50

    move-object/from16 v1, v121

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1602
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v121, v0

    move-object/from16 v0, v121

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 1616
    .end local v29    # "currentLang":Ljava/lang/String;
    .end local v50    # "handwritingIntent":Landroid/content/Intent;
    .end local v118    # "uspLevel":I
    .restart local v21    # "bLanCableState":Z
    .restart local v89    # "nEthState":I
    :cond_aa
    const/16 v121, 0x2

    move/from16 v0, v89

    move/from16 v1, v121

    if-ne v0, v1, :cond_6

    if-eqz v21, :cond_6

    .line 1617
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v121, v0

    const v122, 0x7f0a19b8

    const/16 v123, 0x1

    invoke-static/range {v121 .. v123}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v121

    invoke-virtual/range {v121 .. v121}, Landroid/widget/Toast;->show()V

    goto/16 :goto_2

    .line 1652
    .end local v21    # "bLanCableState":Z
    .end local v89    # "nEthState":I
    :cond_ab
    const/16 v59, 0x0

    goto/16 :goto_3

    .line 1660
    .restart local v59    # "isOn":Z
    .restart local v80    # "mStatusBar":Landroid/app/StatusBarManager;
    :cond_ac
    const-string v121, "smart_network"

    const/16 v122, 0x0

    move-object/from16 v0, v80

    move-object/from16 v1, v121

    move/from16 v2, v122

    invoke-virtual {v0, v1, v2}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    goto/16 :goto_4

    .line 1685
    .end local v59    # "isOn":Z
    .end local v80    # "mStatusBar":Landroid/app/StatusBarManager;
    .restart local v41    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local v82    # "mUsbConnected":Z
    .restart local v104    # "pref":Landroid/content/SharedPreferences;
    :cond_ad
    const/16 v117, 0x0

    goto/16 :goto_5

    .line 512
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
