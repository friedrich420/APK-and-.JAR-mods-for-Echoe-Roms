.class public Landroid/content/pm/PackageInfo;
.super Ljava/lang/Object;
.source "PackageInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final INSTALL_LOCATION_AUTO:I = 0x0

.field public static final INSTALL_LOCATION_INTERNAL_ONLY:I = 0x1

.field public static final INSTALL_LOCATION_PREFER_EXTERNAL:I = 0x2

.field public static final INSTALL_LOCATION_UNSPECIFIED:I = -0x1

.field public static final REQUESTED_PERMISSION_GRANTED:I = 0x2

.field public static final REQUESTED_PERMISSION_REQUIRED:I = 0x1


# instance fields
.field public activities:[Landroid/content/pm/ActivityInfo;

.field public applicationInfo:Landroid/content/pm/ApplicationInfo;

.field public configPreferences:[Landroid/content/pm/ConfigurationInfo;

.field public coreApp:Z

.field public featureGroups:[Landroid/content/pm/FeatureGroupInfo;

.field public firstInstallTime:J

.field public gids:[I

.field public installLocation:I

.field public instrumentation:[Landroid/content/pm/InstrumentationInfo;

.field public lastUpdateTime:J

.field public overlayTarget:Ljava/lang/String;

.field public packageName:Ljava/lang/String;

.field public permissions:[Landroid/content/pm/PermissionInfo;

.field public providers:[Landroid/content/pm/ProviderInfo;

.field public receivers:[Landroid/content/pm/ActivityInfo;

.field public reqFeatures:[Landroid/content/pm/FeatureInfo;

.field public requestedPermissions:[Ljava/lang/String;

.field public requestedPermissionsFlags:[I

.field public requiredAccountType:Ljava/lang/String;

.field public requiredForAllUsers:Z

.field public restrictedAccountType:Ljava/lang/String;

.field public services:[Landroid/content/pm/ServiceInfo;

.field public sharedUserId:Ljava/lang/String;

.field public sharedUserLabel:I

.field public signatures:[Landroid/content/pm/Signature;

.field public splitNames:[Ljava/lang/String;

.field public versionCode:I

.field public versionName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 307
    new-instance v0, Landroid/content/pm/PackageInfo$1;

    invoke-direct {v0}, Landroid/content/pm/PackageInfo$1;-><init>()V

    sput-object v0, CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 258
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 236
    const/4 v0, 0x1

    iput v0, p0, installLocation:I

    .line 259
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 8
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 318
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 236
    iput v2, p0, installLocation:I

    .line 319
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, packageName:Ljava/lang/String;

    .line 320
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, splitNames:[Ljava/lang/String;

    .line 321
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, versionCode:I

    .line 322
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, versionName:Ljava/lang/String;

    .line 323
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, sharedUserId:Ljava/lang/String;

    .line 324
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, sharedUserLabel:I

    .line 325
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 326
    .local v0, "hasApp":I
    if-eqz v0, :cond_3b

    .line 327
    sget-object v1, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    iput-object v1, p0, applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 329
    :cond_3b
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, firstInstallTime:J

    .line 330
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, lastUpdateTime:J

    .line 331
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    iput-object v1, p0, gids:[I

    .line 332
    sget-object v1, Landroid/content/pm/ActivityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/content/pm/ActivityInfo;

    iput-object v1, p0, activities:[Landroid/content/pm/ActivityInfo;

    .line 333
    sget-object v1, Landroid/content/pm/ActivityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/content/pm/ActivityInfo;

    iput-object v1, p0, receivers:[Landroid/content/pm/ActivityInfo;

    .line 334
    sget-object v1, Landroid/content/pm/ServiceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/content/pm/ServiceInfo;

    iput-object v1, p0, services:[Landroid/content/pm/ServiceInfo;

    .line 335
    sget-object v1, Landroid/content/pm/ProviderInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/content/pm/ProviderInfo;

    iput-object v1, p0, providers:[Landroid/content/pm/ProviderInfo;

    .line 336
    sget-object v1, Landroid/content/pm/InstrumentationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/content/pm/InstrumentationInfo;

    iput-object v1, p0, instrumentation:[Landroid/content/pm/InstrumentationInfo;

    .line 337
    sget-object v1, Landroid/content/pm/PermissionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/content/pm/PermissionInfo;

    iput-object v1, p0, permissions:[Landroid/content/pm/PermissionInfo;

    .line 338
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, requestedPermissions:[Ljava/lang/String;

    .line 339
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    iput-object v1, p0, requestedPermissionsFlags:[I

    .line 340
    sget-object v1, Landroid/content/pm/Signature;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/content/pm/Signature;

    iput-object v1, p0, signatures:[Landroid/content/pm/Signature;

    .line 341
    sget-object v1, Landroid/content/pm/ConfigurationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/content/pm/ConfigurationInfo;

    iput-object v1, p0, configPreferences:[Landroid/content/pm/ConfigurationInfo;

    .line 342
    sget-object v1, Landroid/content/pm/FeatureInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/content/pm/FeatureInfo;

    iput-object v1, p0, reqFeatures:[Landroid/content/pm/FeatureInfo;

    .line 343
    sget-object v1, Landroid/content/pm/FeatureGroupInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/content/pm/FeatureGroupInfo;

    iput-object v1, p0, featureGroups:[Landroid/content/pm/FeatureGroupInfo;

    .line 344
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, installLocation:I

    .line 345
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_e7

    move v1, v2

    :goto_ca
    iput-boolean v1, p0, coreApp:Z

    .line 346
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_e9

    :goto_d2
    iput-boolean v2, p0, requiredForAllUsers:Z

    .line 347
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, restrictedAccountType:Ljava/lang/String;

    .line 348
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, requiredAccountType:Ljava/lang/String;

    .line 349
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, overlayTarget:Ljava/lang/String;

    .line 350
    return-void

    :cond_e7
    move v1, v3

    .line 345
    goto :goto_ca

    :cond_e9
    move v2, v3

    .line 346
    goto :goto_d2
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/content/pm/PackageInfo$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroid/content/pm/PackageInfo$1;

    .prologue
    .line 26
    invoke-direct {p0, p1}, <init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 268
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 262
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PackageInfo{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 9
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "parcelableFlags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 272
    iget-object v0, p0, packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 273
    iget-object v0, p0, splitNames:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 274
    iget v0, p0, versionCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 275
    iget-object v0, p0, versionName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 276
    iget-object v0, p0, sharedUserId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 277
    iget v0, p0, sharedUserLabel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 278
    iget-object v0, p0, applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_9b

    .line 279
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 280
    iget-object v0, p0, applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/ApplicationInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 284
    :goto_2c
    iget-wide v4, p0, firstInstallTime:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 285
    iget-wide v4, p0, lastUpdateTime:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 286
    iget-object v0, p0, gids:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 287
    iget-object v0, p0, activities:[Landroid/content/pm/ActivityInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 288
    iget-object v0, p0, receivers:[Landroid/content/pm/ActivityInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 289
    iget-object v0, p0, services:[Landroid/content/pm/ServiceInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 290
    iget-object v0, p0, providers:[Landroid/content/pm/ProviderInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 291
    iget-object v0, p0, instrumentation:[Landroid/content/pm/InstrumentationInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 292
    iget-object v0, p0, permissions:[Landroid/content/pm/PermissionInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 293
    iget-object v0, p0, requestedPermissions:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 294
    iget-object v0, p0, requestedPermissionsFlags:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 295
    iget-object v0, p0, signatures:[Landroid/content/pm/Signature;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 296
    iget-object v0, p0, configPreferences:[Landroid/content/pm/ConfigurationInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 297
    iget-object v0, p0, reqFeatures:[Landroid/content/pm/FeatureInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 298
    iget-object v0, p0, featureGroups:[Landroid/content/pm/FeatureGroupInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 299
    iget v0, p0, installLocation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 300
    iget-boolean v0, p0, coreApp:Z

    if-eqz v0, :cond_9f

    move v0, v1

    :goto_81
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 301
    iget-boolean v0, p0, requiredForAllUsers:Z

    if-eqz v0, :cond_a1

    :goto_88
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 302
    iget-object v0, p0, restrictedAccountType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 303
    iget-object v0, p0, requiredAccountType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 304
    iget-object v0, p0, overlayTarget:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 305
    return-void

    .line 282
    :cond_9b
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2c

    :cond_9f
    move v0, v2

    .line 300
    goto :goto_81

    :cond_a1
    move v1, v2

    .line 301
    goto :goto_88
.end method
