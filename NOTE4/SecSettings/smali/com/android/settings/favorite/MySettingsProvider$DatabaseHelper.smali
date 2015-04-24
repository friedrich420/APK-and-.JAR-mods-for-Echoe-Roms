.class Lcom/android/settings/favorite/MySettingsProvider$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "MySettingsProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/favorite/MySettingsProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DatabaseHelper"
.end annotation


# static fields
.field private static final MAX:I


# instance fields
.field private CTC_EXTRA:[I

.field private DEFAULT_QUICK_SETTINGS:[I

.field private DEFAULT_QUICK_SETTINGS_GRIDLIST:[I

.field private DEFAULT_QUICK_SETTINGS_GRIDLIST_KNOX_WITHOUT_PEN:[I

.field private DEFAULT_QUICK_SETTINGS_GRIDLIST_KNOX_WITH_PEN:[I

.field private DEFAULT_QUICK_SETTINGS_GRIDLIST_WITHOUT_PEN:[I

.field private DEFAULT_QUICK_SETTINGS_GRIDLIST_WITHOUT_PEN_FINGER:[I

.field private DEFAULT_QUICK_SETTINGS_GRIDLIST_WITH_PEN:[I

.field private OPEN_EXTRA:[I

.field mContext:Landroid/content/Context;

.field private saved_cnt:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 91
    invoke-static {}, Lcom/android/settings/Utils;->getMaxFavoriteItemNumber()I

    move-result v0

    sput v0, Lcom/android/settings/favorite/MySettingsProvider$DatabaseHelper;->MAX:I

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x5

    .line 165
    const-string v0, "mysettings.db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 93
    const/16 v0, 0xc

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/settings/favorite/MySettingsProvider$DatabaseHelper;->DEFAULT_QUICK_SETTINGS:[I

    .line 110
    new-array v0, v3, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/android/settings/favorite/MySettingsProvider$DatabaseHelper;->DEFAULT_QUICK_SETTINGS_GRIDLIST_WITHOUT_PEN:[I

    .line 118
    new-array v0, v3, [I

    fill-array-data v0, :array_2

    iput-object v0, p0, Lcom/android/settings/favorite/MySettingsProvider$DatabaseHelper;->DEFAULT_QUICK_SETTINGS_GRIDLIST_WITHOUT_PEN_FINGER:[I

    .line 126
    new-array v0, v3, [I

    fill-array-data v0, :array_3

    iput-object v0, p0, Lcom/android/settings/favorite/MySettingsProvider$DatabaseHelper;->DEFAULT_QUICK_SETTINGS_GRIDLIST_WITH_PEN:[I

    .line 136
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_4

    iput-object v0, p0, Lcom/android/settings/favorite/MySettingsProvider$DatabaseHelper;->DEFAULT_QUICK_SETTINGS_GRIDLIST_KNOX_WITHOUT_PEN:[I

    .line 141
    new-array v0, v4, [I

    fill-array-data v0, :array_5

    iput-object v0, p0, Lcom/android/settings/favorite/MySettingsProvider$DatabaseHelper;->DEFAULT_QUICK_SETTINGS_GRIDLIST_KNOX_WITH_PEN:[I

    .line 148
    new-array v0, v4, [I

    fill-array-data v0, :array_6

    iput-object v0, p0, Lcom/android/settings/favorite/MySettingsProvider$DatabaseHelper;->OPEN_EXTRA:[I

    .line 154
    new-array v0, v3, [I

    fill-array-data v0, :array_7

    iput-object v0, p0, Lcom/android/settings/favorite/MySettingsProvider$DatabaseHelper;->CTC_EXTRA:[I

    .line 162
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/favorite/MySettingsProvider$DatabaseHelper;->saved_cnt:I

    .line 166
    iput-object p1, p0, Lcom/android/settings/favorite/MySettingsProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    .line 167
    const-string v0, "MySettingsProvider"

    const-string v1, "DatabaseHelper(Context context):DATABASE_VERSION=1"

    invoke-static {v0, v1}, Lcom/android/settings/favorite/LogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    const-string v0, "MySettingsProvider"

    const-string v1, "DatabaseHelper(Context context):DATABASE_VERSION=1"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    return-void

    .line 93
    :array_0
    .array-data 4
        0x7f1006a6
        0x7f1006ad
        0x7f1006a8
        0x7f1006ae
        0x7f1006d8
        0x7f1006c4
        0x7f1006f0
        0x7f1006d5
        0x7f1006f2
        0x7f1006e7
        0x7f100700
        0x7f100720
    .end array-data

    .line 110
    :array_1
    .array-data 4
        0x7f1006ae
        0x7f1006d8
        0x7f1006c4
        0x7f1006d5
        0x7f1006e7
    .end array-data

    .line 118
    :array_2
    .array-data 4
        0x7f1006ae
        0x7f1006d8
        0x7f1006c4
        0x7f1006d5
        0x7f1006f2
    .end array-data

    .line 126
    :array_3
    .array-data 4
        0x7f1006ae
        0x7f1006d8
        0x7f1006c4
        0x7f1006ee
        0x7f100721
    .end array-data

    .line 136
    :array_4
    .array-data 4
        0x7f1006d8
        0x7f1006c4
    .end array-data

    .line 141
    :array_5
    .array-data 4
        0x7f1006d8
        0x7f1006c4
        0x7f1006ee
    .end array-data

    .line 148
    :array_6
    .array-data 4
        0x7f1006aa
        0x7f1006f3
        0x7f1006cd
    .end array-data

    .line 154
    :array_7
    .array-data 4
        0x7f1006b0
        0x7f1006b5
        0x7f1006aa
        0x7f1006f3
        0x7f1006cd
    .end array-data
.end method

.method private checkSaveItem(I)Z
    .locals 7
    .param p1, "headerID"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v0, 0x1

    .line 197
    const/4 v3, 0x1

    .line 198
    .local v3, "shouldBeSaved":Z
    iget-object v5, p0, Lcom/android/settings/favorite/MySettingsProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "shopdemo"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 199
    .local v2, "shop":I
    sparse-switch p1, :sswitch_data_0

    .line 253
    :cond_0
    :goto_0
    :sswitch_0
    return v3

    .line 201
    :sswitch_1
    iget-object v4, p0, Lcom/android/settings/favorite/MySettingsProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, "android.hardware.wifi"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 202
    const/4 v3, 0x0

    goto :goto_0

    .line 206
    :sswitch_2
    const-string v4, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "BRI"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/settings/favorite/MySettingsProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-direct {p0, v4}, Lcom/android/settings/favorite/MySettingsProvider$DatabaseHelper;->isContainerOnlyMode(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_RIL_DisableSmartBonding"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {}, Lcom/android/settings/Utils;->isTFGDisableSmartBonding()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 210
    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    .line 214
    :sswitch_3
    iget-object v4, p0, Lcom/android/settings/favorite/MySettingsProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, "android.hardware.bluetooth"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "CTC"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 216
    :cond_3
    const/4 v3, 0x0

    goto :goto_0

    .line 220
    :sswitch_4
    const-string v5, "network_management"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v1

    .line 221
    .local v1, "netManager":Landroid/os/INetworkManagementService;
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    if-eqz v5, :cond_5

    .line 223
    .local v0, "isSubUser":Z
    :goto_1
    :try_start_0
    invoke-interface {v1}, Landroid/os/INetworkManagementService;->isBandwidthControlEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_4

    if-eqz v0, :cond_0

    .line 224
    :cond_4
    const/4 v3, 0x0

    goto :goto_0

    .end local v0    # "isSubUser":Z
    :cond_5
    move v0, v4

    .line 221
    goto :goto_1

    .line 230
    .end local v1    # "netManager":Landroid/os/INetworkManagementService;
    :sswitch_5
    if-ne v2, v0, :cond_0

    const/4 v3, 0x0

    goto/16 :goto_0

    .line 233
    :sswitch_6
    const-string v4, "CTC"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isGridListUIEnabeld()Z

    move-result v4

    if-nez v4, :cond_0

    .line 234
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 238
    :sswitch_7
    iget-object v4, p0, Lcom/android/settings/favorite/MySettingsProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/settings/Utils;->hasFingerprintFeature(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_6

    if-ne v2, v0, :cond_0

    .line 239
    :cond_6
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 248
    :sswitch_8
    iget-object v4, p0, Lcom/android/settings/favorite/MySettingsProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/settings/Utils;->isGuestMode(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 249
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 226
    .restart local v0    # "isSubUser":Z
    .restart local v1    # "netManager":Landroid/os/INetworkManagementService;
    :catch_0
    move-exception v4

    goto/16 :goto_0

    .line 199
    :sswitch_data_0
    .sparse-switch
        0x7f1006a6 -> :sswitch_1
        0x7f1006a8 -> :sswitch_3
        0x7f1006aa -> :sswitch_8
        0x7f1006ad -> :sswitch_2
        0x7f1006ae -> :sswitch_4
        0x7f1006d5 -> :sswitch_5
        0x7f1006e7 -> :sswitch_7
        0x7f1006f2 -> :sswitch_6
        0x7f100700 -> :sswitch_0
    .end sparse-switch
.end method

.method private initDB(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 11
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    const/4 v10, 0x0

    .line 257
    const-string v8, "MySettingsProvider"

    const-string v9, "initDB(SQLiteDatabase db)"

    invoke-static {v8, v9}, Lcom/android/settings/favorite/LogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    const-string v8, "MySettingsProvider"

    const-string v9, "initDB(SQLiteDatabase db)"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    iget-object v8, p0, Lcom/android/settings/favorite/MySettingsProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const-string v9, "com.sec.feature.spen_usp"

    invoke-virtual {v8, v9}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 260
    iget-object v8, p0, Lcom/android/settings/favorite/MySettingsProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/settings/Utils;->hasFingerprintFeature(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 261
    iget-object v8, p0, Lcom/android/settings/favorite/MySettingsProvider$DatabaseHelper;->DEFAULT_QUICK_SETTINGS_GRIDLIST_WITHOUT_PEN:[I

    iput-object v8, p0, Lcom/android/settings/favorite/MySettingsProvider$DatabaseHelper;->DEFAULT_QUICK_SETTINGS_GRIDLIST:[I

    .line 271
    :goto_0
    invoke-static {}, Lcom/android/settings/Utils;->isGridListUIEnabeld()Z

    move-result v8

    if-eqz v8, :cond_5

    const-string v8, "PHN"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "TPD"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 272
    :cond_0
    const/4 v1, 0x0

    .local v1, "cnt":I
    :goto_1
    iget-object v8, p0, Lcom/android/settings/favorite/MySettingsProvider$DatabaseHelper;->DEFAULT_QUICK_SETTINGS_GRIDLIST:[I

    array-length v8, v8

    if-ge v1, v8, :cond_5

    .line 273
    iget-object v8, p0, Lcom/android/settings/favorite/MySettingsProvider$DatabaseHelper;->DEFAULT_QUICK_SETTINGS_GRIDLIST:[I

    aget v5, v8, v1

    .line 274
    .local v5, "item":I
    const v8, 0x7f1006ae

    if-ne v5, v8, :cond_4

    .line 275
    iget-object v8, p0, Lcom/android/settings/favorite/MySettingsProvider$DatabaseHelper;->DEFAULT_QUICK_SETTINGS_GRIDLIST:[I

    const v9, 0x7f1006a6

    aput v9, v8, v1

    .line 272
    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 263
    .end local v1    # "cnt":I
    .end local v5    # "item":I
    :cond_2
    iget-object v8, p0, Lcom/android/settings/favorite/MySettingsProvider$DatabaseHelper;->DEFAULT_QUICK_SETTINGS_GRIDLIST_WITHOUT_PEN_FINGER:[I

    iput-object v8, p0, Lcom/android/settings/favorite/MySettingsProvider$DatabaseHelper;->DEFAULT_QUICK_SETTINGS_GRIDLIST:[I

    goto :goto_0

    .line 266
    :cond_3
    const-string v8, "MySettingsProvider"

    const-string v9, "initDB:DEFAULT_QUICK_SETTINGS_GRIDLIST_WITH_PEN"

    invoke-static {v8, v9}, Lcom/android/settings/favorite/LogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    const-string v8, "MySettingsProvider"

    const-string v9, "initDB:DEFAULT_QUICK_SETTINGS_GRIDLIST_WITH_PEN"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    iget-object v8, p0, Lcom/android/settings/favorite/MySettingsProvider$DatabaseHelper;->DEFAULT_QUICK_SETTINGS_GRIDLIST_WITH_PEN:[I

    iput-object v8, p0, Lcom/android/settings/favorite/MySettingsProvider$DatabaseHelper;->DEFAULT_QUICK_SETTINGS_GRIDLIST:[I

    goto :goto_0

    .line 276
    .restart local v1    # "cnt":I
    .restart local v5    # "item":I
    :cond_4
    const v8, 0x7f1006d5

    if-ne v5, v8, :cond_1

    .line 277
    iget-object v8, p0, Lcom/android/settings/favorite/MySettingsProvider$DatabaseHelper;->DEFAULT_QUICK_SETTINGS_GRIDLIST:[I

    const v9, 0x7f100721

    aput v9, v8, v1

    goto :goto_2

    .line 283
    .end local v1    # "cnt":I
    .end local v5    # "item":I
    :cond_5
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v8

    const/16 v9, 0x64

    if-lt v8, v9, :cond_6

    .line 284
    iget-object v8, p0, Lcom/android/settings/favorite/MySettingsProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const-string v9, "com.sec.feature.spen_usp"

    invoke-virtual {v8, v9}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_8

    .line 285
    iget-object v8, p0, Lcom/android/settings/favorite/MySettingsProvider$DatabaseHelper;->DEFAULT_QUICK_SETTINGS_GRIDLIST_KNOX_WITHOUT_PEN:[I

    iput-object v8, p0, Lcom/android/settings/favorite/MySettingsProvider$DatabaseHelper;->DEFAULT_QUICK_SETTINGS_GRIDLIST:[I

    .line 292
    :cond_6
    :goto_3
    invoke-static {}, Lcom/android/settings/Utils;->isGridListUIEnabeld()Z

    move-result v8

    if-eqz v8, :cond_9

    .line 293
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_4
    iget-object v8, p0, Lcom/android/settings/favorite/MySettingsProvider$DatabaseHelper;->DEFAULT_QUICK_SETTINGS_GRIDLIST:[I

    array-length v8, v8

    if-ge v3, v8, :cond_d

    .line 294
    iget-object v8, p0, Lcom/android/settings/favorite/MySettingsProvider$DatabaseHelper;->DEFAULT_QUICK_SETTINGS_GRIDLIST:[I

    aget v4, v8, v3

    .line 295
    .local v4, "id":I
    invoke-direct {p0, v4}, Lcom/android/settings/favorite/MySettingsProvider$DatabaseHelper;->checkSaveItem(I)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 296
    iget-object v8, p0, Lcom/android/settings/favorite/MySettingsProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v4}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v2

    .line 297
    .local v2, "headerID":Ljava/lang/String;
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 298
    .local v7, "values":Landroid/content/ContentValues;
    const-string v8, "key"

    invoke-virtual {v7, v8, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    const-string v8, "favorite"

    invoke-virtual {p1, v8, v10, v7}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 293
    .end local v2    # "headerID":Ljava/lang/String;
    .end local v7    # "values":Landroid/content/ContentValues;
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 287
    .end local v3    # "i":I
    .end local v4    # "id":I
    :cond_8
    iget-object v8, p0, Lcom/android/settings/favorite/MySettingsProvider$DatabaseHelper;->DEFAULT_QUICK_SETTINGS_GRIDLIST_KNOX_WITH_PEN:[I

    iput-object v8, p0, Lcom/android/settings/favorite/MySettingsProvider$DatabaseHelper;->DEFAULT_QUICK_SETTINGS_GRIDLIST:[I

    goto :goto_3

    .line 303
    :cond_9
    const/4 v1, 0x0

    .line 305
    .restart local v1    # "cnt":I
    const-string v8, "CTC"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 306
    iget-object v0, p0, Lcom/android/settings/favorite/MySettingsProvider$DatabaseHelper;->CTC_EXTRA:[I

    .line 311
    .local v0, "EXTRA":[I
    :goto_5
    iget-object v8, p0, Lcom/android/settings/favorite/MySettingsProvider$DatabaseHelper;->DEFAULT_QUICK_SETTINGS:[I

    array-length v8, v8

    array-length v9, v0

    add-int v6, v8, v9

    .line 312
    .local v6, "total":I
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_6
    if-ge v3, v6, :cond_d

    sget v8, Lcom/android/settings/favorite/MySettingsProvider$DatabaseHelper;->MAX:I

    if-ge v1, v8, :cond_d

    .line 314
    iget-object v8, p0, Lcom/android/settings/favorite/MySettingsProvider$DatabaseHelper;->DEFAULT_QUICK_SETTINGS:[I

    array-length v8, v8

    if-ge v3, v8, :cond_c

    .line 315
    iget-object v8, p0, Lcom/android/settings/favorite/MySettingsProvider$DatabaseHelper;->DEFAULT_QUICK_SETTINGS:[I

    aget v4, v8, v3

    .line 319
    .restart local v4    # "id":I
    :goto_7
    invoke-direct {p0, v4}, Lcom/android/settings/favorite/MySettingsProvider$DatabaseHelper;->checkSaveItem(I)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 320
    iget-object v8, p0, Lcom/android/settings/favorite/MySettingsProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v4}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v2

    .line 321
    .restart local v2    # "headerID":Ljava/lang/String;
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 322
    .restart local v7    # "values":Landroid/content/ContentValues;
    const-string v8, "key"

    invoke-virtual {v7, v8, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    const-string v8, "favorite"

    invoke-virtual {p1, v8, v10, v7}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 324
    add-int/lit8 v1, v1, 0x1

    .line 312
    .end local v2    # "headerID":Ljava/lang/String;
    .end local v7    # "values":Landroid/content/ContentValues;
    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 308
    .end local v0    # "EXTRA":[I
    .end local v3    # "i":I
    .end local v4    # "id":I
    .end local v6    # "total":I
    :cond_b
    iget-object v0, p0, Lcom/android/settings/favorite/MySettingsProvider$DatabaseHelper;->OPEN_EXTRA:[I

    .restart local v0    # "EXTRA":[I
    goto :goto_5

    .line 317
    .restart local v3    # "i":I
    .restart local v6    # "total":I
    :cond_c
    iget-object v8, p0, Lcom/android/settings/favorite/MySettingsProvider$DatabaseHelper;->DEFAULT_QUICK_SETTINGS:[I

    array-length v8, v8

    sub-int v8, v3, v8

    aget v4, v0, v8

    .restart local v4    # "id":I
    goto :goto_7

    .line 328
    .end local v0    # "EXTRA":[I
    .end local v1    # "cnt":I
    .end local v4    # "id":I
    .end local v6    # "total":I
    :cond_d
    return-void
.end method

.method private isContainerOnlyMode(Landroid/content/Context;)Z
    .locals 4
    .param p1, "mCtx"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 331
    if-nez p1, :cond_1

    .line 338
    :cond_0
    :goto_0
    return v1

    .line 334
    :cond_1
    const-string v2, "isKioskModeEnabled"

    invoke-static {p1, v2}, Landroid/os/PersonaManager;->getKnoxInfoForApp(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 335
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    const-string v2, "true"

    const-string v3, "isKioskModeEnabled"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 336
    const/4 v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 173
    const-string v1, "CREATE TABLE favorite (_id INTEGER PRIMARY KEY  AUTOINCREMENT  NOT NULL , key STRING NOT NULL)"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 174
    const-string v1, "CREATE TABLE frequent (_id INTEGER PRIMARY KEY  AUTOINCREMENT  NOT NULL , key STRING NOT NULL , count INTEGER)"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 175
    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v0

    .line 176
    .local v0, "salesCode":Ljava/lang/String;
    const-string v1, "MySettingsProvider"

    const-string v2, "onCreate:onCreate(SQLiteDatabase db)"

    invoke-static {v1, v2}, Lcom/android/settings/favorite/LogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    const-string v1, "MySettingsProvider"

    const-string v2, "onCreate:onCreate(SQLiteDatabase db)"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    const-string v1, "VZW"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/android/settings/Utils;->isGridSimpleMenuEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "ATT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "TMO"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 180
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/settings/favorite/MySettingsProvider$DatabaseHelper;->initDB(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 181
    const-string v1, "MySettingsProvider"

    const-string v2, "onCreate:initDB(db)"

    invoke-static {v1, v2}, Lcom/android/settings/favorite/LogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    const-string v1, "MySettingsProvider"

    const-string v2, "onCreate:initDB(db)"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    :cond_1
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 188
    const-string v0, "MySettingsProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Upgrading from version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", which will destory all old data"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    const-string v0, "MySettingsProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUpgrade:Upgrading from version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", which will destory all old data"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/favorite/LogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    const-string v0, "MySettingsProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUpgrade:Upgrading from version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", which will destory all old data"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    return-void
.end method
