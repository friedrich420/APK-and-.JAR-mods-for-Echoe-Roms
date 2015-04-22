.class public abstract Landroid/content/pm/IPackageManager$Stub;
.super Landroid/os/Binder;
.source "IPackageManager.java"

# interfaces
.implements Landroid/content/pm/IPackageManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/IPackageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/IPackageManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.content.pm.IPackageManager"

.field static final TRANSACTION_AASA_IsEnabled:I = 0x14

.field static final TRANSACTION_AASA_getSEInfo:I = 0x13

.field static final TRANSACTION_AASA_managedPermission:I = 0x11

.field static final TRANSACTION_AASA_managedPermissionByUID:I = 0x12

.field static final TRANSACTION_activitySupportsIntent:I = 0xd

.field static final TRANSACTION_addCrossProfileIntentFilter:I = 0x48

.field static final TRANSACTION_addPackageToPreferred:I = 0x3c

.field static final TRANSACTION_addPermission:I = 0x17

.field static final TRANSACTION_addPermissionAsync:I = 0x63

.field static final TRANSACTION_addPersistentPreferredActivity:I = 0x46

.field static final TRANSACTION_addPreferredActivity:I = 0x42

.field static final TRANSACTION_canForwardTo:I = 0x25

.field static final TRANSACTION_canonicalToCurrentPackageNames:I = 0x6

.field static final TRANSACTION_checkPermission:I = 0x15

.field static final TRANSACTION_checkSignatures:I = 0x1c

.field static final TRANSACTION_checkUidPermission:I = 0x16

.field static final TRANSACTION_checkUidSignatures:I = 0x1d

.field static final TRANSACTION_clearApplicationUserData:I = 0x53

.field static final TRANSACTION_clearCrossProfileIntentFilters:I = 0x49

.field static final TRANSACTION_clearPackagePersistentPreferredActivities:I = 0x47

.field static final TRANSACTION_clearPackagePreferredActivities:I = 0x44

.field static final TRANSACTION_clearPackagePreferredActivitiesAsUser:I = 0x75

.field static final TRANSACTION_currentToCanonicalPackageNames:I = 0x5

.field static final TRANSACTION_deleteApplicationCacheFiles:I = 0x52

.field static final TRANSACTION_deletePackage:I = 0x3a

.field static final TRANSACTION_deletePackageAsUser:I = 0x39

.field static final TRANSACTION_enterSafeMode:I = 0x59

.field static final TRANSACTION_extendVerificationTimeout:I = 0x68

.field static final TRANSACTION_finishPackageInstall:I = 0x37

.field static final TRANSACTION_forceDexOpt:I = 0x5f

.field static final TRANSACTION_freeStorage:I = 0x51

.field static final TRANSACTION_freeStorageAndNotify:I = 0x50

.field static final TRANSACTION_getActivityInfo:I = 0xc

.field static final TRANSACTION_getAllPermissionGroups:I = 0xa

.field static final TRANSACTION_getAppOpPermissionPackages:I = 0x23

.field static final TRANSACTION_getApplicationEnabledSetting:I = 0x4e

.field static final TRANSACTION_getApplicationHiddenSettingAsUser:I = 0x78

.field static final TRANSACTION_getApplicationInfo:I = 0xb

.field static final TRANSACTION_getBlockUninstallForUser:I = 0x7b

.field static final TRANSACTION_getComponentEnabledSetting:I = 0x4c

.field static final TRANSACTION_getFlagsForUid:I = 0x21

.field static final TRANSACTION_getGrantedPermissions:I = 0x72

.field static final TRANSACTION_getHomeActivities:I = 0x4a

.field static final TRANSACTION_getInstallLocation:I = 0x65

.field static final TRANSACTION_getInstalledApplications:I = 0x2e

.field static final TRANSACTION_getInstalledPackages:I = 0x2c

.field static final TRANSACTION_getInstallerPackageName:I = 0x3b

.field static final TRANSACTION_getInstrumentationInfo:I = 0x33

.field static final TRANSACTION_getKeySetByAlias:I = 0x7c

.field static final TRANSACTION_getLastChosenActivity:I = 0x40

.field static final TRANSACTION_getNameForUid:I = 0x1f

.field static final TRANSACTION_getPackageGids:I = 0x4

.field static final TRANSACTION_getPackageInfo:I = 0x2

.field static final TRANSACTION_getPackageInstaller:I = 0x79

.field static final TRANSACTION_getPackageSizeInfo:I = 0x54

.field static final TRANSACTION_getPackageUid:I = 0x3

.field static final TRANSACTION_getPackagesForUid:I = 0x1e

.field static final TRANSACTION_getPackagesHoldingPermissions:I = 0x2d

.field static final TRANSACTION_getPermissionGroupInfo:I = 0x9

.field static final TRANSACTION_getPermissionInfo:I = 0x7

.field static final TRANSACTION_getPersistentApplications:I = 0x2f

.field static final TRANSACTION_getPreferredActivities:I = 0x45

.field static final TRANSACTION_getPreferredPackages:I = 0x3e

.field static final TRANSACTION_getProviderInfo:I = 0x10

.field static final TRANSACTION_getReceiverInfo:I = 0xe

.field static final TRANSACTION_getServiceInfo:I = 0xf

.field static final TRANSACTION_getSigningKeySet:I = 0x7d

.field static final TRANSACTION_getSystemAvailableFeatures:I = 0x56

.field static final TRANSACTION_getSystemFeatureLevel:I = 0x58

.field static final TRANSACTION_getSystemSharedLibraryNames:I = 0x55

.field static final TRANSACTION_getUidForSharedUser:I = 0x20

.field static final TRANSACTION_getVerifierDeviceIdentity:I = 0x69

.field static final TRANSACTION_grantPermission:I = 0x19

.field static final TRANSACTION_hasSystemFeature:I = 0x57

.field static final TRANSACTION_hasSystemUidErrors:I = 0x5c

.field static final TRANSACTION_installExistingPackageAsUser:I = 0x66

.field static final TRANSACTION_installExistingPackageAsUserForMDM:I = 0x74

.field static final TRANSACTION_installPackage:I = 0x35

.field static final TRANSACTION_installPackageAsUser:I = 0x36

.field static final TRANSACTION_installPackageForMDM:I = 0x73

.field static final TRANSACTION_isFirstBoot:I = 0x6a

.field static final TRANSACTION_isOnlyCoreApps:I = 0x6b

.field static final TRANSACTION_isPackageAvailable:I = 0x1

.field static final TRANSACTION_isPackageSignedByKeySet:I = 0x7e

.field static final TRANSACTION_isPackageSignedByKeySetExactly:I = 0x7f

.field static final TRANSACTION_isPermissionEnforced:I = 0x6d

.field static final TRANSACTION_isProtectedBroadcast:I = 0x1b

.field static final TRANSACTION_isSafeMode:I = 0x5a

.field static final TRANSACTION_isStorageLow:I = 0x76

.field static final TRANSACTION_isUidPrivileged:I = 0x22

.field static final TRANSACTION_movePackage:I = 0x62

.field static final TRANSACTION_nextPackageToClean:I = 0x61

.field static final TRANSACTION_performBootDexOpt:I = 0x5d

.field static final TRANSACTION_performDexOptIfNeeded:I = 0x5e

.field static final TRANSACTION_queryContentProviders:I = 0x32

.field static final TRANSACTION_queryInstrumentation:I = 0x34

.field static final TRANSACTION_queryIntentActivities:I = 0x26

.field static final TRANSACTION_queryIntentActivityOptions:I = 0x27

.field static final TRANSACTION_queryIntentContentProviders:I = 0x2b

.field static final TRANSACTION_queryIntentReceivers:I = 0x28

.field static final TRANSACTION_queryIntentServices:I = 0x2a

.field static final TRANSACTION_queryPermissionsByGroup:I = 0x8

.field static final TRANSACTION_querySyncProviders:I = 0x31

.field static final TRANSACTION_removePackageFromPreferred:I = 0x3d

.field static final TRANSACTION_removePermission:I = 0x18

.field static final TRANSACTION_replacePreferredActivity:I = 0x43

.field static final TRANSACTION_resetPreferredActivities:I = 0x3f

.field static final TRANSACTION_resolveContentProvider:I = 0x30

.field static final TRANSACTION_resolveIntent:I = 0x24

.field static final TRANSACTION_resolveService:I = 0x29

.field static final TRANSACTION_revokeExternalPermissions:I = 0x6e

.field static final TRANSACTION_revokePermission:I = 0x1a

.field static final TRANSACTION_revokePermissionEDM:I = 0x70

.field static final TRANSACTION_rollbackPermission:I = 0x71

.field static final TRANSACTION_setApplicationEnabledSetting:I = 0x4d

.field static final TRANSACTION_setApplicationEnabledSettingWithList:I = 0x80

.field static final TRANSACTION_setApplicationHiddenSettingAsUser:I = 0x77

.field static final TRANSACTION_setBlockUninstallForUser:I = 0x7a

.field static final TRANSACTION_setComponentEnabledSetting:I = 0x4b

.field static final TRANSACTION_setInstallLocation:I = 0x64

.field static final TRANSACTION_setInstallerPackageName:I = 0x38

.field static final TRANSACTION_setLastChosenActivity:I = 0x41

.field static final TRANSACTION_setLicensePermissions:I = 0x6f

.field static final TRANSACTION_setPackageStoppedState:I = 0x4f

.field static final TRANSACTION_setPermissionEnforced:I = 0x6c

.field static final TRANSACTION_systemReady:I = 0x5b

.field static final TRANSACTION_updateExternalMediaStatus:I = 0x60

.field static final TRANSACTION_verifyPendingInstall:I = 0x67


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 21
    const-string v0, "android.content.pm.IPackageManager"

    invoke-virtual {p0, p0, v0}, attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 22
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 29
    if-nez p0, :cond_4

    .line 30
    const/4 v0, 0x0

    .line 36
    :goto_3
    return-object v0

    .line 32
    :cond_4
    const-string v1, "android.content.pm.IPackageManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 33
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/content/pm/IPackageManager;

    if-eqz v1, :cond_13

    .line 34
    check-cast v0, Landroid/content/pm/IPackageManager;

    goto :goto_3

    .line 36
    :cond_13
    new-instance v0, Landroid/content/pm/IPackageManager$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/content/pm/IPackageManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 40
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 43
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 44
    sparse-switch p1, :sswitch_data_1466

    .line 1915
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_7
    return v4

    .line 48
    :sswitch_8
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 49
    const/4 v4, 0x1

    goto :goto_7

    .line 53
    :sswitch_11
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 55
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 57
    .local v5, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 58
    .local v6, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, isPackageAvailable(Ljava/lang/String;I)Z

    move-result v27

    .line 59
    .local v27, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 60
    if-eqz v27, :cond_33

    const/4 v4, 0x1

    :goto_2c
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 61
    const/4 v4, 0x1

    goto :goto_7

    .line 60
    :cond_33
    const/4 v4, 0x0

    goto :goto_2c

    .line 65
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":I
    .end local v27    # "_result":Z
    :sswitch_35
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 69
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 71
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 72
    .local v7, "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v27

    .line 73
    .local v27, "_result":Landroid/content/pm/PackageInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 74
    if-eqz v27, :cond_63

    .line 75
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 76
    const/4 v4, 0x1

    move-object/from16 v0, v27

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/content/pm/PackageInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 81
    :goto_61
    const/4 v4, 0x1

    goto :goto_7

    .line 79
    :cond_63
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_61

    .line 85
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    .end local v27    # "_result":Landroid/content/pm/PackageInfo;
    :sswitch_6a
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 89
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 90
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, getPackageUid(Ljava/lang/String;I)I

    move-result v27

    .line 91
    .local v27, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 92
    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 93
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 97
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":I
    .end local v27    # "_result":I
    :sswitch_8c
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 100
    .restart local v5    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, getPackageGids(Ljava/lang/String;)[I

    move-result-object v27

    .line 101
    .local v27, "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 102
    move-object/from16 v0, p3

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 103
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 107
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v27    # "_result":[I
    :sswitch_aa
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 109
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v5

    .line 110
    .local v5, "_arg0":[Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, currentToCanonicalPackageNames([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v27

    .line 111
    .local v27, "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 112
    move-object/from16 v0, p3

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 113
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 117
    .end local v5    # "_arg0":[Ljava/lang/String;
    .end local v27    # "_result":[Ljava/lang/String;
    :sswitch_c8
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 119
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v5

    .line 120
    .restart local v5    # "_arg0":[Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, canonicalToCurrentPackageNames([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v27

    .line 121
    .restart local v27    # "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 122
    move-object/from16 v0, p3

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 123
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 127
    .end local v5    # "_arg0":[Ljava/lang/String;
    .end local v27    # "_result":[Ljava/lang/String;
    :sswitch_e6
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 129
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 131
    .local v5, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 132
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object v27

    .line 133
    .local v27, "_result":Landroid/content/pm/PermissionInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 134
    if-eqz v27, :cond_111

    .line 135
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 136
    const/4 v4, 0x1

    move-object/from16 v0, v27

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/content/pm/PermissionInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 141
    :goto_10e
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 139
    :cond_111
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_10e

    .line 145
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":I
    .end local v27    # "_result":Landroid/content/pm/PermissionInfo;
    :sswitch_118
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 147
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 149
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 150
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, queryPermissionsByGroup(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v34

    .line 151
    .local v34, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PermissionInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 152
    move-object/from16 v0, p3

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 153
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 157
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":I
    .end local v34    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PermissionInfo;>;"
    :sswitch_13a
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 159
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 161
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 162
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;

    move-result-object v27

    .line 163
    .local v27, "_result":Landroid/content/pm/PermissionGroupInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 164
    if-eqz v27, :cond_165

    .line 165
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 166
    const/4 v4, 0x1

    move-object/from16 v0, v27

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/content/pm/PermissionGroupInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 171
    :goto_162
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 169
    :cond_165
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_162

    .line 175
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":I
    .end local v27    # "_result":Landroid/content/pm/PermissionGroupInfo;
    :sswitch_16c
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 177
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 178
    .local v5, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, getAllPermissionGroups(I)Ljava/util/List;

    move-result-object v33

    .line 179
    .local v33, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PermissionGroupInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 180
    move-object/from16 v0, p3

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 181
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 185
    .end local v5    # "_arg0":I
    .end local v33    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PermissionGroupInfo;>;"
    :sswitch_18a
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 187
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 189
    .local v5, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 191
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 192
    .restart local v7    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v27

    .line 193
    .local v27, "_result":Landroid/content/pm/ApplicationInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 194
    if-eqz v27, :cond_1b9

    .line 195
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 196
    const/4 v4, 0x1

    move-object/from16 v0, v27

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/content/pm/ApplicationInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 201
    :goto_1b6
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 199
    :cond_1b9
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1b6

    .line 205
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    .end local v27    # "_result":Landroid/content/pm/ApplicationInfo;
    :sswitch_1c0
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 207
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1fb

    .line 208
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 214
    .local v5, "_arg0":Landroid/content/ComponentName;
    :goto_1d7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 216
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 217
    .restart local v7    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, getActivityInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;

    move-result-object v27

    .line 218
    .local v27, "_result":Landroid/content/pm/ActivityInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 219
    if-eqz v27, :cond_1fd

    .line 220
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 221
    const/4 v4, 0x1

    move-object/from16 v0, v27

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/content/pm/ActivityInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 226
    :goto_1f8
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 211
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    .end local v27    # "_result":Landroid/content/pm/ActivityInfo;
    :cond_1fb
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_1d7

    .line 224
    .restart local v6    # "_arg1":I
    .restart local v7    # "_arg2":I
    .restart local v27    # "_result":Landroid/content/pm/ActivityInfo;
    :cond_1fd
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1f8

    .line 230
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    .end local v27    # "_result":Landroid/content/pm/ActivityInfo;
    :sswitch_204
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 232
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_243

    .line 233
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 239
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_21b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_245

    .line 240
    sget-object v4, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/Intent;

    .line 246
    .local v6, "_arg1":Landroid/content/Intent;
    :goto_22b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 247
    .local v7, "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, activitySupportsIntent(Landroid/content/ComponentName;Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v27

    .line 248
    .local v27, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 249
    if-eqz v27, :cond_247

    const/4 v4, 0x1

    :goto_23b
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 250
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 236
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Landroid/content/Intent;
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v27    # "_result":Z
    :cond_243
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_21b

    .line 243
    :cond_245
    const/4 v6, 0x0

    .restart local v6    # "_arg1":Landroid/content/Intent;
    goto :goto_22b

    .line 249
    .restart local v7    # "_arg2":Ljava/lang/String;
    .restart local v27    # "_result":Z
    :cond_247
    const/4 v4, 0x0

    goto :goto_23b

    .line 254
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Landroid/content/Intent;
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v27    # "_result":Z
    :sswitch_249
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 256
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_284

    .line 257
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 263
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_260
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 265
    .local v6, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 266
    .local v7, "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, getReceiverInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;

    move-result-object v27

    .line 267
    .local v27, "_result":Landroid/content/pm/ActivityInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 268
    if-eqz v27, :cond_286

    .line 269
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 270
    const/4 v4, 0x1

    move-object/from16 v0, v27

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/content/pm/ActivityInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 275
    :goto_281
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 260
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    .end local v27    # "_result":Landroid/content/pm/ActivityInfo;
    :cond_284
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_260

    .line 273
    .restart local v6    # "_arg1":I
    .restart local v7    # "_arg2":I
    .restart local v27    # "_result":Landroid/content/pm/ActivityInfo;
    :cond_286
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_281

    .line 279
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    .end local v27    # "_result":Landroid/content/pm/ActivityInfo;
    :sswitch_28d
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 281
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2c8

    .line 282
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 288
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_2a4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 290
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 291
    .restart local v7    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, getServiceInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ServiceInfo;

    move-result-object v27

    .line 292
    .local v27, "_result":Landroid/content/pm/ServiceInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 293
    if-eqz v27, :cond_2ca

    .line 294
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 295
    const/4 v4, 0x1

    move-object/from16 v0, v27

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/content/pm/ServiceInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 300
    :goto_2c5
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 285
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    .end local v27    # "_result":Landroid/content/pm/ServiceInfo;
    :cond_2c8
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_2a4

    .line 298
    .restart local v6    # "_arg1":I
    .restart local v7    # "_arg2":I
    .restart local v27    # "_result":Landroid/content/pm/ServiceInfo;
    :cond_2ca
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2c5

    .line 304
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    .end local v27    # "_result":Landroid/content/pm/ServiceInfo;
    :sswitch_2d1
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 306
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_30c

    .line 307
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 313
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_2e8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 315
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 316
    .restart local v7    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, getProviderInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ProviderInfo;

    move-result-object v27

    .line 317
    .local v27, "_result":Landroid/content/pm/ProviderInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 318
    if-eqz v27, :cond_30e

    .line 319
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 320
    const/4 v4, 0x1

    move-object/from16 v0, v27

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/content/pm/ProviderInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 325
    :goto_309
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 310
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    .end local v27    # "_result":Landroid/content/pm/ProviderInfo;
    :cond_30c
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_2e8

    .line 323
    .restart local v6    # "_arg1":I
    .restart local v7    # "_arg2":I
    .restart local v27    # "_result":Landroid/content/pm/ProviderInfo;
    :cond_30e
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_309

    .line 329
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    .end local v27    # "_result":Landroid/content/pm/ProviderInfo;
    :sswitch_315
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 331
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 333
    .local v5, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 334
    .local v6, "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, AASA_managedPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v27

    .line 335
    .local v27, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 336
    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 337
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 341
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v27    # "_result":I
    :sswitch_337
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 343
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 345
    .local v5, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 346
    .restart local v6    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, AASA_managedPermissionByUID(ILjava/lang/String;)I

    move-result v27

    .line 347
    .restart local v27    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 348
    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 349
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 353
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v27    # "_result":I
    :sswitch_359
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 355
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 356
    .local v5, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, AASA_getSEInfo(Ljava/lang/String;)[B

    move-result-object v27

    .line 357
    .local v27, "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 358
    move-object/from16 v0, p3

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 359
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 363
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v27    # "_result":[B
    :sswitch_377
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 364
    invoke-virtual/range {p0 .. p0}, AASA_IsEnabled()Z

    move-result v27

    .line 365
    .local v27, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 366
    if-eqz v27, :cond_390

    const/4 v4, 0x1

    :goto_388
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 367
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 366
    :cond_390
    const/4 v4, 0x0

    goto :goto_388

    .line 371
    .end local v27    # "_result":Z
    :sswitch_392
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 373
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 375
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 376
    .restart local v6    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v27

    .line 377
    .local v27, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 378
    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 379
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 383
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v27    # "_result":I
    :sswitch_3b4
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 385
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 387
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 388
    .local v6, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, checkUidPermission(Ljava/lang/String;I)I

    move-result v27

    .line 389
    .restart local v27    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 390
    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 391
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 395
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":I
    .end local v27    # "_result":I
    :sswitch_3d6
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 397
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_401

    .line 398
    sget-object v4, Landroid/content/pm/PermissionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PermissionInfo;

    .line 403
    .local v5, "_arg0":Landroid/content/pm/PermissionInfo;
    :goto_3ed
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, addPermission(Landroid/content/pm/PermissionInfo;)Z

    move-result v27

    .line 404
    .local v27, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 405
    if-eqz v27, :cond_403

    const/4 v4, 0x1

    :goto_3f9
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 406
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 401
    .end local v5    # "_arg0":Landroid/content/pm/PermissionInfo;
    .end local v27    # "_result":Z
    :cond_401
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/pm/PermissionInfo;
    goto :goto_3ed

    .line 405
    .restart local v27    # "_result":Z
    :cond_403
    const/4 v4, 0x0

    goto :goto_3f9

    .line 410
    .end local v5    # "_arg0":Landroid/content/pm/PermissionInfo;
    .end local v27    # "_result":Z
    :sswitch_405
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 412
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 413
    .local v5, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, removePermission(Ljava/lang/String;)V

    .line 414
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 415
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 419
    .end local v5    # "_arg0":Ljava/lang/String;
    :sswitch_41b
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 421
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 423
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 424
    .local v6, "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, grantPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 426
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 430
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Ljava/lang/String;
    :sswitch_435
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 432
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 434
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 435
    .restart local v6    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, revokePermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 437
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 441
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Ljava/lang/String;
    :sswitch_44f
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 443
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 444
    .restart local v5    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, isProtectedBroadcast(Ljava/lang/String;)Z

    move-result v27

    .line 445
    .restart local v27    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 446
    if-eqz v27, :cond_46e

    const/4 v4, 0x1

    :goto_466
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 447
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 446
    :cond_46e
    const/4 v4, 0x0

    goto :goto_466

    .line 451
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v27    # "_result":Z
    :sswitch_470
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 453
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 455
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 456
    .restart local v6    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v27

    .line 457
    .local v27, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 458
    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 459
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 463
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v27    # "_result":I
    :sswitch_492
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 465
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 467
    .local v5, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 468
    .local v6, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, checkUidSignatures(II)I

    move-result v27

    .line 469
    .restart local v27    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 470
    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 471
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 475
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":I
    .end local v27    # "_result":I
    :sswitch_4b4
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 477
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 478
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v27

    .line 479
    .local v27, "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 480
    move-object/from16 v0, p3

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 481
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 485
    .end local v5    # "_arg0":I
    .end local v27    # "_result":[Ljava/lang/String;
    :sswitch_4d2
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 487
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 488
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, getNameForUid(I)Ljava/lang/String;

    move-result-object v27

    .line 489
    .local v27, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 490
    move-object/from16 v0, p3

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 491
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 495
    .end local v5    # "_arg0":I
    .end local v27    # "_result":Ljava/lang/String;
    :sswitch_4f0
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 497
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 498
    .local v5, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, getUidForSharedUser(Ljava/lang/String;)I

    move-result v27

    .line 499
    .local v27, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 500
    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 501
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 505
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v27    # "_result":I
    :sswitch_50e
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 507
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 508
    .local v5, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, getFlagsForUid(I)I

    move-result v27

    .line 509
    .restart local v27    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 510
    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 511
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 515
    .end local v5    # "_arg0":I
    .end local v27    # "_result":I
    :sswitch_52c
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 517
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 518
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, isUidPrivileged(I)Z

    move-result v27

    .line 519
    .local v27, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 520
    if-eqz v27, :cond_54b

    const/4 v4, 0x1

    :goto_543
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 521
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 520
    :cond_54b
    const/4 v4, 0x0

    goto :goto_543

    .line 525
    .end local v5    # "_arg0":I
    .end local v27    # "_result":Z
    :sswitch_54d
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 527
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 528
    .local v5, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, getAppOpPermissionPackages(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v27

    .line 529
    .local v27, "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 530
    move-object/from16 v0, p3

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 531
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 535
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v27    # "_result":[Ljava/lang/String;
    :sswitch_56b
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 537
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_5aa

    .line 538
    sget-object v4, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/Intent;

    .line 544
    .local v5, "_arg0":Landroid/content/Intent;
    :goto_582
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 546
    .local v6, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 548
    .restart local v7    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 549
    .local v8, "_arg3":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7, v8}, resolveIntent(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;

    move-result-object v27

    .line 550
    .local v27, "_result":Landroid/content/pm/ResolveInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 551
    if-eqz v27, :cond_5ac

    .line 552
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 553
    const/4 v4, 0x1

    move-object/from16 v0, v27

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/content/pm/ResolveInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 558
    :goto_5a7
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 541
    .end local v5    # "_arg0":Landroid/content/Intent;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":I
    .end local v8    # "_arg3":I
    .end local v27    # "_result":Landroid/content/pm/ResolveInfo;
    :cond_5aa
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/Intent;
    goto :goto_582

    .line 556
    .restart local v6    # "_arg1":Ljava/lang/String;
    .restart local v7    # "_arg2":I
    .restart local v8    # "_arg3":I
    .restart local v27    # "_result":Landroid/content/pm/ResolveInfo;
    :cond_5ac
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_5a7

    .line 562
    .end local v5    # "_arg0":Landroid/content/Intent;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":I
    .end local v8    # "_arg3":I
    .end local v27    # "_result":Landroid/content/pm/ResolveInfo;
    :sswitch_5b3
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 564
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_5ea

    .line 565
    sget-object v4, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/Intent;

    .line 571
    .restart local v5    # "_arg0":Landroid/content/Intent;
    :goto_5ca
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 573
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 575
    .restart local v7    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 576
    .restart local v8    # "_arg3":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7, v8}, canForwardTo(Landroid/content/Intent;Ljava/lang/String;II)Z

    move-result v27

    .line 577
    .local v27, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 578
    if-eqz v27, :cond_5ec

    const/4 v4, 0x1

    :goto_5e2
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 579
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 568
    .end local v5    # "_arg0":Landroid/content/Intent;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":I
    .end local v8    # "_arg3":I
    .end local v27    # "_result":Z
    :cond_5ea
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/Intent;
    goto :goto_5ca

    .line 578
    .restart local v6    # "_arg1":Ljava/lang/String;
    .restart local v7    # "_arg2":I
    .restart local v8    # "_arg3":I
    .restart local v27    # "_result":Z
    :cond_5ec
    const/4 v4, 0x0

    goto :goto_5e2

    .line 583
    .end local v5    # "_arg0":Landroid/content/Intent;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":I
    .end local v8    # "_arg3":I
    .end local v27    # "_result":Z
    :sswitch_5ee
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 585
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_624

    .line 586
    sget-object v4, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/Intent;

    .line 592
    .restart local v5    # "_arg0":Landroid/content/Intent;
    :goto_605
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 594
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 596
    .restart local v7    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 597
    .restart local v8    # "_arg3":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7, v8}, queryIntentActivities(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v36

    .line 598
    .local v36, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 599
    move-object/from16 v0, p3

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 600
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 589
    .end local v5    # "_arg0":Landroid/content/Intent;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":I
    .end local v8    # "_arg3":I
    .end local v36    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_624
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/Intent;
    goto :goto_605

    .line 604
    .end local v5    # "_arg0":Landroid/content/Intent;
    :sswitch_626
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 606
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_67a

    .line 607
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 613
    .local v5, "_arg0":Landroid/content/ComponentName;
    :goto_63d
    sget-object v4, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/content/Intent;

    .line 615
    .local v6, "_arg1":[Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v7

    .line 617
    .local v7, "_arg2":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_67c

    .line 618
    sget-object v4, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/Intent;

    .line 624
    .local v8, "_arg3":Landroid/content/Intent;
    :goto_65b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 626
    .local v9, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 628
    .local v10, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .local v11, "_arg6":I
    move-object/from16 v4, p0

    .line 629
    invoke-virtual/range {v4 .. v11}, queryIntentActivityOptions(Landroid/content/ComponentName;[Landroid/content/Intent;[Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v36

    .line 630
    .restart local v36    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 631
    move-object/from16 v0, p3

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 632
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 610
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":[Landroid/content/Intent;
    .end local v7    # "_arg2":[Ljava/lang/String;
    .end local v8    # "_arg3":Landroid/content/Intent;
    .end local v9    # "_arg4":Ljava/lang/String;
    .end local v10    # "_arg5":I
    .end local v11    # "_arg6":I
    .end local v36    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_67a
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_63d

    .line 621
    .restart local v6    # "_arg1":[Landroid/content/Intent;
    .restart local v7    # "_arg2":[Ljava/lang/String;
    :cond_67c
    const/4 v8, 0x0

    .restart local v8    # "_arg3":Landroid/content/Intent;
    goto :goto_65b

    .line 636
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":[Landroid/content/Intent;
    .end local v7    # "_arg2":[Ljava/lang/String;
    .end local v8    # "_arg3":Landroid/content/Intent;
    :sswitch_67e
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 638
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_6b4

    .line 639
    sget-object v4, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/Intent;

    .line 645
    .local v5, "_arg0":Landroid/content/Intent;
    :goto_695
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 647
    .local v6, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 649
    .local v7, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 650
    .local v8, "_arg3":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7, v8}, queryIntentReceivers(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v36

    .line 651
    .restart local v36    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 652
    move-object/from16 v0, p3

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 653
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 642
    .end local v5    # "_arg0":Landroid/content/Intent;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":I
    .end local v8    # "_arg3":I
    .end local v36    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_6b4
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/Intent;
    goto :goto_695

    .line 657
    .end local v5    # "_arg0":Landroid/content/Intent;
    :sswitch_6b6
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 659
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_6f5

    .line 660
    sget-object v4, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/Intent;

    .line 666
    .restart local v5    # "_arg0":Landroid/content/Intent;
    :goto_6cd
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 668
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 670
    .restart local v7    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 671
    .restart local v8    # "_arg3":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7, v8}, resolveService(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;

    move-result-object v27

    .line 672
    .local v27, "_result":Landroid/content/pm/ResolveInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 673
    if-eqz v27, :cond_6f7

    .line 674
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 675
    const/4 v4, 0x1

    move-object/from16 v0, v27

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/content/pm/ResolveInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 680
    :goto_6f2
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 663
    .end local v5    # "_arg0":Landroid/content/Intent;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":I
    .end local v8    # "_arg3":I
    .end local v27    # "_result":Landroid/content/pm/ResolveInfo;
    :cond_6f5
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/Intent;
    goto :goto_6cd

    .line 678
    .restart local v6    # "_arg1":Ljava/lang/String;
    .restart local v7    # "_arg2":I
    .restart local v8    # "_arg3":I
    .restart local v27    # "_result":Landroid/content/pm/ResolveInfo;
    :cond_6f7
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_6f2

    .line 684
    .end local v5    # "_arg0":Landroid/content/Intent;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":I
    .end local v8    # "_arg3":I
    .end local v27    # "_result":Landroid/content/pm/ResolveInfo;
    :sswitch_6fe
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 686
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_734

    .line 687
    sget-object v4, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/Intent;

    .line 693
    .restart local v5    # "_arg0":Landroid/content/Intent;
    :goto_715
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 695
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 697
    .restart local v7    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 698
    .restart local v8    # "_arg3":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7, v8}, queryIntentServices(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v36

    .line 699
    .restart local v36    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 700
    move-object/from16 v0, p3

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 701
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 690
    .end local v5    # "_arg0":Landroid/content/Intent;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":I
    .end local v8    # "_arg3":I
    .end local v36    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_734
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/Intent;
    goto :goto_715

    .line 705
    .end local v5    # "_arg0":Landroid/content/Intent;
    :sswitch_736
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 707
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_76c

    .line 708
    sget-object v4, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/Intent;

    .line 714
    .restart local v5    # "_arg0":Landroid/content/Intent;
    :goto_74d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 716
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 718
    .restart local v7    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 719
    .restart local v8    # "_arg3":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7, v8}, queryIntentContentProviders(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v36

    .line 720
    .restart local v36    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 721
    move-object/from16 v0, p3

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 722
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 711
    .end local v5    # "_arg0":Landroid/content/Intent;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":I
    .end local v8    # "_arg3":I
    .end local v36    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_76c
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/Intent;
    goto :goto_74d

    .line 726
    .end local v5    # "_arg0":Landroid/content/Intent;
    :sswitch_76e
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 728
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 730
    .local v5, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 731
    .local v6, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, getInstalledPackages(II)Landroid/content/pm/ParceledListSlice;

    move-result-object v27

    .line 732
    .local v27, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 733
    if-eqz v27, :cond_799

    .line 734
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 735
    const/4 v4, 0x1

    move-object/from16 v0, v27

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    .line 740
    :goto_796
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 738
    :cond_799
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_796

    .line 744
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":I
    .end local v27    # "_result":Landroid/content/pm/ParceledListSlice;
    :sswitch_7a0
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 746
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v5

    .line 748
    .local v5, "_arg0":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 750
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 751
    .restart local v7    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, getPackagesHoldingPermissions([Ljava/lang/String;II)Landroid/content/pm/ParceledListSlice;

    move-result-object v27

    .line 752
    .restart local v27    # "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 753
    if-eqz v27, :cond_7cf

    .line 754
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 755
    const/4 v4, 0x1

    move-object/from16 v0, v27

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    .line 760
    :goto_7cc
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 758
    :cond_7cf
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_7cc

    .line 764
    .end local v5    # "_arg0":[Ljava/lang/String;
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    .end local v27    # "_result":Landroid/content/pm/ParceledListSlice;
    :sswitch_7d6
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 766
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 768
    .local v5, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 769
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, getInstalledApplications(II)Landroid/content/pm/ParceledListSlice;

    move-result-object v27

    .line 770
    .restart local v27    # "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 771
    if-eqz v27, :cond_801

    .line 772
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 773
    const/4 v4, 0x1

    move-object/from16 v0, v27

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    .line 778
    :goto_7fe
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 776
    :cond_801
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_7fe

    .line 782
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":I
    .end local v27    # "_result":Landroid/content/pm/ParceledListSlice;
    :sswitch_808
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 784
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 785
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, getPersistentApplications(I)Ljava/util/List;

    move-result-object v30

    .line 786
    .local v30, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 787
    move-object/from16 v0, p3

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 788
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 792
    .end local v5    # "_arg0":I
    .end local v30    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    :sswitch_826
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 794
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 796
    .local v5, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 798
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 799
    .restart local v7    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, resolveContentProvider(Ljava/lang/String;II)Landroid/content/pm/ProviderInfo;

    move-result-object v27

    .line 800
    .local v27, "_result":Landroid/content/pm/ProviderInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 801
    if-eqz v27, :cond_855

    .line 802
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 803
    const/4 v4, 0x1

    move-object/from16 v0, v27

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/content/pm/ProviderInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 808
    :goto_852
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 806
    :cond_855
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_852

    .line 812
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    .end local v27    # "_result":Landroid/content/pm/ProviderInfo;
    :sswitch_85c
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 814
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v13

    .line 816
    .local v13, "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v4, Landroid/content/pm/ProviderInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v25

    .line 817
    .local v25, "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ProviderInfo;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v13, v1}, querySyncProviders(Ljava/util/List;Ljava/util/List;)V

    .line 818
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 819
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 820
    move-object/from16 v0, p3

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 821
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 825
    .end local v13    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v25    # "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ProviderInfo;>;"
    :sswitch_888
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 827
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 829
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 831
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 832
    .restart local v7    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, queryContentProviders(Ljava/lang/String;II)Ljava/util/List;

    move-result-object v35

    .line 833
    .local v35, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ProviderInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 834
    move-object/from16 v0, p3

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 835
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 839
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    .end local v35    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ProviderInfo;>;"
    :sswitch_8ae
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 841
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_8e5

    .line 842
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 848
    .local v5, "_arg0":Landroid/content/ComponentName;
    :goto_8c5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 849
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, getInstrumentationInfo(Landroid/content/ComponentName;I)Landroid/content/pm/InstrumentationInfo;

    move-result-object v27

    .line 850
    .local v27, "_result":Landroid/content/pm/InstrumentationInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 851
    if-eqz v27, :cond_8e7

    .line 852
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 853
    const/4 v4, 0x1

    move-object/from16 v0, v27

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/content/pm/InstrumentationInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 858
    :goto_8e2
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 845
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":I
    .end local v27    # "_result":Landroid/content/pm/InstrumentationInfo;
    :cond_8e5
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_8c5

    .line 856
    .restart local v6    # "_arg1":I
    .restart local v27    # "_result":Landroid/content/pm/InstrumentationInfo;
    :cond_8e7
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_8e2

    .line 862
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":I
    .end local v27    # "_result":Landroid/content/pm/InstrumentationInfo;
    :sswitch_8ee
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 864
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 866
    .local v5, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 867
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, queryInstrumentation(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v31

    .line 868
    .local v31, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/InstrumentationInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 869
    move-object/from16 v0, p3

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 870
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 874
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":I
    .end local v31    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/InstrumentationInfo;>;"
    :sswitch_910
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 876
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 878
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/content/pm/IPackageInstallObserver2$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageInstallObserver2;

    move-result-object v6

    .line 880
    .local v6, "_arg1":Landroid/content/pm/IPackageInstallObserver2;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 882
    .restart local v7    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 884
    .local v8, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_94a

    .line 885
    sget-object v4, Landroid/content/pm/VerificationParams;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/VerificationParams;

    .line 891
    .local v9, "_arg4":Landroid/content/pm/VerificationParams;
    :goto_93b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .local v10, "_arg5":Ljava/lang/String;
    move-object/from16 v4, p0

    .line 892
    invoke-virtual/range {v4 .. v10}, installPackage(Ljava/lang/String;Landroid/content/pm/IPackageInstallObserver2;ILjava/lang/String;Landroid/content/pm/VerificationParams;Ljava/lang/String;)V

    .line 893
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 894
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 888
    .end local v9    # "_arg4":Landroid/content/pm/VerificationParams;
    .end local v10    # "_arg5":Ljava/lang/String;
    :cond_94a
    const/4 v9, 0x0

    .restart local v9    # "_arg4":Landroid/content/pm/VerificationParams;
    goto :goto_93b

    .line 898
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Landroid/content/pm/IPackageInstallObserver2;
    .end local v7    # "_arg2":I
    .end local v8    # "_arg3":Ljava/lang/String;
    .end local v9    # "_arg4":Landroid/content/pm/VerificationParams;
    :sswitch_94c
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 900
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 902
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/content/pm/IPackageInstallObserver2$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageInstallObserver2;

    move-result-object v6

    .line 904
    .restart local v6    # "_arg1":Landroid/content/pm/IPackageInstallObserver2;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 906
    .restart local v7    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 908
    .restart local v8    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_98a

    .line 909
    sget-object v4, Landroid/content/pm/VerificationParams;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/VerificationParams;

    .line 915
    .restart local v9    # "_arg4":Landroid/content/pm/VerificationParams;
    :goto_977
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 917
    .restart local v10    # "_arg5":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .restart local v11    # "_arg6":I
    move-object/from16 v4, p0

    .line 918
    invoke-virtual/range {v4 .. v11}, installPackageAsUser(Ljava/lang/String;Landroid/content/pm/IPackageInstallObserver2;ILjava/lang/String;Landroid/content/pm/VerificationParams;Ljava/lang/String;I)V

    .line 919
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 920
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 912
    .end local v9    # "_arg4":Landroid/content/pm/VerificationParams;
    .end local v10    # "_arg5":Ljava/lang/String;
    .end local v11    # "_arg6":I
    :cond_98a
    const/4 v9, 0x0

    .restart local v9    # "_arg4":Landroid/content/pm/VerificationParams;
    goto :goto_977

    .line 924
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Landroid/content/pm/IPackageInstallObserver2;
    .end local v7    # "_arg2":I
    .end local v8    # "_arg3":Ljava/lang/String;
    .end local v9    # "_arg4":Landroid/content/pm/VerificationParams;
    :sswitch_98c
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 926
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 927
    .local v5, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, finishPackageInstall(I)V

    .line 928
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 929
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 933
    .end local v5    # "_arg0":I
    :sswitch_9a2
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 935
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 937
    .local v5, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 938
    .local v6, "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, setInstallerPackageName(Ljava/lang/String;Ljava/lang/String;)V

    .line 939
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 940
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 944
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Ljava/lang/String;
    :sswitch_9bc
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 946
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 948
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/content/pm/IPackageDeleteObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageDeleteObserver;

    move-result-object v6

    .line 950
    .local v6, "_arg1":Landroid/content/pm/IPackageDeleteObserver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 952
    .restart local v7    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 953
    .local v8, "_arg3":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7, v8}, deletePackageAsUser(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;II)V

    .line 954
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 955
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 959
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Landroid/content/pm/IPackageDeleteObserver;
    .end local v7    # "_arg2":I
    .end local v8    # "_arg3":I
    :sswitch_9e2
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 961
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 963
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/content/pm/IPackageDeleteObserver2$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageDeleteObserver2;

    move-result-object v6

    .line 965
    .local v6, "_arg1":Landroid/content/pm/IPackageDeleteObserver2;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 967
    .restart local v7    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 968
    .restart local v8    # "_arg3":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7, v8}, deletePackage(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver2;II)V

    .line 969
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 970
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 974
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Landroid/content/pm/IPackageDeleteObserver2;
    .end local v7    # "_arg2":I
    .end local v8    # "_arg3":I
    :sswitch_a08
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 976
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 977
    .restart local v5    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 978
    .local v27, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 979
    move-object/from16 v0, p3

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 980
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 984
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v27    # "_result":Ljava/lang/String;
    :sswitch_a26
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 986
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 987
    .restart local v5    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, addPackageToPreferred(Ljava/lang/String;)V

    .line 988
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 989
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 993
    .end local v5    # "_arg0":Ljava/lang/String;
    :sswitch_a3c
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 995
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 996
    .restart local v5    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, removePackageFromPreferred(Ljava/lang/String;)V

    .line 997
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 998
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 1002
    .end local v5    # "_arg0":Ljava/lang/String;
    :sswitch_a52
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1004
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1005
    .local v5, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, getPreferredPackages(I)Ljava/util/List;

    move-result-object v32

    .line 1006
    .local v32, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1007
    move-object/from16 v0, p3

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 1008
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 1012
    .end local v5    # "_arg0":I
    .end local v32    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    :sswitch_a70
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1014
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1015
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, resetPreferredActivities(I)V

    .line 1016
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1017
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 1021
    .end local v5    # "_arg0":I
    :sswitch_a86
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1023
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_ac1

    .line 1024
    sget-object v4, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/Intent;

    .line 1030
    .local v5, "_arg0":Landroid/content/Intent;
    :goto_a9d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1032
    .local v6, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1033
    .restart local v7    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, getLastChosenActivity(Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/pm/ResolveInfo;

    move-result-object v27

    .line 1034
    .local v27, "_result":Landroid/content/pm/ResolveInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1035
    if-eqz v27, :cond_ac3

    .line 1036
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1037
    const/4 v4, 0x1

    move-object/from16 v0, v27

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/content/pm/ResolveInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1042
    :goto_abe
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 1027
    .end local v5    # "_arg0":Landroid/content/Intent;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":I
    .end local v27    # "_result":Landroid/content/pm/ResolveInfo;
    :cond_ac1
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/Intent;
    goto :goto_a9d

    .line 1040
    .restart local v6    # "_arg1":Ljava/lang/String;
    .restart local v7    # "_arg2":I
    .restart local v27    # "_result":Landroid/content/pm/ResolveInfo;
    :cond_ac3
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_abe

    .line 1046
    .end local v5    # "_arg0":Landroid/content/Intent;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":I
    .end local v27    # "_result":Landroid/content/pm/ResolveInfo;
    :sswitch_aca
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1048
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_b18

    .line 1049
    sget-object v4, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/Intent;

    .line 1055
    .restart local v5    # "_arg0":Landroid/content/Intent;
    :goto_ae1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1057
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1059
    .restart local v7    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_b1a

    .line 1060
    sget-object v4, Landroid/content/IntentFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/IntentFilter;

    .line 1066
    .local v8, "_arg3":Landroid/content/IntentFilter;
    :goto_af9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 1068
    .local v9, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_b1c

    .line 1069
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/ComponentName;

    .local v10, "_arg5":Landroid/content/ComponentName;
    :goto_b0d
    move-object/from16 v4, p0

    .line 1074
    invoke-virtual/range {v4 .. v10}, setLastChosenActivity(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/IntentFilter;ILandroid/content/ComponentName;)V

    .line 1075
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1076
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 1052
    .end local v5    # "_arg0":Landroid/content/Intent;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":I
    .end local v8    # "_arg3":Landroid/content/IntentFilter;
    .end local v9    # "_arg4":I
    .end local v10    # "_arg5":Landroid/content/ComponentName;
    :cond_b18
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/Intent;
    goto :goto_ae1

    .line 1063
    .restart local v6    # "_arg1":Ljava/lang/String;
    .restart local v7    # "_arg2":I
    :cond_b1a
    const/4 v8, 0x0

    .restart local v8    # "_arg3":Landroid/content/IntentFilter;
    goto :goto_af9

    .line 1072
    .restart local v9    # "_arg4":I
    :cond_b1c
    const/4 v10, 0x0

    .restart local v10    # "_arg5":Landroid/content/ComponentName;
    goto :goto_b0d

    .line 1080
    .end local v5    # "_arg0":Landroid/content/Intent;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":I
    .end local v8    # "_arg3":Landroid/content/IntentFilter;
    .end local v9    # "_arg4":I
    .end local v10    # "_arg5":Landroid/content/ComponentName;
    :sswitch_b1e
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1082
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_b62

    .line 1083
    sget-object v4, Landroid/content/IntentFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/IntentFilter;

    .line 1089
    .local v5, "_arg0":Landroid/content/IntentFilter;
    :goto_b35
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1091
    .local v6, "_arg1":I
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Landroid/content/ComponentName;

    .line 1093
    .local v7, "_arg2":[Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_b64

    .line 1094
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/ComponentName;

    .line 1100
    .local v8, "_arg3":Landroid/content/ComponentName;
    :goto_b53
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .restart local v9    # "_arg4":I
    move-object/from16 v4, p0

    .line 1101
    invoke-virtual/range {v4 .. v9}, addPreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;I)V

    .line 1102
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1103
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 1086
    .end local v5    # "_arg0":Landroid/content/IntentFilter;
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":[Landroid/content/ComponentName;
    .end local v8    # "_arg3":Landroid/content/ComponentName;
    .end local v9    # "_arg4":I
    :cond_b62
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/IntentFilter;
    goto :goto_b35

    .line 1097
    .restart local v6    # "_arg1":I
    .restart local v7    # "_arg2":[Landroid/content/ComponentName;
    :cond_b64
    const/4 v8, 0x0

    .restart local v8    # "_arg3":Landroid/content/ComponentName;
    goto :goto_b53

    .line 1107
    .end local v5    # "_arg0":Landroid/content/IntentFilter;
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":[Landroid/content/ComponentName;
    .end local v8    # "_arg3":Landroid/content/ComponentName;
    :sswitch_b66
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1109
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_baa

    .line 1110
    sget-object v4, Landroid/content/IntentFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/IntentFilter;

    .line 1116
    .restart local v5    # "_arg0":Landroid/content/IntentFilter;
    :goto_b7d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1118
    .restart local v6    # "_arg1":I
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Landroid/content/ComponentName;

    .line 1120
    .restart local v7    # "_arg2":[Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_bac

    .line 1121
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/ComponentName;

    .line 1127
    .restart local v8    # "_arg3":Landroid/content/ComponentName;
    :goto_b9b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .restart local v9    # "_arg4":I
    move-object/from16 v4, p0

    .line 1128
    invoke-virtual/range {v4 .. v9}, replacePreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;I)V

    .line 1129
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1130
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 1113
    .end local v5    # "_arg0":Landroid/content/IntentFilter;
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":[Landroid/content/ComponentName;
    .end local v8    # "_arg3":Landroid/content/ComponentName;
    .end local v9    # "_arg4":I
    :cond_baa
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/IntentFilter;
    goto :goto_b7d

    .line 1124
    .restart local v6    # "_arg1":I
    .restart local v7    # "_arg2":[Landroid/content/ComponentName;
    :cond_bac
    const/4 v8, 0x0

    .restart local v8    # "_arg3":Landroid/content/ComponentName;
    goto :goto_b9b

    .line 1134
    .end local v5    # "_arg0":Landroid/content/IntentFilter;
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":[Landroid/content/ComponentName;
    .end local v8    # "_arg3":Landroid/content/ComponentName;
    :sswitch_bae
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1136
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1137
    .local v5, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, clearPackagePreferredActivities(Ljava/lang/String;)V

    .line 1138
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1139
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 1143
    .end local v5    # "_arg0":Ljava/lang/String;
    :sswitch_bc4
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1145
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 1147
    .local v22, "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/content/IntentFilter;>;"
    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    .line 1149
    .local v24, "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1150
    .local v7, "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2, v7}, getPreferredActivities(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)I

    move-result v27

    .line 1151
    .local v27, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1152
    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1153
    move-object/from16 v0, p3

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 1154
    move-object/from16 v0, p3

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 1155
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 1159
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v22    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/content/IntentFilter;>;"
    .end local v24    # "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    .end local v27    # "_result":I
    :sswitch_bfe
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1161
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_c34

    .line 1162
    sget-object v4, Landroid/content/IntentFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/IntentFilter;

    .line 1168
    .local v5, "_arg0":Landroid/content/IntentFilter;
    :goto_c15
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_c36

    .line 1169
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ComponentName;

    .line 1175
    .local v6, "_arg1":Landroid/content/ComponentName;
    :goto_c25
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1176
    .local v7, "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, addPersistentPreferredActivity(Landroid/content/IntentFilter;Landroid/content/ComponentName;I)V

    .line 1177
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1178
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 1165
    .end local v5    # "_arg0":Landroid/content/IntentFilter;
    .end local v6    # "_arg1":Landroid/content/ComponentName;
    .end local v7    # "_arg2":I
    :cond_c34
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/IntentFilter;
    goto :goto_c15

    .line 1172
    :cond_c36
    const/4 v6, 0x0

    .restart local v6    # "_arg1":Landroid/content/ComponentName;
    goto :goto_c25

    .line 1182
    .end local v5    # "_arg0":Landroid/content/IntentFilter;
    .end local v6    # "_arg1":Landroid/content/ComponentName;
    :sswitch_c38
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1184
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1186
    .local v5, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1187
    .local v6, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, clearPackagePersistentPreferredActivities(Ljava/lang/String;I)V

    .line 1188
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1189
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 1193
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":I
    :sswitch_c52
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1195
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_c88

    .line 1196
    sget-object v4, Landroid/content/IntentFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/IntentFilter;

    .line 1202
    .local v5, "_arg0":Landroid/content/IntentFilter;
    :goto_c69
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1204
    .local v6, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1206
    .restart local v7    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 1208
    .local v8, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 1210
    .restart local v9    # "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .local v10, "_arg5":I
    move-object/from16 v4, p0

    .line 1211
    invoke-virtual/range {v4 .. v10}, addCrossProfileIntentFilter(Landroid/content/IntentFilter;Ljava/lang/String;IIII)V

    .line 1212
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1213
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 1199
    .end local v5    # "_arg0":Landroid/content/IntentFilter;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":I
    .end local v8    # "_arg3":I
    .end local v9    # "_arg4":I
    .end local v10    # "_arg5":I
    :cond_c88
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/IntentFilter;
    goto :goto_c69

    .line 1217
    .end local v5    # "_arg0":Landroid/content/IntentFilter;
    :sswitch_c8a
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1219
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1221
    .local v5, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1223
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1224
    .restart local v7    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, clearCrossProfileIntentFilters(ILjava/lang/String;I)V

    .line 1225
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1226
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 1230
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":I
    :sswitch_ca8
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1232
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    .line 1233
    .local v23, "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;

    move-result-object v27

    .line 1234
    .local v27, "_result":Landroid/content/ComponentName;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1235
    if-eqz v27, :cond_cd9

    .line 1236
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1237
    const/4 v4, 0x1

    move-object/from16 v0, v27

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1242
    :goto_ccf
    move-object/from16 v0, p3

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 1243
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 1240
    :cond_cd9
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_ccf

    .line 1247
    .end local v23    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v27    # "_result":Landroid/content/ComponentName;
    :sswitch_ce0
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1249
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_d0e

    .line 1250
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 1256
    .local v5, "_arg0":Landroid/content/ComponentName;
    :goto_cf7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1258
    .local v6, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1260
    .restart local v7    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 1261
    .restart local v8    # "_arg3":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7, v8}, setComponentEnabledSetting(Landroid/content/ComponentName;III)V

    .line 1262
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1263
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 1253
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    .end local v8    # "_arg3":I
    :cond_d0e
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_cf7

    .line 1267
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    :sswitch_d10
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1269
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_d3e

    .line 1270
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 1276
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_d27
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1277
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, getComponentEnabledSetting(Landroid/content/ComponentName;I)I

    move-result v27

    .line 1278
    .local v27, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1279
    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1280
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 1273
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":I
    .end local v27    # "_result":I
    :cond_d3e
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_d27

    .line 1284
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    :sswitch_d40
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1286
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1288
    .local v5, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1290
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1292
    .restart local v7    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 1294
    .restart local v8    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .local v9, "_arg4":Ljava/lang/String;
    move-object/from16 v4, p0

    .line 1295
    invoke-virtual/range {v4 .. v9}, setApplicationEnabledSetting(Ljava/lang/String;IIILjava/lang/String;)V

    .line 1296
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1297
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 1301
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    .end local v8    # "_arg3":I
    .end local v9    # "_arg4":Ljava/lang/String;
    :sswitch_d66
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1303
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1305
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1306
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, getApplicationEnabledSetting(Ljava/lang/String;I)I

    move-result v27

    .line 1307
    .restart local v27    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1308
    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1309
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 1313
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":I
    .end local v27    # "_result":I
    :sswitch_d88
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1315
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1317
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_da9

    const/4 v6, 0x1

    .line 1319
    .local v6, "_arg1":Z
    :goto_d9a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1320
    .restart local v7    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, setPackageStoppedState(Ljava/lang/String;ZI)V

    .line 1321
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1322
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 1317
    .end local v6    # "_arg1":Z
    .end local v7    # "_arg2":I
    :cond_da9
    const/4 v6, 0x0

    goto :goto_d9a

    .line 1326
    .end local v5    # "_arg0":Ljava/lang/String;
    :sswitch_dab
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1328
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v20

    .line 1330
    .local v20, "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/content/pm/IPackageDataObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageDataObserver;

    move-result-object v6

    .line 1331
    .local v6, "_arg1":Landroid/content/pm/IPackageDataObserver;
    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2, v6}, freeStorageAndNotify(JLandroid/content/pm/IPackageDataObserver;)V

    .line 1332
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1333
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 1337
    .end local v6    # "_arg1":Landroid/content/pm/IPackageDataObserver;
    .end local v20    # "_arg0":J
    :sswitch_dcb
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1339
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v20

    .line 1341
    .restart local v20    # "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_df3

    .line 1342
    sget-object v4, Landroid/content/IntentSender;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/IntentSender;

    .line 1347
    .local v6, "_arg1":Landroid/content/IntentSender;
    :goto_de6
    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2, v6}, freeStorage(JLandroid/content/IntentSender;)V

    .line 1348
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1349
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 1345
    .end local v6    # "_arg1":Landroid/content/IntentSender;
    :cond_df3
    const/4 v6, 0x0

    .restart local v6    # "_arg1":Landroid/content/IntentSender;
    goto :goto_de6

    .line 1353
    .end local v6    # "_arg1":Landroid/content/IntentSender;
    .end local v20    # "_arg0":J
    :sswitch_df5
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1355
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1357
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/content/pm/IPackageDataObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageDataObserver;

    move-result-object v6

    .line 1358
    .local v6, "_arg1":Landroid/content/pm/IPackageDataObserver;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, deleteApplicationCacheFiles(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)V

    .line 1359
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1360
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 1364
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Landroid/content/pm/IPackageDataObserver;
    :sswitch_e13
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1366
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1368
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/content/pm/IPackageDataObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageDataObserver;

    move-result-object v6

    .line 1370
    .restart local v6    # "_arg1":Landroid/content/pm/IPackageDataObserver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1371
    .restart local v7    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;I)V

    .line 1372
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1373
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 1377
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Landroid/content/pm/IPackageDataObserver;
    .end local v7    # "_arg2":I
    :sswitch_e35
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1379
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1381
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1383
    .local v6, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/content/pm/IPackageStatsObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageStatsObserver;

    move-result-object v7

    .line 1384
    .local v7, "_arg2":Landroid/content/pm/IPackageStatsObserver;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, getPackageSizeInfo(Ljava/lang/String;ILandroid/content/pm/IPackageStatsObserver;)V

    .line 1385
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1386
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 1390
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":Landroid/content/pm/IPackageStatsObserver;
    :sswitch_e57
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1391
    invoke-virtual/range {p0 .. p0}, getSystemSharedLibraryNames()[Ljava/lang/String;

    move-result-object v27

    .line 1392
    .local v27, "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1393
    move-object/from16 v0, p3

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1394
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 1398
    .end local v27    # "_result":[Ljava/lang/String;
    :sswitch_e6f
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1399
    invoke-virtual/range {p0 .. p0}, getSystemAvailableFeatures()[Landroid/content/pm/FeatureInfo;

    move-result-object v27

    .line 1400
    .local v27, "_result":[Landroid/content/pm/FeatureInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1401
    const/4 v4, 0x1

    move-object/from16 v0, p3

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v4}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 1402
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 1406
    .end local v27    # "_result":[Landroid/content/pm/FeatureInfo;
    :sswitch_e88
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1408
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1409
    .restart local v5    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, hasSystemFeature(Ljava/lang/String;)Z

    move-result v27

    .line 1410
    .local v27, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1411
    if-eqz v27, :cond_ea7

    const/4 v4, 0x1

    :goto_e9f
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1412
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 1411
    :cond_ea7
    const/4 v4, 0x0

    goto :goto_e9f

    .line 1416
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v27    # "_result":Z
    :sswitch_ea9
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1418
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1419
    .restart local v5    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, getSystemFeatureLevel(Ljava/lang/String;)I

    move-result v27

    .line 1420
    .local v27, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1421
    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1422
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 1426
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v27    # "_result":I
    :sswitch_ec7
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1427
    invoke-virtual/range {p0 .. p0}, enterSafeMode()V

    .line 1428
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1429
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 1433
    :sswitch_ed7
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1434
    invoke-virtual/range {p0 .. p0}, isSafeMode()Z

    move-result v27

    .line 1435
    .local v27, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1436
    if-eqz v27, :cond_ef0

    const/4 v4, 0x1

    :goto_ee8
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1437
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 1436
    :cond_ef0
    const/4 v4, 0x0

    goto :goto_ee8

    .line 1441
    .end local v27    # "_result":Z
    :sswitch_ef2
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1442
    invoke-virtual/range {p0 .. p0}, systemReady()V

    .line 1443
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1444
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 1448
    :sswitch_f02
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1449
    invoke-virtual/range {p0 .. p0}, hasSystemUidErrors()Z

    move-result v27

    .line 1450
    .restart local v27    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1451
    if-eqz v27, :cond_f1b

    const/4 v4, 0x1

    :goto_f13
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1452
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 1451
    :cond_f1b
    const/4 v4, 0x0

    goto :goto_f13

    .line 1456
    .end local v27    # "_result":Z
    :sswitch_f1d
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1457
    invoke-virtual/range {p0 .. p0}, performBootDexOpt()V

    .line 1458
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1459
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 1463
    :sswitch_f2d
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1465
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1467
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1468
    .local v6, "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, performDexOptIfNeeded(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v27

    .line 1469
    .restart local v27    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1470
    if-eqz v27, :cond_f50

    const/4 v4, 0x1

    :goto_f48
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1471
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 1470
    :cond_f50
    const/4 v4, 0x0

    goto :goto_f48

    .line 1475
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v27    # "_result":Z
    :sswitch_f52
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1477
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1478
    .restart local v5    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, forceDexOpt(Ljava/lang/String;)V

    .line 1479
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1480
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 1484
    .end local v5    # "_arg0":Ljava/lang/String;
    :sswitch_f68
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1486
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_f88

    const/4 v5, 0x1

    .line 1488
    .local v5, "_arg0":Z
    :goto_f76
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_f8a

    const/4 v6, 0x1

    .line 1489
    .local v6, "_arg1":Z
    :goto_f7d
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, updateExternalMediaStatus(ZZ)V

    .line 1490
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1491
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 1486
    .end local v5    # "_arg0":Z
    .end local v6    # "_arg1":Z
    :cond_f88
    const/4 v5, 0x0

    goto :goto_f76

    .line 1488
    .restart local v5    # "_arg0":Z
    :cond_f8a
    const/4 v6, 0x0

    goto :goto_f7d

    .line 1495
    .end local v5    # "_arg0":Z
    :sswitch_f8c
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1497
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_fbf

    .line 1498
    sget-object v4, Landroid/content/pm/PackageCleanItem;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PackageCleanItem;

    .line 1503
    .local v5, "_arg0":Landroid/content/pm/PackageCleanItem;
    :goto_fa3
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, nextPackageToClean(Landroid/content/pm/PackageCleanItem;)Landroid/content/pm/PackageCleanItem;

    move-result-object v27

    .line 1504
    .local v27, "_result":Landroid/content/pm/PackageCleanItem;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1505
    if-eqz v27, :cond_fc1

    .line 1506
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1507
    const/4 v4, 0x1

    move-object/from16 v0, v27

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/content/pm/PackageCleanItem;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1512
    :goto_fbc
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 1501
    .end local v5    # "_arg0":Landroid/content/pm/PackageCleanItem;
    .end local v27    # "_result":Landroid/content/pm/PackageCleanItem;
    :cond_fbf
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/pm/PackageCleanItem;
    goto :goto_fa3

    .line 1510
    .restart local v27    # "_result":Landroid/content/pm/PackageCleanItem;
    :cond_fc1
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_fbc

    .line 1516
    .end local v5    # "_arg0":Landroid/content/pm/PackageCleanItem;
    .end local v27    # "_result":Landroid/content/pm/PackageCleanItem;
    :sswitch_fc8
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1518
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1520
    .local v5, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/content/pm/IPackageMoveObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageMoveObserver;

    move-result-object v6

    .line 1522
    .local v6, "_arg1":Landroid/content/pm/IPackageMoveObserver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1523
    .local v7, "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, movePackage(Ljava/lang/String;Landroid/content/pm/IPackageMoveObserver;I)V

    .line 1524
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1525
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 1529
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Landroid/content/pm/IPackageMoveObserver;
    .end local v7    # "_arg2":I
    :sswitch_fea
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1531
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1015

    .line 1532
    sget-object v4, Landroid/content/pm/PermissionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PermissionInfo;

    .line 1537
    .local v5, "_arg0":Landroid/content/pm/PermissionInfo;
    :goto_1001
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, addPermissionAsync(Landroid/content/pm/PermissionInfo;)Z

    move-result v27

    .line 1538
    .local v27, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1539
    if-eqz v27, :cond_1017

    const/4 v4, 0x1

    :goto_100d
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1540
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 1535
    .end local v5    # "_arg0":Landroid/content/pm/PermissionInfo;
    .end local v27    # "_result":Z
    :cond_1015
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/pm/PermissionInfo;
    goto :goto_1001

    .line 1539
    .restart local v27    # "_result":Z
    :cond_1017
    const/4 v4, 0x0

    goto :goto_100d

    .line 1544
    .end local v5    # "_arg0":Landroid/content/pm/PermissionInfo;
    .end local v27    # "_result":Z
    :sswitch_1019
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1546
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1547
    .local v5, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, setInstallLocation(I)Z

    move-result v27

    .line 1548
    .restart local v27    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1549
    if-eqz v27, :cond_1038

    const/4 v4, 0x1

    :goto_1030
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1550
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 1549
    :cond_1038
    const/4 v4, 0x0

    goto :goto_1030

    .line 1554
    .end local v5    # "_arg0":I
    .end local v27    # "_result":Z
    :sswitch_103a
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1555
    invoke-virtual/range {p0 .. p0}, getInstallLocation()I

    move-result v27

    .line 1556
    .local v27, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1557
    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1558
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 1562
    .end local v27    # "_result":I
    :sswitch_1052
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1564
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1566
    .local v5, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1567
    .local v6, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, installExistingPackageAsUser(Ljava/lang/String;I)I

    move-result v27

    .line 1568
    .restart local v27    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1569
    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1570
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 1574
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":I
    .end local v27    # "_result":I
    :sswitch_1074
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1576
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1578
    .local v5, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1579
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, verifyPendingInstall(II)V

    .line 1580
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1581
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 1585
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":I
    :sswitch_108e
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1587
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1589
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1591
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v28

    .line 1592
    .local v28, "_arg2":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v28

    invoke-virtual {v0, v5, v6, v1, v2}, extendVerificationTimeout(IIJ)V

    .line 1593
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1594
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 1598
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":I
    .end local v28    # "_arg2":J
    :sswitch_10ae
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1599
    invoke-virtual/range {p0 .. p0}, getVerifierDeviceIdentity()Landroid/content/pm/VerifierDeviceIdentity;

    move-result-object v27

    .line 1600
    .local v27, "_result":Landroid/content/pm/VerifierDeviceIdentity;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1601
    if-eqz v27, :cond_10cf

    .line 1602
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1603
    const/4 v4, 0x1

    move-object/from16 v0, v27

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/content/pm/VerifierDeviceIdentity;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1608
    :goto_10cc
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 1606
    :cond_10cf
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_10cc

    .line 1612
    .end local v27    # "_result":Landroid/content/pm/VerifierDeviceIdentity;
    :sswitch_10d6
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1613
    invoke-virtual/range {p0 .. p0}, isFirstBoot()Z

    move-result v27

    .line 1614
    .local v27, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1615
    if-eqz v27, :cond_10ef

    const/4 v4, 0x1

    :goto_10e7
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1616
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 1615
    :cond_10ef
    const/4 v4, 0x0

    goto :goto_10e7

    .line 1620
    .end local v27    # "_result":Z
    :sswitch_10f1
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1621
    invoke-virtual/range {p0 .. p0}, isOnlyCoreApps()Z

    move-result v27

    .line 1622
    .restart local v27    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1623
    if-eqz v27, :cond_110a

    const/4 v4, 0x1

    :goto_1102
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1624
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 1623
    :cond_110a
    const/4 v4, 0x0

    goto :goto_1102

    .line 1628
    .end local v27    # "_result":Z
    :sswitch_110c
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1630
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1632
    .local v5, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1129

    const/4 v6, 0x1

    .line 1633
    .local v6, "_arg1":Z
    :goto_111e
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, setPermissionEnforced(Ljava/lang/String;Z)V

    .line 1634
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1635
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 1632
    .end local v6    # "_arg1":Z
    :cond_1129
    const/4 v6, 0x0

    goto :goto_111e

    .line 1639
    .end local v5    # "_arg0":Ljava/lang/String;
    :sswitch_112b
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1641
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1642
    .restart local v5    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, isPermissionEnforced(Ljava/lang/String;)Z

    move-result v27

    .line 1643
    .restart local v27    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1644
    if-eqz v27, :cond_114a

    const/4 v4, 0x1

    :goto_1142
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1645
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 1644
    :cond_114a
    const/4 v4, 0x0

    goto :goto_1142

    .line 1649
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v27    # "_result":Z
    :sswitch_114c
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1651
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_117c

    .line 1652
    sget-object v4, Landroid/content/pm/ResolveInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 1658
    .local v5, "_arg0":Landroid/content/pm/ResolveInfo;
    :goto_1163
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v26

    .line 1659
    .local v26, "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v5, v1}, revokeExternalPermissions(Landroid/content/pm/ResolveInfo;Ljava/util/List;)I

    move-result v27

    .line 1660
    .local v27, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1661
    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1662
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 1655
    .end local v5    # "_arg0":Landroid/content/pm/ResolveInfo;
    .end local v26    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v27    # "_result":I
    :cond_117c
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/pm/ResolveInfo;
    goto :goto_1163

    .line 1666
    .end local v5    # "_arg0":Landroid/content/pm/ResolveInfo;
    :sswitch_117e
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1668
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1669
    .local v5, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, setLicensePermissions(Ljava/lang/String;)I

    move-result v27

    .line 1670
    .restart local v27    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1671
    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1672
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 1676
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v27    # "_result":I
    :sswitch_119c
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1678
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1680
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v26

    .line 1681
    .restart local v26    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v5, v1}, revokePermissionEDM(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v37

    .line 1682
    .local v37, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1683
    move-object/from16 v0, p3

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 1684
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 1688
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v26    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v37    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_11c0
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1690
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1692
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v26

    .line 1693
    .restart local v26    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v5, v1}, rollbackPermission(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v37

    .line 1694
    .restart local v37    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1695
    move-object/from16 v0, p3

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 1696
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 1700
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v26    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v37    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_11e4
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1702
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1703
    .restart local v5    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, getGrantedPermissions(Ljava/lang/String;)Ljava/util/List;

    move-result-object v37

    .line 1704
    .restart local v37    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1705
    move-object/from16 v0, p3

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 1706
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 1710
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v37    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_1202
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1712
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1714
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/content/pm/IPackageInstallObserver2$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageInstallObserver2;

    move-result-object v6

    .line 1716
    .local v6, "_arg1":Landroid/content/pm/IPackageInstallObserver2;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1718
    .restart local v7    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 1720
    .restart local v8    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 1722
    .restart local v9    # "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1240

    .line 1723
    sget-object v4, Landroid/content/pm/VerificationParams;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/VerificationParams;

    .line 1729
    .local v10, "_arg5":Landroid/content/pm/VerificationParams;
    :goto_1231
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .local v11, "_arg6":Ljava/lang/String;
    move-object/from16 v4, p0

    .line 1730
    invoke-virtual/range {v4 .. v11}, installPackageForMDM(Ljava/lang/String;Landroid/content/pm/IPackageInstallObserver2;IILjava/lang/String;Landroid/content/pm/VerificationParams;Ljava/lang/String;)V

    .line 1731
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1732
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 1726
    .end local v10    # "_arg5":Landroid/content/pm/VerificationParams;
    .end local v11    # "_arg6":Ljava/lang/String;
    :cond_1240
    const/4 v10, 0x0

    .restart local v10    # "_arg5":Landroid/content/pm/VerificationParams;
    goto :goto_1231

    .line 1736
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Landroid/content/pm/IPackageInstallObserver2;
    .end local v7    # "_arg2":I
    .end local v8    # "_arg3":I
    .end local v9    # "_arg4":Ljava/lang/String;
    .end local v10    # "_arg5":Landroid/content/pm/VerificationParams;
    :sswitch_1242
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1738
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1740
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1741
    .local v6, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, installExistingPackageAsUserForMDM(Ljava/lang/String;I)I

    move-result v27

    .line 1742
    .restart local v27    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1743
    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1744
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 1748
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":I
    .end local v27    # "_result":I
    :sswitch_1264
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1750
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1752
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1753
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, clearPackagePreferredActivitiesAsUser(Ljava/lang/String;I)V

    .line 1754
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1755
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 1759
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":I
    :sswitch_127e
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1760
    invoke-virtual/range {p0 .. p0}, isStorageLow()Z

    move-result v27

    .line 1761
    .local v27, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1762
    if-eqz v27, :cond_1297

    const/4 v4, 0x1

    :goto_128f
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1763
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 1762
    :cond_1297
    const/4 v4, 0x0

    goto :goto_128f

    .line 1767
    .end local v27    # "_result":Z
    :sswitch_1299
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1769
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1771
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_12c3

    const/4 v6, 0x1

    .line 1773
    .local v6, "_arg1":Z
    :goto_12ab
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1774
    .restart local v7    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, setApplicationHiddenSettingAsUser(Ljava/lang/String;ZI)Z

    move-result v27

    .line 1775
    .restart local v27    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1776
    if-eqz v27, :cond_12c5

    const/4 v4, 0x1

    :goto_12bb
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1777
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 1771
    .end local v6    # "_arg1":Z
    .end local v7    # "_arg2":I
    .end local v27    # "_result":Z
    :cond_12c3
    const/4 v6, 0x0

    goto :goto_12ab

    .line 1776
    .restart local v6    # "_arg1":Z
    .restart local v7    # "_arg2":I
    .restart local v27    # "_result":Z
    :cond_12c5
    const/4 v4, 0x0

    goto :goto_12bb

    .line 1781
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Z
    .end local v7    # "_arg2":I
    .end local v27    # "_result":Z
    :sswitch_12c7
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1783
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1785
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1786
    .local v6, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, getApplicationHiddenSettingAsUser(Ljava/lang/String;I)Z

    move-result v27

    .line 1787
    .restart local v27    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1788
    if-eqz v27, :cond_12ea

    const/4 v4, 0x1

    :goto_12e2
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1789
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 1788
    :cond_12ea
    const/4 v4, 0x0

    goto :goto_12e2

    .line 1793
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":I
    .end local v27    # "_result":Z
    :sswitch_12ec
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1794
    invoke-virtual/range {p0 .. p0}, getPackageInstaller()Landroid/content/pm/IPackageInstaller;

    move-result-object v27

    .line 1795
    .local v27, "_result":Landroid/content/pm/IPackageInstaller;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1796
    if-eqz v27, :cond_1308

    invoke-interface/range {v27 .. v27}, Landroid/content/pm/IPackageInstaller;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    :goto_1300
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1797
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 1796
    :cond_1308
    const/4 v4, 0x0

    goto :goto_1300

    .line 1801
    .end local v27    # "_result":Landroid/content/pm/IPackageInstaller;
    :sswitch_130a
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1803
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1805
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1334

    const/4 v6, 0x1

    .line 1807
    .local v6, "_arg1":Z
    :goto_131c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1808
    .restart local v7    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, setBlockUninstallForUser(Ljava/lang/String;ZI)Z

    move-result v27

    .line 1809
    .local v27, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1810
    if-eqz v27, :cond_1336

    const/4 v4, 0x1

    :goto_132c
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1811
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 1805
    .end local v6    # "_arg1":Z
    .end local v7    # "_arg2":I
    .end local v27    # "_result":Z
    :cond_1334
    const/4 v6, 0x0

    goto :goto_131c

    .line 1810
    .restart local v6    # "_arg1":Z
    .restart local v7    # "_arg2":I
    .restart local v27    # "_result":Z
    :cond_1336
    const/4 v4, 0x0

    goto :goto_132c

    .line 1815
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Z
    .end local v7    # "_arg2":I
    .end local v27    # "_result":Z
    :sswitch_1338
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1817
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1819
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1820
    .local v6, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, getBlockUninstallForUser(Ljava/lang/String;I)Z

    move-result v27

    .line 1821
    .restart local v27    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1822
    if-eqz v27, :cond_135b

    const/4 v4, 0x1

    :goto_1353
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1823
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 1822
    :cond_135b
    const/4 v4, 0x0

    goto :goto_1353

    .line 1827
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":I
    .end local v27    # "_result":Z
    :sswitch_135d
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1829
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1831
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1832
    .local v6, "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, getKeySetByAlias(Ljava/lang/String;Ljava/lang/String;)Landroid/content/pm/KeySet;

    move-result-object v27

    .line 1833
    .local v27, "_result":Landroid/content/pm/KeySet;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1834
    if-eqz v27, :cond_1388

    .line 1835
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1836
    const/4 v4, 0x1

    move-object/from16 v0, v27

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/content/pm/KeySet;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1841
    :goto_1385
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 1839
    :cond_1388
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1385

    .line 1845
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v27    # "_result":Landroid/content/pm/KeySet;
    :sswitch_138f
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1847
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1848
    .restart local v5    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, getSigningKeySet(Ljava/lang/String;)Landroid/content/pm/KeySet;

    move-result-object v27

    .line 1849
    .restart local v27    # "_result":Landroid/content/pm/KeySet;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1850
    if-eqz v27, :cond_13b6

    .line 1851
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1852
    const/4 v4, 0x1

    move-object/from16 v0, v27

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/content/pm/KeySet;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1857
    :goto_13b3
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 1855
    :cond_13b6
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_13b3

    .line 1861
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v27    # "_result":Landroid/content/pm/KeySet;
    :sswitch_13bd
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1863
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1865
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_13ec

    .line 1866
    sget-object v4, Landroid/content/pm/KeySet;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/KeySet;

    .line 1871
    .local v6, "_arg1":Landroid/content/pm/KeySet;
    :goto_13d8
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, isPackageSignedByKeySet(Ljava/lang/String;Landroid/content/pm/KeySet;)Z

    move-result v27

    .line 1872
    .local v27, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1873
    if-eqz v27, :cond_13ee

    const/4 v4, 0x1

    :goto_13e4
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1874
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 1869
    .end local v6    # "_arg1":Landroid/content/pm/KeySet;
    .end local v27    # "_result":Z
    :cond_13ec
    const/4 v6, 0x0

    .restart local v6    # "_arg1":Landroid/content/pm/KeySet;
    goto :goto_13d8

    .line 1873
    .restart local v27    # "_result":Z
    :cond_13ee
    const/4 v4, 0x0

    goto :goto_13e4

    .line 1878
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Landroid/content/pm/KeySet;
    .end local v27    # "_result":Z
    :sswitch_13f0
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1880
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1882
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_141f

    .line 1883
    sget-object v4, Landroid/content/pm/KeySet;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/KeySet;

    .line 1888
    .restart local v6    # "_arg1":Landroid/content/pm/KeySet;
    :goto_140b
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, isPackageSignedByKeySetExactly(Ljava/lang/String;Landroid/content/pm/KeySet;)Z

    move-result v27

    .line 1889
    .restart local v27    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1890
    if-eqz v27, :cond_1421

    const/4 v4, 0x1

    :goto_1417
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1891
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 1886
    .end local v6    # "_arg1":Landroid/content/pm/KeySet;
    .end local v27    # "_result":Z
    :cond_141f
    const/4 v6, 0x0

    .restart local v6    # "_arg1":Landroid/content/pm/KeySet;
    goto :goto_140b

    .line 1890
    .restart local v27    # "_result":Z
    :cond_1421
    const/4 v4, 0x0

    goto :goto_1417

    .line 1895
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Landroid/content/pm/KeySet;
    .end local v27    # "_result":Z
    :sswitch_1423
    const-string v4, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1897
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v13

    .line 1899
    .restart local v13    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1901
    .local v6, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1903
    .restart local v7    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1461

    const/4 v8, 0x1

    .line 1905
    .local v8, "_arg3":Z
    :goto_143d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1463

    const/4 v9, 0x1

    .line 1907
    .local v9, "_arg4":Z
    :goto_1444
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 1909
    .local v10, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .restart local v11    # "_arg6":Ljava/lang/String;
    move-object/from16 v12, p0

    move v14, v6

    move v15, v7

    move/from16 v16, v8

    move/from16 v17, v9

    move/from16 v18, v10

    move-object/from16 v19, v11

    .line 1910
    invoke-virtual/range {v12 .. v19}, setApplicationEnabledSettingWithList(Ljava/util/List;IIZZILjava/lang/String;)V

    .line 1911
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1912
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 1903
    .end local v8    # "_arg3":Z
    .end local v9    # "_arg4":Z
    .end local v10    # "_arg5":I
    .end local v11    # "_arg6":Ljava/lang/String;
    :cond_1461
    const/4 v8, 0x0

    goto :goto_143d

    .line 1905
    .restart local v8    # "_arg3":Z
    :cond_1463
    const/4 v9, 0x0

    goto :goto_1444

    .line 44
    nop

    :sswitch_data_1466
    .sparse-switch
        0x1 -> :sswitch_11
        0x2 -> :sswitch_35
        0x3 -> :sswitch_6a
        0x4 -> :sswitch_8c
        0x5 -> :sswitch_aa
        0x6 -> :sswitch_c8
        0x7 -> :sswitch_e6
        0x8 -> :sswitch_118
        0x9 -> :sswitch_13a
        0xa -> :sswitch_16c
        0xb -> :sswitch_18a
        0xc -> :sswitch_1c0
        0xd -> :sswitch_204
        0xe -> :sswitch_249
        0xf -> :sswitch_28d
        0x10 -> :sswitch_2d1
        0x11 -> :sswitch_315
        0x12 -> :sswitch_337
        0x13 -> :sswitch_359
        0x14 -> :sswitch_377
        0x15 -> :sswitch_392
        0x16 -> :sswitch_3b4
        0x17 -> :sswitch_3d6
        0x18 -> :sswitch_405
        0x19 -> :sswitch_41b
        0x1a -> :sswitch_435
        0x1b -> :sswitch_44f
        0x1c -> :sswitch_470
        0x1d -> :sswitch_492
        0x1e -> :sswitch_4b4
        0x1f -> :sswitch_4d2
        0x20 -> :sswitch_4f0
        0x21 -> :sswitch_50e
        0x22 -> :sswitch_52c
        0x23 -> :sswitch_54d
        0x24 -> :sswitch_56b
        0x25 -> :sswitch_5b3
        0x26 -> :sswitch_5ee
        0x27 -> :sswitch_626
        0x28 -> :sswitch_67e
        0x29 -> :sswitch_6b6
        0x2a -> :sswitch_6fe
        0x2b -> :sswitch_736
        0x2c -> :sswitch_76e
        0x2d -> :sswitch_7a0
        0x2e -> :sswitch_7d6
        0x2f -> :sswitch_808
        0x30 -> :sswitch_826
        0x31 -> :sswitch_85c
        0x32 -> :sswitch_888
        0x33 -> :sswitch_8ae
        0x34 -> :sswitch_8ee
        0x35 -> :sswitch_910
        0x36 -> :sswitch_94c
        0x37 -> :sswitch_98c
        0x38 -> :sswitch_9a2
        0x39 -> :sswitch_9bc
        0x3a -> :sswitch_9e2
        0x3b -> :sswitch_a08
        0x3c -> :sswitch_a26
        0x3d -> :sswitch_a3c
        0x3e -> :sswitch_a52
        0x3f -> :sswitch_a70
        0x40 -> :sswitch_a86
        0x41 -> :sswitch_aca
        0x42 -> :sswitch_b1e
        0x43 -> :sswitch_b66
        0x44 -> :sswitch_bae
        0x45 -> :sswitch_bc4
        0x46 -> :sswitch_bfe
        0x47 -> :sswitch_c38
        0x48 -> :sswitch_c52
        0x49 -> :sswitch_c8a
        0x4a -> :sswitch_ca8
        0x4b -> :sswitch_ce0
        0x4c -> :sswitch_d10
        0x4d -> :sswitch_d40
        0x4e -> :sswitch_d66
        0x4f -> :sswitch_d88
        0x50 -> :sswitch_dab
        0x51 -> :sswitch_dcb
        0x52 -> :sswitch_df5
        0x53 -> :sswitch_e13
        0x54 -> :sswitch_e35
        0x55 -> :sswitch_e57
        0x56 -> :sswitch_e6f
        0x57 -> :sswitch_e88
        0x58 -> :sswitch_ea9
        0x59 -> :sswitch_ec7
        0x5a -> :sswitch_ed7
        0x5b -> :sswitch_ef2
        0x5c -> :sswitch_f02
        0x5d -> :sswitch_f1d
        0x5e -> :sswitch_f2d
        0x5f -> :sswitch_f52
        0x60 -> :sswitch_f68
        0x61 -> :sswitch_f8c
        0x62 -> :sswitch_fc8
        0x63 -> :sswitch_fea
        0x64 -> :sswitch_1019
        0x65 -> :sswitch_103a
        0x66 -> :sswitch_1052
        0x67 -> :sswitch_1074
        0x68 -> :sswitch_108e
        0x69 -> :sswitch_10ae
        0x6a -> :sswitch_10d6
        0x6b -> :sswitch_10f1
        0x6c -> :sswitch_110c
        0x6d -> :sswitch_112b
        0x6e -> :sswitch_114c
        0x6f -> :sswitch_117e
        0x70 -> :sswitch_119c
        0x71 -> :sswitch_11c0
        0x72 -> :sswitch_11e4
        0x73 -> :sswitch_1202
        0x74 -> :sswitch_1242
        0x75 -> :sswitch_1264
        0x76 -> :sswitch_127e
        0x77 -> :sswitch_1299
        0x78 -> :sswitch_12c7
        0x79 -> :sswitch_12ec
        0x7a -> :sswitch_130a
        0x7b -> :sswitch_1338
        0x7c -> :sswitch_135d
        0x7d -> :sswitch_138f
        0x7e -> :sswitch_13bd
        0x7f -> :sswitch_13f0
        0x80 -> :sswitch_1423
        0x5f4e5446 -> :sswitch_8
    .end sparse-switch
.end method
