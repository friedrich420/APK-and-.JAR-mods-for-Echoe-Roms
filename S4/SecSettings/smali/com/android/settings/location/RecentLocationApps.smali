.class public Lcom/android/settings/location/RecentLocationApps;
.super Ljava/lang/Object;
.source "RecentLocationApps.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/location/RecentLocationApps$PackageEntryClickedListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mActivity:Landroid/preference/PreferenceActivity;

.field private final mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const-class v0, Lcom/android/settings/location/RecentLocationApps;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/location/RecentLocationApps;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/preference/PreferenceActivity;)V
    .locals 1
    .param p1, "activity"    # Landroid/preference/PreferenceActivity;

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/android/settings/location/RecentLocationApps;->mActivity:Landroid/preference/PreferenceActivity;

    .line 64
    invoke-virtual {p1}, Landroid/preference/PreferenceActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/location/RecentLocationApps;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 65
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/location/RecentLocationApps;)Landroid/preference/PreferenceActivity;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/location/RecentLocationApps;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/settings/location/RecentLocationApps;->mActivity:Landroid/preference/PreferenceActivity;

    return-object v0
.end method

.method private createRecentLocationEntry(Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;ZLandroid/preference/Preference$OnPreferenceClickListener;)Landroid/preference/Preference;
    .locals 3
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p2, "label"    # Ljava/lang/CharSequence;
    .param p3, "isHighBattery"    # Z
    .param p4, "listener"    # Landroid/preference/Preference$OnPreferenceClickListener;

    .prologue
    .line 91
    new-instance v0, Lcom/android/settings/location/LocationPreference;

    iget-object v1, p0, Lcom/android/settings/location/RecentLocationApps;->mActivity:Landroid/preference/PreferenceActivity;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/settings/location/LocationPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 92
    .local v0, "pref":Landroid/preference/Preference;
    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 93
    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 94
    if-eqz p3, :cond_0

    .line 95
    const v1, 0x7f0a084b

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 99
    :goto_0
    invoke-virtual {v0, p4}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 100
    return-object v0

    .line 97
    :cond_0
    const v1, 0x7f0a084c

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0
.end method

.method private getPreferenceFromOps(Landroid/os/UserManager;JLandroid/app/AppOpsManager$PackageOps;)Landroid/preference/Preference;
    .locals 22
    .param p1, "um"    # Landroid/os/UserManager;
    .param p2, "now"    # J
    .param p4, "ops"    # Landroid/app/AppOpsManager$PackageOps;

    .prologue
    .line 151
    invoke-virtual/range {p4 .. p4}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v13

    .line 152
    .local v13, "packageName":Ljava/lang/String;
    invoke-virtual/range {p4 .. p4}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object v6

    .line 153
    .local v6, "entries":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    const/4 v8, 0x0

    .line 154
    .local v8, "highBattery":Z
    const/4 v12, 0x0

    .line 156
    .local v12, "normalBattery":Z
    const-wide/32 v20, 0xdbba0

    sub-long v16, p2, v20

    .line 157
    .local v16, "recentLocationCutoffTime":J
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/AppOpsManager$OpEntry;

    .line 158
    .local v7, "entry":Landroid/app/AppOpsManager$OpEntry;
    invoke-virtual {v7}, Landroid/app/AppOpsManager$OpEntry;->isRunning()Z

    move-result v19

    if-nez v19, :cond_1

    invoke-virtual {v7}, Landroid/app/AppOpsManager$OpEntry;->getTime()J

    move-result-wide v20

    cmp-long v19, v20, v16

    if-ltz v19, :cond_0

    .line 159
    :cond_1
    invoke-virtual {v7}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v19

    packed-switch v19, :pswitch_data_0

    goto :goto_0

    .line 161
    :pswitch_0
    const/4 v12, 0x1

    .line 162
    goto :goto_0

    .line 164
    :pswitch_1
    const/4 v8, 0x1

    .line 165
    goto :goto_0

    .line 172
    .end local v7    # "entry":Landroid/app/AppOpsManager$OpEntry;
    :cond_2
    if-nez v8, :cond_4

    if-nez v12, :cond_4

    .line 173
    sget-object v19, Lcom/android/settings/location/RecentLocationApps;->TAG:Ljava/lang/String;

    const/16 v20, 0x2

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v19

    if-eqz v19, :cond_3

    .line 174
    sget-object v19, Lcom/android/settings/location/RecentLocationApps;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " hadn\'t used location within the time interval."

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    :cond_3
    const/4 v14, 0x0

    .line 199
    :goto_1
    return-object v14

    .line 181
    :cond_4
    invoke-virtual/range {p4 .. p4}, Landroid/app/AppOpsManager$PackageOps;->getUid()I

    move-result v15

    .line 182
    .local v15, "uid":I
    invoke-static {v15}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v18

    .line 184
    .local v18, "userId":I
    const/4 v14, 0x0

    .line 186
    .local v14, "preference":Landroid/preference/Preference;
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v11

    .line 187
    .local v11, "ipm":Landroid/content/pm/IPackageManager;
    const/16 v19, 0x80

    move/from16 v0, v19

    move/from16 v1, v18

    invoke-interface {v11, v13, v0, v1}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    .line 190
    .local v4, "appInfo":Landroid/content/pm/ApplicationInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/location/RecentLocationApps;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/location/RecentLocationApps;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v20

    new-instance v21, Landroid/os/UserHandle;

    move-object/from16 v0, v21

    move/from16 v1, v18

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual/range {v19 .. v21}, Landroid/content/pm/PackageManager;->getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    .line 192
    .local v10, "icon":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/location/RecentLocationApps;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v19

    new-instance v20, Lcom/android/settings/location/RecentLocationApps$PackageEntryClickedListener;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v13}, Lcom/android/settings/location/RecentLocationApps$PackageEntryClickedListener;-><init>(Lcom/android/settings/location/RecentLocationApps;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v10, v1, v8, v2}, Lcom/android/settings/location/RecentLocationApps;->createRecentLocationEntry(Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;ZLandroid/preference/Preference$OnPreferenceClickListener;)Landroid/preference/Preference;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v14

    goto :goto_1

    .line 195
    .end local v4    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v10    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v11    # "ipm":Landroid/content/pm/IPackageManager;
    :catch_0
    move-exception v5

    .line 196
    .local v5, "e":Landroid/os/RemoteException;
    sget-object v19, Lcom/android/settings/location/RecentLocationApps;->TAG:Ljava/lang/String;

    const-string v20, "Error while retrieving application info"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 159
    :pswitch_data_0
    .packed-switch 0x29
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public getAppList()Ljava/util/List;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/preference/Preference;",
            ">;"
        }
    .end annotation

    .prologue
    .line 108
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/location/RecentLocationApps;->mActivity:Landroid/preference/PreferenceActivity;

    move-object/from16 v17, v0

    const-string v18, "appops"

    invoke-virtual/range {v17 .. v18}, Landroid/preference/PreferenceActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AppOpsManager;

    .line 110
    .local v2, "aoManager":Landroid/app/AppOpsManager;
    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [I

    move-object/from16 v17, v0

    fill-array-data v17, :array_0

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/app/AppOpsManager;->getPackagesForOps([I)Ljava/util/List;

    move-result-object v3

    .line 114
    .local v3, "appOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 115
    .local v12, "prefs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/preference/Preference;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 116
    .local v8, "now":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/location/RecentLocationApps;->mActivity:Landroid/preference/PreferenceActivity;

    move-object/from16 v17, v0

    const-string v18, "user"

    invoke-virtual/range {v17 .. v18}, Landroid/preference/PreferenceActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/os/UserManager;

    .line 117
    .local v15, "um":Landroid/os/UserManager;
    invoke-virtual {v15}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v13

    .line 119
    .local v13, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    .line 120
    .local v4, "appOpsN":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v4, :cond_3

    .line 121
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/AppOpsManager$PackageOps;

    .line 124
    .local v7, "ops":Landroid/app/AppOpsManager$PackageOps;
    invoke-virtual {v7}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v10

    .line 125
    .local v10, "packageName":Ljava/lang/String;
    invoke-virtual {v7}, Landroid/app/AppOpsManager$PackageOps;->getUid()I

    move-result v14

    .line 126
    .local v14, "uid":I
    invoke-static {v14}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v16

    .line 127
    .local v16, "userId":I
    const/16 v17, 0x3e8

    move/from16 v0, v17

    if-ne v14, v0, :cond_1

    const-string v17, "android"

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1

    const/4 v6, 0x1

    .line 129
    .local v6, "isAndroidOs":Z
    :goto_1
    if-nez v6, :cond_0

    new-instance v17, Landroid/os/UserHandle;

    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, v17

    invoke-interface {v13, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_2

    .line 120
    :cond_0
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 127
    .end local v6    # "isAndroidOs":Z
    :cond_1
    const/4 v6, 0x0

    goto :goto_1

    .line 132
    .restart local v6    # "isAndroidOs":Z
    :cond_2
    move-object/from16 v0, p0

    invoke-direct {v0, v15, v8, v9, v7}, Lcom/android/settings/location/RecentLocationApps;->getPreferenceFromOps(Landroid/os/UserManager;JLandroid/app/AppOpsManager$PackageOps;)Landroid/preference/Preference;

    move-result-object v11

    .line 133
    .local v11, "preference":Landroid/preference/Preference;
    if-eqz v11, :cond_0

    .line 134
    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 138
    .end local v6    # "isAndroidOs":Z
    .end local v7    # "ops":Landroid/app/AppOpsManager$PackageOps;
    .end local v10    # "packageName":Ljava/lang/String;
    .end local v11    # "preference":Landroid/preference/Preference;
    .end local v14    # "uid":I
    .end local v16    # "userId":I
    :cond_3
    return-object v12

    .line 110
    nop

    :array_0
    .array-data 4
        0x29
        0x2a
    .end array-data
.end method
