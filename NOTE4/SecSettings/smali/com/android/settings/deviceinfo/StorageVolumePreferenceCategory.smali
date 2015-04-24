.class public Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;
.super Landroid/preference/PreferenceCategory;
.source "StorageVolumePreferenceCategory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory$PreferenceHeader;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFormatPreference:Landroid/preference/Preference;

.field private mIsInternalStorage:Z

.field private mIsNewUX:Z

.field private mIsUSBOTGStorage:Z

.field private mIsUsedSpace:Z

.field private mItemApps:Lcom/android/settings/deviceinfo/StorageItemPreference;

.field private mItemAvailable:Lcom/android/settings/deviceinfo/StorageItemPreference;

.field private mItemCache:Lcom/android/settings/deviceinfo/StorageItemPreference;

.field private mItemDcim:Lcom/android/settings/deviceinfo/StorageItemPreference;

.field private mItemDownloads:Lcom/android/settings/deviceinfo/StorageItemPreference;

.field private mItemMisc:Lcom/android/settings/deviceinfo/StorageItemPreference;

.field private mItemMms:Lcom/android/settings/deviceinfo/StorageItemPreference;

.field private mItemMusic:Lcom/android/settings/deviceinfo/StorageItemPreference;

.field private mItemSys:Lcom/android/settings/deviceinfo/StorageItemPreference;

.field private mItemTotal:Lcom/android/settings/deviceinfo/StorageItemPreference;

.field private mItemUsed:Lcom/android/settings/deviceinfo/StorageItemPreference;

.field private mItemUsers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/deviceinfo/StorageItemPreference;",
            ">;"
        }
    .end annotation
.end field

.field private final mMeasure:Lcom/android/settings/deviceinfo/StorageMeasurement;

.field private mMountTogglePreference:Landroid/preference/Preference;

.field private mPrimary:Z

.field private mReceiver:Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementReceiver;

.field private final mResources:Landroid/content/res/Resources;

.field private mStorageLow:Landroid/preference/Preference;

.field private final mStorageManager:Landroid/os/storage/StorageManager;

.field private mTotalSize:J

.field private mUpdateHandler:Landroid/os/Handler;

.field private mUsageBarPreference:Lcom/android/settings/deviceinfo/UsageBarPreference;

.field private mUsbConnected:Z

.field private mUsbFunction:Ljava/lang/String;

.field private final mUserManager:Landroid/os/UserManager;

.field private final mVolume:Landroid/os/storage/StorageVolume;

.field private memoryScreen:Landroid/app/Fragment;


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/os/storage/StorageVolume;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "volume"    # Landroid/os/storage/StorageVolume;

    .prologue
    const v6, 0x7f0a00f6

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 189
    invoke-direct {p0, p1}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 106
    iput-boolean v4, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mIsUsedSpace:Z

    .line 107
    iput-boolean v4, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mIsNewUX:Z

    .line 125
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemUsers:Ljava/util/List;

    .line 139
    new-instance v2, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory$1;

    invoke-direct {v2, p0}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory$1;-><init>(Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;)V

    iput-object v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mUpdateHandler:Landroid/os/Handler;

    .line 725
    new-instance v2, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory$2;

    invoke-direct {v2, p0}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory$2;-><init>(Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;)V

    iput-object v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mReceiver:Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementReceiver;

    .line 191
    iput-object p1, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mContext:Landroid/content/Context;

    .line 192
    const-string v2, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f0d002a

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mIsNewUX:Z

    .line 194
    iput-object p2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    .line 195
    invoke-static {p1, p2}, Lcom/android/settings/deviceinfo/StorageMeasurement;->getInstance(Landroid/content/Context;Landroid/os/storage/StorageVolume;)Lcom/android/settings/deviceinfo/StorageMeasurement;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mMeasure:Lcom/android/settings/deviceinfo/StorageMeasurement;

    .line 197
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    .line 198
    invoke-static {p1}, Landroid/os/storage/StorageManager;->from(Landroid/content/Context;)Landroid/os/storage/StorageManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 199
    const-string v2, "user"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    iput-object v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mUserManager:Landroid/os/UserManager;

    .line 201
    if-nez p2, :cond_2

    .line 202
    const v2, 0x7f0a08ef

    invoke-virtual {p1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    .line 239
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v2, v4

    .line 192
    goto :goto_0

    .line 204
    :cond_2
    invoke-virtual {p2}, Landroid/os/storage/StorageVolume;->isPrimary()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mPrimary:Z

    .line 207
    invoke-virtual {p2, p1}, Landroid/os/storage/StorageVolume;->getDescription(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 208
    .local v1, "title":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/storage/StorageVolume;->getSubSystem()Ljava/lang/String;

    move-result-object v0

    .line 210
    .local v0, "subsystem":Ljava/lang/String;
    iput-boolean v4, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mIsUSBOTGStorage:Z

    .line 211
    const-string v2, "sd"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 212
    invoke-virtual {p0, v6}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->setTitle(I)V

    .line 227
    :goto_2
    iget-boolean v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mIsUSBOTGStorage:Z

    if-nez v2, :cond_0

    .line 228
    iget-boolean v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mPrimary:Z

    if-eqz v2, :cond_6

    .line 229
    invoke-virtual {p0, v6}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->setTitle(I)V

    goto :goto_1

    .line 213
    :cond_3
    const-string v2, "fuse"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 214
    iput-boolean v3, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mIsInternalStorage:Z

    .line 215
    const v2, 0x7f0a076b

    invoke-virtual {p0, v2}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->setTitle(I)V

    goto :goto_2

    .line 216
    :cond_4
    const-string v2, "usb"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 217
    iput-boolean v3, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mIsUSBOTGStorage:Z

    .line 218
    const v2, 0x7f0a13f9

    invoke-virtual {p0, v2}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->setTitle(I)V

    goto :goto_2

    .line 220
    :cond_5
    invoke-virtual {p0, v1}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 231
    :cond_6
    const v2, 0x7f0a1db0

    invoke-virtual {p0, v2}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->setTitle(I)V

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mUpdateHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static buildForInternal(Landroid/content/Context;)Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 162
    new-instance v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;-><init>(Landroid/content/Context;Landroid/os/storage/StorageVolume;)V

    return-object v0
.end method

.method public static buildForPhysical(Landroid/content/Context;Landroid/os/storage/StorageVolume;)Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "volume"    # Landroid/os/storage/StorageVolume;

    .prologue
    const/4 v2, 0x0

    .line 171
    invoke-virtual {p1}, Landroid/os/storage/StorageVolume;->getSubSystem()Ljava/lang/String;

    move-result-object v1

    .line 172
    .local v1, "subsystem":Ljava/lang/String;
    invoke-static {p0}, Landroid/os/storage/StorageManager;->from(Landroid/content/Context;)Landroid/os/storage/StorageManager;

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 173
    .local v0, "state":Ljava/lang/String;
    if-eqz v1, :cond_1

    const-string v3, "usb"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "removed"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "bad_removal"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 185
    :cond_0
    :goto_0
    return-object v2

    .line 178
    :cond_1
    if-eqz v1, :cond_2

    const-string v3, "private"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 182
    :cond_2
    if-eqz v1, :cond_3

    const-string v3, "sd"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {}, Lcom/android/settings/Utils;->isSupportSDCard()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 185
    :cond_3
    new-instance v2, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;

    invoke-direct {v2, p0, p1}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;-><init>(Landroid/content/Context;Landroid/os/storage/StorageVolume;)V

    goto :goto_0
.end method

.method private buildItem(II)Lcom/android/settings/deviceinfo/StorageItemPreference;
    .locals 2
    .param p1, "titleRes"    # I
    .param p2, "colorRes"    # I

    .prologue
    .line 242
    new-instance v0, Lcom/android/settings/deviceinfo/StorageItemPreference;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lcom/android/settings/deviceinfo/StorageItemPreference;-><init>(Landroid/content/Context;II)V

    return-object v0
.end method

.method private buildItem(III)Lcom/android/settings/deviceinfo/StorageItemPreference;
    .locals 2
    .param p1, "titleRes"    # I
    .param p2, "summaryRes"    # I
    .param p3, "colorRes"    # I

    .prologue
    .line 246
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mIsNewUX:Z

    if-nez v0, :cond_1

    .line 247
    :cond_0
    new-instance v0, Lcom/android/settings/deviceinfo/StorageItemPreference;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1, p3}, Lcom/android/settings/deviceinfo/StorageItemPreference;-><init>(Landroid/content/Context;II)V

    .line 249
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lcom/android/settings/deviceinfo/StorageItemPreference;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/android/settings/deviceinfo/StorageItemPreference;-><init>(Landroid/content/Context;III)V

    goto :goto_0
.end method

.method private formatSize(J)Ljava/lang/String;
    .locals 1
    .param p1, "size"    # J

    .prologue
    .line 722
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getUsersExcluding(Landroid/content/pm/UserInfo;)Ljava/util/List;
    .locals 4
    .param p1, "excluding"    # Landroid/content/pm/UserInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/UserInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 836
    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v2}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v1

    .line 837
    .local v1, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 838
    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/pm/UserInfo;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 839
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    iget v2, v2, Landroid/content/pm/UserInfo;->id:I

    iget v3, p1, Landroid/content/pm/UserInfo;->id:I

    if-ne v2, v3, :cond_0

    .line 840
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 843
    :cond_1
    return-object v1
.end method

.method private initUsedSpace()V
    .locals 4

    .prologue
    const v3, 0x7f0a0b2c

    const/4 v2, 0x0

    .line 262
    const v0, 0x7f0a077e

    const v1, 0x7f0a0776

    invoke-direct {p0, v0, v1, v2}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->buildItem(III)Lcom/android/settings/deviceinfo/StorageItemPreference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemApps:Lcom/android/settings/deviceinfo/StorageItemPreference;

    .line 263
    const v0, 0x7f0a0781

    const v1, 0x7f0a0777

    invoke-direct {p0, v0, v1, v2}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->buildItem(III)Lcom/android/settings/deviceinfo/StorageItemPreference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemDcim:Lcom/android/settings/deviceinfo/StorageItemPreference;

    .line 264
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 265
    const v0, 0x7f0a0778

    invoke-direct {p0, v3, v0, v2}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->buildItem(III)Lcom/android/settings/deviceinfo/StorageItemPreference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemMusic:Lcom/android/settings/deviceinfo/StorageItemPreference;

    .line 268
    :goto_0
    const v0, 0x7f0a0780

    const v1, 0x7f0a077a

    invoke-direct {p0, v0, v1, v2}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->buildItem(III)Lcom/android/settings/deviceinfo/StorageItemPreference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemDownloads:Lcom/android/settings/deviceinfo/StorageItemPreference;

    .line 270
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemApps:Lcom/android/settings/deviceinfo/StorageItemPreference;

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 271
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemDcim:Lcom/android/settings/deviceinfo/StorageItemPreference;

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 272
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemMusic:Lcom/android/settings/deviceinfo/StorageItemPreference;

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 273
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemDownloads:Lcom/android/settings/deviceinfo/StorageItemPreference;

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 274
    return-void

    .line 267
    :cond_0
    const v0, 0x7f0a0779

    invoke-direct {p0, v3, v0, v2}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->buildItem(III)Lcom/android/settings/deviceinfo/StorageItemPreference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemMusic:Lcom/android/settings/deviceinfo/StorageItemPreference;

    goto :goto_0
.end method

.method private measure()V
    .locals 1

    .prologue
    .line 689
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mMeasure:Lcom/android/settings/deviceinfo/StorageMeasurement;

    invoke-virtual {v0}, Lcom/android/settings/deviceinfo/StorageMeasurement;->invalidate()V

    .line 690
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mMeasure:Lcom/android/settings/deviceinfo/StorageMeasurement;

    invoke-virtual {v0}, Lcom/android/settings/deviceinfo/StorageMeasurement;->measure()V

    .line 691
    return-void
.end method

.method private mmsSize()J
    .locals 18

    .prologue
    .line 847
    const-wide/16 v12, 0x0

    .line 848
    .local v12, "length":J
    const-wide/16 v14, 0x0

    .line 849
    .local v14, "length_attach":J
    const-wide/16 v16, 0x0

    .line 851
    .local v16, "length_db":J
    const-string v9, "dbdata/databases/com.android.providers.telephony"

    .line 852
    .local v9, "db_path":Ljava/lang/String;
    const-string v8, "mmssms.db"

    .line 854
    .local v8, "db_file":Ljava/lang/String;
    const/4 v7, 0x0

    .line 855
    .local v7, "cursor":Landroid/database/Cursor;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 857
    .local v1, "mContentResolver":Landroid/content/ContentResolver;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v2, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "m_size"

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 861
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 862
    const-wide/16 v14, 0x0

    .line 864
    :cond_0
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-long v2, v0

    add-long/2addr v14, v2

    .line 865
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 867
    :cond_1
    if-eqz v7, :cond_2

    .line 868
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 871
    :cond_2
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v9, v8}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 872
    .local v10, "dbfile":Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 873
    invoke-virtual {v10}, Ljava/io/File;->length()J

    move-result-wide v16

    .line 878
    :goto_0
    add-long v12, v14, v16

    .line 880
    return-wide v12

    .line 875
    :cond_3
    const-wide/16 v16, 0x0

    goto :goto_0
.end method

.method private static varargs totalValues(Ljava/util/HashMap;[Ljava/lang/String;)J
    .locals 8
    .param p1, "keys"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;[",
            "Ljava/lang/String;",
            ")J"
        }
    .end annotation

    .prologue
    .line 577
    .local p0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    const-wide/16 v4, 0x0

    .line 578
    .local v4, "total":J
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v2, v0, v1

    .line 579
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {p0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 580
    invoke-virtual {p0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    add-long/2addr v4, v6

    .line 578
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 583
    .end local v2    # "key":Ljava/lang/String;
    :cond_1
    return-wide v4
.end method

.method private updatePreference(Lcom/android/settings/deviceinfo/StorageItemPreference;J)V
    .locals 6
    .param p1, "pref"    # Lcom/android/settings/deviceinfo/StorageItemPreference;
    .param p2, "size"    # J

    .prologue
    .line 677
    const-wide/16 v2, 0x0

    cmp-long v1, p2, v2

    if-lez v1, :cond_1

    .line 678
    invoke-direct {p0, p2, p3}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->formatSize(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/settings/deviceinfo/StorageItemPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 679
    invoke-virtual {p1}, Lcom/android/settings/deviceinfo/StorageItemPreference;->getOrder()I

    move-result v0

    .line 680
    .local v0, "order":I
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/settings/deviceinfo/UsageBarPreference;

    if-eqz v1, :cond_0

    .line 681
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/settings/deviceinfo/UsageBarPreference;

    long-to-float v2, p2

    iget-wide v4, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mTotalSize:J

    long-to-float v3, v4

    div-float/2addr v2, v3

    iget v3, p1, Lcom/android/settings/deviceinfo/StorageItemPreference;->color:I

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/settings/deviceinfo/UsageBarPreference;->addEntry(IFI)V

    .line 686
    .end local v0    # "order":I
    :cond_0
    :goto_0
    return-void

    .line 684
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method

.method private updatePreferencesFromState()V
    .locals 11

    .prologue
    const v10, 0x7f0a13fd

    const v9, 0x7f0a0790

    const v6, 0x7f0a0788

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 440
    iget-object v4, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    if-nez v4, :cond_1

    .line 557
    :cond_0
    :goto_0
    return-void

    .line 442
    :cond_1
    iget-object v4, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    invoke-virtual {v4, v8}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 444
    iget-object v4, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v5, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v5}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 446
    .local v3, "state":Ljava/lang/String;
    const-string v4, "mounted_ro"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 447
    iget-object v4, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemAvailable:Lcom/android/settings/deviceinfo/StorageItemPreference;

    const v5, 0x7f0a076e

    invoke-virtual {v4, v5}, Lcom/android/settings/deviceinfo/StorageItemPreference;->setSummary(I)V

    .line 448
    iget-object v4, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    if-eqz v4, :cond_2

    .line 449
    iget-object v4, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    invoke-virtual {p0, v4}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 455
    :cond_2
    const-string v4, "mounted"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "mounted_ro"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 457
    :cond_3
    iget-object v4, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemTotal:Lcom/android/settings/deviceinfo/StorageItemPreference;

    invoke-virtual {p0, v4}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 458
    iget-object v4, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemAvailable:Lcom/android/settings/deviceinfo/StorageItemPreference;

    invoke-virtual {p0, v4}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 459
    iget-object v4, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    invoke-virtual {p0, v4}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 460
    iget-object v4, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    invoke-virtual {v4, v8}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 462
    iget-boolean v4, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mIsUSBOTGStorage:Z

    if-eqz v4, :cond_9

    .line 463
    iget-object v4, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    iget-object v5, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    const v6, 0x7f0a13fa

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 464
    iget-object v4, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    iget-object v5, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    const v6, 0x7f0a13fb

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 524
    :cond_4
    :goto_1
    iget-boolean v4, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mUsbConnected:Z

    if-eqz v4, :cond_11

    const-string v4, "mtp"

    iget-object v5, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mUsbFunction:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "ptp"

    iget-object v5, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mUsbFunction:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 526
    :cond_5
    iget-object v4, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    invoke-virtual {v4, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 527
    const-string v4, "mounted"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "mounted_ro"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 529
    :cond_6
    iget-object v4, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    iget-object v5, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 533
    :cond_7
    iget-object v4, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    if-eqz v4, :cond_8

    .line 534
    iget-object v4, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    invoke-virtual {v4, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 535
    iget-object v4, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    iget-object v5, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 551
    :cond_8
    :goto_2
    iget-object v4, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mContext:Landroid/content/Context;

    const-string v5, "content://com.sec.knox.provider/RestrictionPolicy3"

    const-string v6, "isSdCardEnabled"

    invoke-static {v4, v5, v6}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 552
    .local v1, "isSdCardEnabled":I
    iget-object v4, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    if-eqz v4, :cond_0

    const/4 v4, -0x1

    if-eq v1, v4, :cond_0

    if-eq v1, v8, :cond_0

    .line 554
    iget-object v4, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    invoke-virtual {v4, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_0

    .line 466
    .end local v1    # "isSdCardEnabled":I
    :cond_9
    iget-object v4, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    iget-object v5, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    const v6, 0x7f0a0785

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 467
    iget-object v4, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    iget-object v5, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    const v6, 0x7f0a0786

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 471
    :cond_a
    const-string v4, "unmounted"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b

    const-string v4, "nofs"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b

    const-string v4, "unmountable"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 481
    :cond_b
    iget-object v4, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    invoke-virtual {v4, v8}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 484
    iget-boolean v4, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mIsUSBOTGStorage:Z

    if-eqz v4, :cond_e

    .line 485
    iget-object v4, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    iget-object v5, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 486
    iget-object v4, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    iget-object v5, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    const v6, 0x7f0a13fe

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 503
    :goto_3
    new-instance v0, Landroid/dirEncryption/DirEncryptionManager;

    iget-object v4, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mContext:Landroid/content/Context;

    invoke-direct {v0, v4}, Landroid/dirEncryption/DirEncryptionManager;-><init>(Landroid/content/Context;)V

    .line 504
    .local v0, "dem":Landroid/dirEncryption/DirEncryptionManager;
    invoke-virtual {v0}, Landroid/dirEncryption/DirEncryptionManager;->getSDCardEncryptionPrefs()Landroid/dirEncryption/SDCardEncryptionPolicies;

    move-result-object v2

    .line 505
    .local v2, "sdPolicies":Landroid/dirEncryption/SDCardEncryptionPolicies;
    if-nez v2, :cond_c

    .line 506
    new-instance v2, Landroid/dirEncryption/SDCardEncryptionPolicies;

    .end local v2    # "sdPolicies":Landroid/dirEncryption/SDCardEncryptionPolicies;
    invoke-direct {v2}, Landroid/dirEncryption/SDCardEncryptionPolicies;-><init>()V

    .line 509
    .restart local v2    # "sdPolicies":Landroid/dirEncryption/SDCardEncryptionPolicies;
    :cond_c
    const/4 v4, 0x2

    iget v5, v2, Landroid/dirEncryption/SDCardEncryptionPolicies;->mEnc:I

    if-ne v4, v5, :cond_d

    invoke-virtual {v0}, Landroid/dirEncryption/DirEncryptionManager;->getCurrentUserID()I

    move-result v4

    if-eqz v4, :cond_d

    .line 510
    iget-object v4, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    invoke-virtual {v4, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 511
    iget-object v4, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    iget-object v5, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    const v6, 0x7f0a1052

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 515
    :cond_d
    iget-object v4, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/settings/deviceinfo/UsageBarPreference;

    invoke-virtual {p0, v4}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 516
    iget-object v4, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemTotal:Lcom/android/settings/deviceinfo/StorageItemPreference;

    invoke-virtual {p0, v4}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 517
    iget-object v4, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemAvailable:Lcom/android/settings/deviceinfo/StorageItemPreference;

    invoke-virtual {p0, v4}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 519
    iget-object v4, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    if-eqz v4, :cond_4

    .line 520
    iget-object v4, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    invoke-virtual {p0, v4}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_1

    .line 488
    .end local v0    # "dem":Landroid/dirEncryption/DirEncryptionManager;
    .end local v2    # "sdPolicies":Landroid/dirEncryption/SDCardEncryptionPolicies;
    :cond_e
    iget-object v4, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    iget-object v5, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 489
    iget-object v4, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    iget-object v5, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    const v6, 0x7f0a0789

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 492
    :cond_f
    iget-object v4, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    invoke-virtual {v4, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 493
    iget-boolean v4, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mIsUSBOTGStorage:Z

    if-eqz v4, :cond_10

    .line 494
    iget-object v4, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    iget-object v5, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 495
    iget-object v4, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    iget-object v5, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    const v6, 0x7f0a13fc

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 497
    :cond_10
    iget-object v4, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    iget-object v5, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 498
    iget-object v4, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    iget-object v5, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    const v6, 0x7f0a0787

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 537
    :cond_11
    iget-object v4, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    if-eqz v4, :cond_8

    .line 538
    iget-object v4, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    invoke-virtual {v4, v8}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 539
    iget-boolean v4, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mIsUSBOTGStorage:Z

    if-eqz v4, :cond_12

    .line 540
    iget-object v4, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    iget-object v5, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    const v6, 0x7f0a1400

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 542
    :cond_12
    iget-object v4, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    iget-object v5, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    const v6, 0x7f0a078c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 544
    iget-boolean v4, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mPrimary:Z

    if-nez v4, :cond_8

    .line 545
    iget-object v4, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    iget-object v5, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    const v6, 0x7f0a078d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_2
.end method

.method private updateUsedSpace(Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;)V
    .locals 13
    .param p1, "details"    # Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;

    .prologue
    .line 647
    const-string v1, "CHM"

    const-string v10, "ro.csc.sales_code"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 648
    const-wide/16 v6, 0x0

    .line 649
    .local v6, "mmsSize":J
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    if-nez v1, :cond_0

    .line 650
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mmsSize()J

    move-result-wide v6

    .line 652
    :cond_0
    iget-wide v10, p1, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->appsSize:J

    sub-long/2addr v10, v6

    iput-wide v10, p1, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->appsSize:J

    .line 655
    .end local v6    # "mmsSize":J
    :cond_1
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemApps:Lcom/android/settings/deviceinfo/StorageItemPreference;

    iget-wide v10, p1, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->appsSize:J

    invoke-direct {p0, v1, v10, v11}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->updatePreference(Lcom/android/settings/deviceinfo/StorageItemPreference;J)V

    .line 657
    iget-object v1, p1, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->mediaSize:Ljava/util/HashMap;

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    sget-object v12, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    aput-object v12, v10, v11

    const/4 v11, 0x1

    sget-object v12, Landroid/os/Environment;->DIRECTORY_MOVIES:Ljava/lang/String;

    aput-object v12, v10, v11

    const/4 v11, 0x2

    sget-object v12, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    aput-object v12, v10, v11

    invoke-static {v1, v10}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->totalValues(Ljava/util/HashMap;[Ljava/lang/String;)J

    move-result-wide v2

    .line 659
    .local v2, "dcimSize":J
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemDcim:Lcom/android/settings/deviceinfo/StorageItemPreference;

    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->updatePreference(Lcom/android/settings/deviceinfo/StorageItemPreference;J)V

    .line 661
    iget-object v1, p1, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->mediaSize:Ljava/util/HashMap;

    const/4 v10, 0x5

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    sget-object v12, Landroid/os/Environment;->DIRECTORY_MUSIC:Ljava/lang/String;

    aput-object v12, v10, v11

    const/4 v11, 0x1

    sget-object v12, Landroid/os/Environment;->DIRECTORY_ALARMS:Ljava/lang/String;

    aput-object v12, v10, v11

    const/4 v11, 0x2

    sget-object v12, Landroid/os/Environment;->DIRECTORY_NOTIFICATIONS:Ljava/lang/String;

    aput-object v12, v10, v11

    const/4 v11, 0x3

    sget-object v12, Landroid/os/Environment;->DIRECTORY_RINGTONES:Ljava/lang/String;

    aput-object v12, v10, v11

    const/4 v11, 0x4

    sget-object v12, Landroid/os/Environment;->DIRECTORY_PODCASTS:Ljava/lang/String;

    aput-object v12, v10, v11

    invoke-static {v1, v10}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->totalValues(Ljava/util/HashMap;[Ljava/lang/String;)J

    move-result-wide v8

    .line 664
    .local v8, "musicSize":J
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemMusic:Lcom/android/settings/deviceinfo/StorageItemPreference;

    invoke-direct {p0, v1, v8, v9}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->updatePreference(Lcom/android/settings/deviceinfo/StorageItemPreference;J)V

    .line 666
    iget-object v1, p1, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->mediaSize:Ljava/util/HashMap;

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    sget-object v12, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    aput-object v12, v10, v11

    invoke-static {v1, v10}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->totalValues(Ljava/util/HashMap;[Ljava/lang/String;)J

    move-result-wide v4

    .line 667
    .local v4, "downloadsSize":J
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemDownloads:Lcom/android/settings/deviceinfo/StorageItemPreference;

    invoke-direct {p0, v1, v4, v5}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->updatePreference(Lcom/android/settings/deviceinfo/StorageItemPreference;J)V

    .line 669
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mContext:Landroid/content/Context;

    const-string v10, "com.android.providers.downloads.ui"

    invoke-static {v1, v10}, Lcom/android/settings/Utils;->checkPackageState(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 670
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v10, "access_control_enabled"

    const/4 v11, 0x0

    invoke-static {v1, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x1

    .line 672
    .local v0, "bAccessControl":Z
    :goto_0
    iget-object v10, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemDownloads:Lcom/android/settings/deviceinfo/StorageItemPreference;

    if-nez v0, :cond_4

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v10, v1}, Lcom/android/settings/deviceinfo/StorageItemPreference;->setEnabled(Z)V

    .line 674
    .end local v0    # "bAccessControl":Z
    :cond_2
    return-void

    .line 670
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 672
    .restart local v0    # "bAccessControl":Z
    :cond_4
    const/4 v1, 0x0

    goto :goto_1
.end method


# virtual methods
.method public getStorageVolume()Landroid/os/storage/StorageVolume;
    .locals 1

    .prologue
    .line 435
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    return-object v0
.end method

.method public init()V
    .locals 27

    .prologue
    .line 277
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mIsUsedSpace:Z

    move/from16 v24, v0

    if-eqz v24, :cond_1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mIsNewUX:Z

    move/from16 v24, v0

    if-eqz v24, :cond_1

    .line 278
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->initUsedSpace()V

    .line 432
    :cond_0
    :goto_0
    return-void

    .line 282
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v8

    .line 283
    .local v8, "context":Landroid/content/Context;
    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    .line 285
    .local v19, "resources":Landroid/content/res/Resources;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->removeAll()V

    .line 289
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 294
    .local v9, "currentUser":Landroid/content/pm/UserInfo;
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->getUsersExcluding(Landroid/content/pm/UserInfo;)Ljava/util/List;

    move-result-object v17

    .line 295
    .local v17, "otherUsers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    move-object/from16 v24, v0

    if-nez v24, :cond_b

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v24

    if-lez v24, :cond_b

    const/16 v21, 0x1

    .line 297
    .local v21, "showUsers":Z
    :goto_1
    new-instance v24, Lcom/android/settings/deviceinfo/UsageBarPreference;

    move-object/from16 v0, v24

    invoke-direct {v0, v8}, Lcom/android/settings/deviceinfo/UsageBarPreference;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/settings/deviceinfo/UsageBarPreference;

    .line 298
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/settings/deviceinfo/UsageBarPreference;

    move-object/from16 v24, v0

    const/16 v25, -0x2

    invoke-virtual/range {v24 .. v25}, Lcom/android/settings/deviceinfo/UsageBarPreference;->setOrder(I)V

    .line 299
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/settings/deviceinfo/UsageBarPreference;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 301
    const v24, 0x7f0a076f

    const v25, 0x7f0a0770

    const/16 v26, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->buildItem(III)Lcom/android/settings/deviceinfo/StorageItemPreference;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemTotal:Lcom/android/settings/deviceinfo/StorageItemPreference;

    .line 302
    const v25, 0x7f0a076d

    const v26, 0x7f0a077b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    move-object/from16 v24, v0

    if-nez v24, :cond_c

    const v24, 0x7f09001d

    :goto_2
    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v26

    move/from16 v3, v24

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->buildItem(III)Lcom/android/settings/deviceinfo/StorageItemPreference;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemAvailable:Lcom/android/settings/deviceinfo/StorageItemPreference;

    .line 303
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemTotal:Lcom/android/settings/deviceinfo/StorageItemPreference;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 306
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mIsNewUX:Z

    move/from16 v24, v0

    if-eqz v24, :cond_2

    .line 307
    const v24, 0x7f0a0771

    const v25, 0x7f0a0772

    const v26, 0x7f090025

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->buildItem(III)Lcom/android/settings/deviceinfo/StorageItemPreference;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemSys:Lcom/android/settings/deviceinfo/StorageItemPreference;

    .line 308
    const v24, 0x7f0a0773

    const v25, 0x7f0a0774

    const v26, 0x7f09001e

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->buildItem(III)Lcom/android/settings/deviceinfo/StorageItemPreference;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemUsed:Lcom/android/settings/deviceinfo/StorageItemPreference;

    .line 310
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mIsNewUX:Z

    move/from16 v24, v0

    if-nez v24, :cond_3

    .line 311
    const v24, 0x7f0a077e

    const v25, 0x7f09001e

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->buildItem(II)Lcom/android/settings/deviceinfo/StorageItemPreference;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemApps:Lcom/android/settings/deviceinfo/StorageItemPreference;

    .line 312
    const v24, 0x7f0a0781

    const v25, 0x7f090020

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->buildItem(II)Lcom/android/settings/deviceinfo/StorageItemPreference;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemDcim:Lcom/android/settings/deviceinfo/StorageItemPreference;

    .line 313
    const v24, 0x7f0a0782

    const v25, 0x7f090021

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->buildItem(II)Lcom/android/settings/deviceinfo/StorageItemPreference;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemMusic:Lcom/android/settings/deviceinfo/StorageItemPreference;

    .line 314
    const v24, 0x7f0a0780

    const v25, 0x7f09001f

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->buildItem(II)Lcom/android/settings/deviceinfo/StorageItemPreference;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemDownloads:Lcom/android/settings/deviceinfo/StorageItemPreference;

    .line 316
    :cond_3
    const v24, 0x7f0a0784

    const v25, 0x7f090022

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->buildItem(II)Lcom/android/settings/deviceinfo/StorageItemPreference;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemCache:Lcom/android/settings/deviceinfo/StorageItemPreference;

    .line 317
    const v24, 0x7f0a0783

    const v25, 0x7f0a0775

    const v26, 0x7f090023

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->buildItem(III)Lcom/android/settings/deviceinfo/StorageItemPreference;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemMisc:Lcom/android/settings/deviceinfo/StorageItemPreference;

    .line 319
    const-string v24, "CHM"

    const-string v25, "ro.csc.sales_code"

    invoke-static/range {v25 .. v25}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_4

    .line 320
    const v24, 0x7f0a077c

    const v25, 0x7f090024

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->buildItem(II)Lcom/android/settings/deviceinfo/StorageItemPreference;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemMms:Lcom/android/settings/deviceinfo/StorageItemPreference;

    .line 323
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemCache:Lcom/android/settings/deviceinfo/StorageItemPreference;

    move-object/from16 v24, v0

    const-string v25, "cache"

    invoke-virtual/range {v24 .. v25}, Lcom/android/settings/deviceinfo/StorageItemPreference;->setKey(Ljava/lang/String;)V

    .line 325
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    move-object/from16 v24, v0

    if-eqz v24, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/os/storage/StorageVolume;->isPrimary()Z

    move-result v24

    if-eqz v24, :cond_d

    :cond_5
    const/16 v20, 0x1

    .line 326
    .local v20, "showDetails":Z
    :goto_3
    if-eqz v20, :cond_15

    .line 327
    if-eqz v21, :cond_6

    .line 328
    const-string v16, ""

    .line 329
    .local v16, "name":Ljava/lang/String;
    iget v0, v9, Landroid/content/pm/UserInfo;->id:I

    move/from16 v24, v0

    if-nez v24, :cond_e

    .line 330
    const v24, 0x7f0a0e02

    move-object/from16 v0, v19

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 334
    :goto_4
    new-instance v24, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory$PreferenceHeader;

    move-object/from16 v0, v24

    move-object/from16 v1, v16

    invoke-direct {v0, v8, v1}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory$PreferenceHeader;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 337
    .end local v16    # "name":Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mIsNewUX:Z

    move/from16 v24, v0

    if-eqz v24, :cond_7

    .line 338
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemSys:Lcom/android/settings/deviceinfo/StorageItemPreference;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 339
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemUsed:Lcom/android/settings/deviceinfo/StorageItemPreference;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 341
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mIsNewUX:Z

    move/from16 v24, v0

    if-nez v24, :cond_8

    .line 342
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemApps:Lcom/android/settings/deviceinfo/StorageItemPreference;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 343
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemDcim:Lcom/android/settings/deviceinfo/StorageItemPreference;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 344
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemMusic:Lcom/android/settings/deviceinfo/StorageItemPreference;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 345
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemDownloads:Lcom/android/settings/deviceinfo/StorageItemPreference;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 347
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemCache:Lcom/android/settings/deviceinfo/StorageItemPreference;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 348
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemMisc:Lcom/android/settings/deviceinfo/StorageItemPreference;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 350
    const-string v24, "CHM"

    const-string v25, "ro.csc.sales_code"

    invoke-static/range {v25 .. v25}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_9

    .line 351
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemMms:Lcom/android/settings/deviceinfo/StorageItemPreference;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 354
    :cond_9
    if-eqz v21, :cond_11

    .line 355
    new-instance v24, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory$PreferenceHeader;

    const v25, 0x7f0a07ae

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-direct {v0, v8, v1}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory$PreferenceHeader;-><init>(Landroid/content/Context;I)V

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 357
    const v24, 0x7f0c0113

    move-object/from16 v0, v19

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 358
    .local v5, "arUserColors":Landroid/content/res/TypedArray;
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->length()I

    move-result v15

    .line 359
    .local v15, "nUserColorsLength":I
    const/4 v7, 0x0

    .line 360
    .local v7, "colorindex":I
    const/4 v12, 0x0

    .line 361
    .local v12, "imageResources":I
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :goto_5
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_10

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/content/pm/UserInfo;

    .line 362
    .local v22, "user":Landroid/content/pm/UserInfo;
    move-object/from16 v0, v22

    iget v12, v0, Landroid/content/pm/UserInfo;->id:I

    .line 363
    if-eqz v12, :cond_a

    .line 364
    move-object/from16 v0, v22

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v24, v0

    add-int/lit8 v12, v24, -0x1

    .line 365
    :cond_a
    const-string v14, ""

    .line 366
    .local v14, "mUsername":Ljava/lang/String;
    move-object/from16 v0, v22

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v24, v0

    if-nez v24, :cond_f

    .line 367
    const v24, 0x7f0a0e02

    move-object/from16 v0, v19

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 372
    :goto_6
    rem-int v7, v12, v15

    .line 373
    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-virtual {v5, v7, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    .line 374
    .local v6, "colorRes":I
    new-instance v23, Lcom/android/settings/deviceinfo/StorageItemPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v24

    move-object/from16 v0, v22

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v25, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-direct {v0, v1, v14, v6, v2}, Lcom/android/settings/deviceinfo/StorageItemPreference;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;II)V

    .line 376
    .local v23, "userPref":Lcom/android/settings/deviceinfo/StorageItemPreference;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemUsers:Ljava/util/List;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 377
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_5

    .line 290
    .end local v5    # "arUserColors":Landroid/content/res/TypedArray;
    .end local v6    # "colorRes":I
    .end local v7    # "colorindex":I
    .end local v9    # "currentUser":Landroid/content/pm/UserInfo;
    .end local v11    # "i$":Ljava/util/Iterator;
    .end local v12    # "imageResources":I
    .end local v14    # "mUsername":Ljava/lang/String;
    .end local v15    # "nUserColorsLength":I
    .end local v17    # "otherUsers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v20    # "showDetails":Z
    .end local v21    # "showUsers":Z
    .end local v22    # "user":Landroid/content/pm/UserInfo;
    .end local v23    # "userPref":Lcom/android/settings/deviceinfo/StorageItemPreference;
    :catch_0
    move-exception v10

    .line 291
    .local v10, "e":Landroid/os/RemoteException;
    new-instance v24, Ljava/lang/RuntimeException;

    const-string v25, "Failed to get current user"

    invoke-direct/range {v24 .. v25}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v24

    .line 295
    .end local v10    # "e":Landroid/os/RemoteException;
    .restart local v9    # "currentUser":Landroid/content/pm/UserInfo;
    .restart local v17    # "otherUsers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_b
    const/16 v21, 0x0

    goto/16 :goto_1

    .line 302
    .restart local v21    # "showUsers":Z
    :cond_c
    const/16 v24, 0x0

    goto/16 :goto_2

    .line 325
    :cond_d
    const/16 v20, 0x0

    goto/16 :goto_3

    .line 332
    .restart local v16    # "name":Ljava/lang/String;
    .restart local v20    # "showDetails":Z
    :cond_e
    iget-object v0, v9, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    move-object/from16 v16, v0

    goto/16 :goto_4

    .line 370
    .end local v16    # "name":Ljava/lang/String;
    .restart local v5    # "arUserColors":Landroid/content/res/TypedArray;
    .restart local v7    # "colorindex":I
    .restart local v11    # "i$":Ljava/util/Iterator;
    .restart local v12    # "imageResources":I
    .restart local v14    # "mUsername":Ljava/lang/String;
    .restart local v15    # "nUserColorsLength":I
    .restart local v22    # "user":Landroid/content/pm/UserInfo;
    :cond_f
    move-object/from16 v0, v22

    iget-object v14, v0, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    goto :goto_6

    .line 379
    .end local v14    # "mUsername":Ljava/lang/String;
    .end local v22    # "user":Landroid/content/pm/UserInfo;
    :cond_10
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 384
    .end local v5    # "arUserColors":Landroid/content/res/TypedArray;
    .end local v7    # "colorindex":I
    .end local v11    # "i$":Ljava/util/Iterator;
    .end local v12    # "imageResources":I
    .end local v15    # "nUserColorsLength":I
    :cond_11
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemAvailable:Lcom/android/settings/deviceinfo/StorageItemPreference;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 386
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    move-object/from16 v24, v0

    if-eqz v24, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v13

    .line 387
    .local v13, "isRemovable":Z
    :goto_8
    if-eqz v13, :cond_12

    .line 388
    new-instance v24, Landroid/preference/Preference;

    move-object/from16 v0, v24

    invoke-direct {v0, v8}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    .line 389
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mIsUSBOTGStorage:Z

    move/from16 v24, v0

    if-eqz v24, :cond_17

    .line 390
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    move-object/from16 v24, v0

    const v25, 0x7f0a13fa

    invoke-virtual/range {v24 .. v25}, Landroid/preference/Preference;->setTitle(I)V

    .line 391
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    move-object/from16 v24, v0

    const v25, 0x7f0a13fb

    invoke-virtual/range {v24 .. v25}, Landroid/preference/Preference;->setSummary(I)V

    .line 396
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 399
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    move-object/from16 v24, v0

    if-eqz v24, :cond_18

    const/4 v4, 0x1

    .line 400
    .local v4, "allowFormat":Z
    :goto_a
    if-eqz v4, :cond_14

    .line 401
    new-instance v24, Landroid/preference/Preference;

    move-object/from16 v0, v24

    invoke-direct {v0, v8}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    .line 402
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mIsUSBOTGStorage:Z

    move/from16 v24, v0

    if-eqz v24, :cond_19

    .line 403
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    move-object/from16 v24, v0

    const v25, 0x7f0a13ff

    invoke-virtual/range {v24 .. v25}, Landroid/preference/Preference;->setTitle(I)V

    .line 404
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    move-object/from16 v24, v0

    const v25, 0x7f0a1400

    invoke-virtual/range {v24 .. v25}, Landroid/preference/Preference;->setSummary(I)V

    .line 415
    :cond_13
    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 418
    :cond_14
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v18

    .line 420
    .local v18, "pm":Landroid/content/pm/IPackageManager;
    :try_start_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mIsInternalStorage:Z

    move/from16 v24, v0

    if-eqz v24, :cond_1a

    invoke-interface/range {v18 .. v18}, Landroid/content/pm/IPackageManager;->isStorageLow()Z

    move-result v24

    if-eqz v24, :cond_1a

    .line 421
    new-instance v24, Landroid/preference/Preference;

    move-object/from16 v0, v24

    invoke-direct {v0, v8}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mStorageLow:Landroid/preference/Preference;

    .line 422
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mStorageLow:Landroid/preference/Preference;

    move-object/from16 v24, v0

    const/16 v25, -0x1

    invoke-virtual/range {v24 .. v25}, Landroid/preference/Preference;->setOrder(I)V

    .line 423
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mStorageLow:Landroid/preference/Preference;

    move-object/from16 v24, v0

    const v25, 0x7f0a0798

    invoke-virtual/range {v24 .. v25}, Landroid/preference/Preference;->setTitle(I)V

    .line 424
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mStorageLow:Landroid/preference/Preference;

    move-object/from16 v24, v0

    const v25, 0x7f0a0799

    invoke-virtual/range {v24 .. v25}, Landroid/preference/Preference;->setSummary(I)V

    .line 425
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mStorageLow:Landroid/preference/Preference;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 430
    :catch_1
    move-exception v24

    goto/16 :goto_0

    .line 382
    .end local v4    # "allowFormat":Z
    .end local v13    # "isRemovable":Z
    .end local v18    # "pm":Landroid/content/pm/IPackageManager;
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/settings/deviceinfo/UsageBarPreference;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_7

    .line 386
    :cond_16
    const/4 v13, 0x0

    goto/16 :goto_8

    .line 393
    .restart local v13    # "isRemovable":Z
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    move-object/from16 v24, v0

    const v25, 0x7f0a0785

    invoke-virtual/range {v24 .. v25}, Landroid/preference/Preference;->setTitle(I)V

    .line 394
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    move-object/from16 v24, v0

    const v25, 0x7f0a0786

    invoke-virtual/range {v24 .. v25}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_9

    .line 399
    :cond_18
    const/4 v4, 0x0

    goto/16 :goto_a

    .line 406
    .restart local v4    # "allowFormat":Z
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    move-object/from16 v24, v0

    const v25, 0x7f0a078a

    invoke-virtual/range {v24 .. v25}, Landroid/preference/Preference;->setTitle(I)V

    .line 407
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    move-object/from16 v24, v0

    const v25, 0x7f0a078c

    invoke-virtual/range {v24 .. v25}, Landroid/preference/Preference;->setSummary(I)V

    .line 409
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mPrimary:Z

    move/from16 v24, v0

    if-nez v24, :cond_13

    .line 410
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    move-object/from16 v24, v0

    const v25, 0x7f0a078b

    invoke-virtual/range {v24 .. v25}, Landroid/preference/Preference;->setTitle(I)V

    .line 411
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    move-object/from16 v24, v0

    const v25, 0x7f0a078d

    invoke-virtual/range {v24 .. v25}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_b

    .line 426
    .restart local v18    # "pm":Landroid/content/pm/IPackageManager;
    :cond_1a
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mStorageLow:Landroid/preference/Preference;

    move-object/from16 v24, v0

    if-eqz v24, :cond_0

    .line 427
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mStorageLow:Landroid/preference/Preference;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 428
    const/16 v24, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mStorageLow:Landroid/preference/Preference;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0
.end method

.method public intentForClick(Landroid/preference/Preference;)Landroid/content/Intent;
    .locals 10
    .param p1, "pref"    # Landroid/preference/Preference;

    .prologue
    const v3, 0x7f0a0773

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 761
    const/4 v8, 0x0

    .line 766
    .local v8, "intent":Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v9

    .line 767
    .local v9, "key":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    if-ne p1, v1, :cond_2

    .line 768
    new-instance v8, Landroid/content/Intent;

    .end local v8    # "intent":Landroid/content/Intent;
    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v8, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 769
    .restart local v8    # "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v3, Lcom/android/settings/MediaFormat;

    invoke-virtual {v8, v1, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 771
    iget-boolean v1, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mPrimary:Z

    if-nez v1, :cond_0

    .line 772
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v3, Lcom/android/settings/MediaFormatSd;

    invoke-virtual {v8, v1, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 774
    :cond_0
    const-string v1, "storage_volume"

    iget-object v3, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v8, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_1
    :goto_0
    move-object v4, v8

    .line 812
    :goto_1
    return-object v4

    .line 775
    :cond_2
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemApps:Lcom/android/settings/deviceinfo/StorageItemPreference;

    if-ne p1, v1, :cond_3

    .line 776
    new-instance v8, Landroid/content/Intent;

    .end local v8    # "intent":Landroid/content/Intent;
    const-string v1, "android.intent.action.MANAGE_PACKAGE_STORAGE"

    invoke-direct {v8, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 777
    .restart local v8    # "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v3, Lcom/android/settings/Settings$ManageApplicationsActivity;

    invoke-virtual {v8, v1, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_0

    .line 779
    :cond_3
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemDownloads:Lcom/android/settings/deviceinfo/StorageItemPreference;

    if-ne p1, v1, :cond_4

    .line 780
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW_DOWNLOADS"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "android.app.DownloadManager.extra_sortBySize"

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v8

    .line 782
    const-string v1, "packagename"

    const-string v3, "com.android.settings"

    invoke-virtual {v8, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 783
    const-string v1, "check"

    const-string v3, "downloads"

    invoke-virtual {v8, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 784
    :cond_4
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemMusic:Lcom/android/settings/deviceinfo/StorageItemPreference;

    if-ne p1, v1, :cond_5

    .line 785
    new-instance v8, Landroid/content/Intent;

    .end local v8    # "intent":Landroid/content/Intent;
    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v8, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 786
    .restart local v8    # "intent":Landroid/content/Intent;
    const-string v1, "audio/mp3"

    invoke-virtual {v8, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 787
    :cond_5
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemDcim:Lcom/android/settings/deviceinfo/StorageItemPreference;

    if-ne p1, v1, :cond_6

    .line 788
    new-instance v8, Landroid/content/Intent;

    .end local v8    # "intent":Landroid/content/Intent;
    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v8, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 789
    .restart local v8    # "intent":Landroid/content/Intent;
    const-string v1, "android.intent.extra.LOCAL_ONLY"

    invoke-virtual {v8, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 790
    const-string v1, "check"

    const-string v3, "gallery"

    invoke-virtual {v8, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 792
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v8, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_0

    .line 793
    :cond_6
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemMisc:Lcom/android/settings/deviceinfo/StorageItemPreference;

    if-ne p1, v1, :cond_7

    .line 794
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    .line 795
    .local v7, "context":Landroid/content/Context;
    new-instance v8, Landroid/content/Intent;

    .end local v8    # "intent":Landroid/content/Intent;
    const-class v1, Lcom/android/settings/deviceinfo/MiscFilesHandler;

    invoke-direct {v8, v7, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 796
    .restart local v8    # "intent":Landroid/content/Intent;
    const-string v1, "storage_volume"

    iget-object v3, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v8, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_0

    .line 797
    .end local v7    # "context":Landroid/content/Context;
    :cond_7
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemUsed:Lcom/android/settings/deviceinfo/StorageItemPreference;

    if-ne p1, v1, :cond_1

    .line 798
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 799
    .local v2, "bundle":Landroid/os/Bundle;
    const-string v1, "isUsedSpace"

    invoke-virtual {v2, v1, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 800
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v1

    instance-of v1, v1, Lcom/android/settings/SettingsActivity;

    if-eqz v1, :cond_8

    .line 801
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    .line 802
    .local v0, "sa":Lcom/android/settings/SettingsActivity;
    const-class v1, Lcom/android/settings/deviceinfo/Memory;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto/16 :goto_1

    .line 805
    .end local v0    # "sa":Lcom/android/settings/SettingsActivity;
    :cond_8
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    .line 806
    .local v0, "sa":Landroid/preference/PreferenceActivity;
    const-class v1, Lcom/android/settings/deviceinfo/Memory;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto/16 :goto_1
.end method

.method public mountToggleClicked(Landroid/preference/Preference;)Z
    .locals 1
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 756
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCacheCleared()V
    .locals 0

    .prologue
    .line 714
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->measure()V

    .line 715
    return-void
.end method

.method public onMediaScannerFinished()V
    .locals 0

    .prologue
    .line 710
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->measure()V

    .line 711
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 718
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mMeasure:Lcom/android/settings/deviceinfo/StorageMeasurement;

    invoke-virtual {v0}, Lcom/android/settings/deviceinfo/StorageMeasurement;->cleanUp()V

    .line 719
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 694
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mMeasure:Lcom/android/settings/deviceinfo/StorageMeasurement;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mReceiver:Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementReceiver;

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/StorageMeasurement;->setReceiver(Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementReceiver;)V

    .line 695
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->measure()V

    .line 696
    return-void
.end method

.method public onStorageStateChanged()V
    .locals 0

    .prologue
    .line 699
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->init()V

    .line 700
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->measure()V

    .line 701
    return-void
.end method

.method public onUsbStateChanged(ZLjava/lang/String;)V
    .locals 0
    .param p1, "isUsbConnected"    # Z
    .param p2, "usbFunction"    # Ljava/lang/String;

    .prologue
    .line 704
    iput-boolean p1, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mUsbConnected:Z

    .line 705
    iput-object p2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mUsbFunction:Ljava/lang/String;

    .line 706
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->measure()V

    .line 707
    return-void
.end method

.method public setPrevFragment(Landroid/app/Fragment;)V
    .locals 0
    .param p1, "prev"    # Landroid/app/Fragment;

    .prologue
    .line 258
    iput-object p1, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->memoryScreen:Landroid/app/Fragment;

    .line 259
    return-void
.end method

.method public setUsedSpace(Z)V
    .locals 1
    .param p1, "isUsedSpace"    # Z

    .prologue
    .line 253
    iput-boolean p1, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mIsUsedSpace:Z

    .line 254
    const v0, 0x7f0a0773

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->setTitle(I)V

    .line 255
    return-void
.end method

.method public updateApproximate(JJ)V
    .locals 7
    .param p1, "totalSize"    # J
    .param p3, "availSize"    # J

    .prologue
    .line 560
    iget-boolean v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mIsUsedSpace:Z

    if-eqz v2, :cond_0

    .line 574
    :goto_0
    return-void

    .line 562
    :cond_0
    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemTotal:Lcom/android/settings/deviceinfo/StorageItemPreference;

    invoke-direct {p0, p1, p2}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->formatSize(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/deviceinfo/StorageItemPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 563
    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemAvailable:Lcom/android/settings/deviceinfo/StorageItemPreference;

    invoke-direct {p0, p3, p4}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->formatSize(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/deviceinfo/StorageItemPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 565
    iput-wide p1, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mTotalSize:J

    .line 567
    sub-long v0, p1, p3

    .line 569
    .local v0, "usedSize":J
    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/settings/deviceinfo/UsageBarPreference;

    invoke-virtual {v2}, Lcom/android/settings/deviceinfo/UsageBarPreference;->clear()V

    .line 570
    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/settings/deviceinfo/UsageBarPreference;

    const/4 v3, 0x0

    long-to-float v4, v0

    long-to-float v5, p1

    div-float/2addr v4, v5

    const v5, -0x777778

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/settings/deviceinfo/UsageBarPreference;->addEntry(IFI)V

    .line 571
    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/settings/deviceinfo/UsageBarPreference;

    invoke-virtual {v2}, Lcom/android/settings/deviceinfo/UsageBarPreference;->commit()V

    .line 573
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->updatePreferencesFromState()V

    goto :goto_0
.end method

.method public updateDetails(Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;)V
    .locals 21
    .param p1, "details"    # Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;

    .prologue
    .line 587
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    if-eqz v15, :cond_0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v15}, Landroid/os/storage/StorageVolume;->isPrimary()Z

    move-result v15

    if-eqz v15, :cond_1

    :cond_0
    const/4 v9, 0x1

    .line 588
    .local v9, "showDetails":Z
    :goto_0
    if-nez v9, :cond_2

    .line 644
    :goto_1
    return-void

    .line 587
    .end local v9    # "showDetails":Z
    :cond_1
    const/4 v9, 0x0

    goto :goto_0

    .line 590
    .restart local v9    # "showDetails":Z
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mIsUsedSpace:Z

    if-eqz v15, :cond_3

    .line 591
    invoke-direct/range {p0 .. p1}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->updateUsedSpace(Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;)V

    goto :goto_1

    .line 596
    :cond_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemTotal:Lcom/android/settings/deviceinfo/StorageItemPreference;

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->totalSize:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-direct {v0, v1, v2}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->formatSize(J)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Lcom/android/settings/deviceinfo/StorageItemPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 597
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemAvailable:Lcom/android/settings/deviceinfo/StorageItemPreference;

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->availSize:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-direct {v0, v1, v2}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->formatSize(J)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Lcom/android/settings/deviceinfo/StorageItemPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 599
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/settings/deviceinfo/UsageBarPreference;

    invoke-virtual {v15}, Lcom/android/settings/deviceinfo/UsageBarPreference;->clear()V

    .line 601
    const-string v15, "CHM"

    const-string v18, "ro.csc.sales_code"

    invoke-static/range {v18 .. v18}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_5

    .line 602
    const-wide/16 v10, 0x0

    .line 603
    .local v10, "mmsSize":J
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    if-nez v15, :cond_4

    .line 604
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mmsSize()J

    move-result-wide v10

    .line 606
    :cond_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemMms:Lcom/android/settings/deviceinfo/StorageItemPreference;

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v10, v11}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->updatePreference(Lcom/android/settings/deviceinfo/StorageItemPreference;J)V

    .line 607
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mIsNewUX:Z

    if-eqz v15, :cond_8

    .line 608
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->usedSpace:J

    move-wide/from16 v18, v0

    sub-long v18, v18, v10

    move-wide/from16 v0, v18

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->usedSpace:J

    .line 614
    .end local v10    # "mmsSize":J
    :cond_5
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mIsNewUX:Z

    if-eqz v15, :cond_6

    .line 615
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemSys:Lcom/android/settings/deviceinfo/StorageItemPreference;

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->systemSize:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-direct {v0, v15, v1, v2}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->updatePreference(Lcom/android/settings/deviceinfo/StorageItemPreference;J)V

    .line 616
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemUsed:Lcom/android/settings/deviceinfo/StorageItemPreference;

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->usedSpace:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-direct {v0, v15, v1, v2}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->updatePreference(Lcom/android/settings/deviceinfo/StorageItemPreference;J)V

    .line 619
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mIsNewUX:Z

    if-nez v15, :cond_7

    .line 620
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemApps:Lcom/android/settings/deviceinfo/StorageItemPreference;

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->appsSize:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-direct {v0, v15, v1, v2}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->updatePreference(Lcom/android/settings/deviceinfo/StorageItemPreference;J)V

    .line 622
    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->mediaSize:Ljava/util/HashMap;

    const/16 v18, 0x3

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    sget-object v20, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    aput-object v20, v18, v19

    const/16 v19, 0x1

    sget-object v20, Landroid/os/Environment;->DIRECTORY_MOVIES:Ljava/lang/String;

    aput-object v20, v18, v19

    const/16 v19, 0x2

    sget-object v20, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    aput-object v20, v18, v19

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->totalValues(Ljava/util/HashMap;[Ljava/lang/String;)J

    move-result-wide v4

    .line 624
    .local v4, "dcimSize":J
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemDcim:Lcom/android/settings/deviceinfo/StorageItemPreference;

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v4, v5}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->updatePreference(Lcom/android/settings/deviceinfo/StorageItemPreference;J)V

    .line 626
    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->mediaSize:Ljava/util/HashMap;

    const/16 v18, 0x5

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    sget-object v20, Landroid/os/Environment;->DIRECTORY_MUSIC:Ljava/lang/String;

    aput-object v20, v18, v19

    const/16 v19, 0x1

    sget-object v20, Landroid/os/Environment;->DIRECTORY_ALARMS:Ljava/lang/String;

    aput-object v20, v18, v19

    const/16 v19, 0x2

    sget-object v20, Landroid/os/Environment;->DIRECTORY_NOTIFICATIONS:Ljava/lang/String;

    aput-object v20, v18, v19

    const/16 v19, 0x3

    sget-object v20, Landroid/os/Environment;->DIRECTORY_RINGTONES:Ljava/lang/String;

    aput-object v20, v18, v19

    const/16 v19, 0x4

    sget-object v20, Landroid/os/Environment;->DIRECTORY_PODCASTS:Ljava/lang/String;

    aput-object v20, v18, v19

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->totalValues(Ljava/util/HashMap;[Ljava/lang/String;)J

    move-result-wide v12

    .line 629
    .local v12, "musicSize":J
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemMusic:Lcom/android/settings/deviceinfo/StorageItemPreference;

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v12, v13}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->updatePreference(Lcom/android/settings/deviceinfo/StorageItemPreference;J)V

    .line 631
    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->mediaSize:Ljava/util/HashMap;

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    sget-object v20, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    aput-object v20, v18, v19

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->totalValues(Ljava/util/HashMap;[Ljava/lang/String;)J

    move-result-wide v6

    .line 632
    .local v6, "downloadsSize":J
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemDownloads:Lcom/android/settings/deviceinfo/StorageItemPreference;

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v6, v7}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->updatePreference(Lcom/android/settings/deviceinfo/StorageItemPreference;J)V

    .line 635
    .end local v4    # "dcimSize":J
    .end local v6    # "downloadsSize":J
    .end local v12    # "musicSize":J
    :cond_7
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemCache:Lcom/android/settings/deviceinfo/StorageItemPreference;

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->cacheSize:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-direct {v0, v15, v1, v2}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->updatePreference(Lcom/android/settings/deviceinfo/StorageItemPreference;J)V

    .line 636
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemMisc:Lcom/android/settings/deviceinfo/StorageItemPreference;

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->miscSize:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-direct {v0, v15, v1, v2}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->updatePreference(Lcom/android/settings/deviceinfo/StorageItemPreference;J)V

    .line 638
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mItemUsers:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_9

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/settings/deviceinfo/StorageItemPreference;

    .line 639
    .local v14, "userPref":Lcom/android/settings/deviceinfo/StorageItemPreference;
    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->usersSize:Landroid/util/SparseLongArray;

    iget v0, v14, Lcom/android/settings/deviceinfo/StorageItemPreference;->userHandle:I

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v16

    .line 640
    .local v16, "userSize":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    invoke-direct {v0, v14, v1, v2}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->updatePreference(Lcom/android/settings/deviceinfo/StorageItemPreference;J)V

    goto :goto_3

    .line 610
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v14    # "userPref":Lcom/android/settings/deviceinfo/StorageItemPreference;
    .end local v16    # "userSize":J
    .restart local v10    # "mmsSize":J
    :cond_8
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->appsSize:J

    move-wide/from16 v18, v0

    sub-long v18, v18, v10

    move-wide/from16 v0, v18

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->appsSize:J

    goto/16 :goto_2

    .line 643
    .end local v10    # "mmsSize":J
    .restart local v8    # "i$":Ljava/util/Iterator;
    :cond_9
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/settings/deviceinfo/UsageBarPreference;

    invoke-virtual {v15}, Lcom/android/settings/deviceinfo/UsageBarPreference;->commit()V

    goto/16 :goto_1
.end method
