.class public Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
.super Ljava/lang/Object;
.source "PersonaPolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PersonaPolicyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PersonaPolicyData"
.end annotation


# instance fields
.field mAirCommandEnabled:Z

.field mAllowAllShare:Z

.field mAllowContainerReset:Z

.field mAllowCustomBadgeIcon:Z

.field mAllowCustomColorIdentification:Z

.field mAllowCustomPersonaIcon:Z

.field mAllowDLNADataTransfer:Z

.field mAllowExportAndDeleteFiles:Z

.field mAllowExportFiles:Z

.field mAllowImportFiles:Z

.field mAllowPrint:Z

.field mAllowShortCutCreation:Z

.field mAllowUniversalCallerId:Z

.field mCameraModeChangeEnabled:Z

.field mDisableSwitchWidgetOnLockScreen:Z

.field mEncryptionEnabled:Z

.field mGearSupportEnabled:Z

.field mModifyLockScreenTimeout:Z

.field mPasswordLockEnabled:Z

.field mPenWindowEnabled:Z

.field mPersonaId:I

.field mRCPDataSettings:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;",
            ">;>;"
        }
    .end annotation
.end field

.field mRCPNotifSettings:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;",
            ">;>;"
        }
    .end annotation
.end field

.field mSecureKeystoreEnabled:Z

.field mSwitchNotifEnabled:Z


# direct methods
.method public constructor <init>(I)V
    .registers 5
    .param p1, "personaId"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-boolean v0, p0, mPasswordLockEnabled:Z

    .line 87
    iput-boolean v0, p0, mEncryptionEnabled:Z

    .line 88
    iput-boolean v0, p0, mSecureKeystoreEnabled:Z

    .line 89
    iput-boolean v1, p0, mCameraModeChangeEnabled:Z

    .line 90
    iput-boolean v0, p0, mAllowCustomBadgeIcon:Z

    .line 91
    iput-boolean v1, p0, mDisableSwitchWidgetOnLockScreen:Z

    .line 92
    iput-boolean v0, p0, mAllowCustomPersonaIcon:Z

    .line 93
    iput-boolean v0, p0, mAllowCustomColorIdentification:Z

    .line 94
    iput-boolean v1, p0, mAllowContainerReset:Z

    .line 95
    iput-boolean v0, p0, mAllowShortCutCreation:Z

    .line 96
    iput-boolean v1, p0, mAllowDLNADataTransfer:Z

    .line 97
    iput-boolean v1, p0, mAllowPrint:Z

    .line 98
    iput-boolean v0, p0, mModifyLockScreenTimeout:Z

    .line 99
    iput-boolean v1, p0, mAllowAllShare:Z

    .line 100
    iput-boolean v0, p0, mGearSupportEnabled:Z

    .line 101
    iput-boolean v0, p0, mPenWindowEnabled:Z

    .line 102
    iput-boolean v0, p0, mAirCommandEnabled:Z

    .line 103
    iput-boolean v0, p0, mAllowUniversalCallerId:Z

    .line 104
    iput-boolean v0, p0, mAllowImportFiles:Z

    .line 105
    iput-boolean v1, p0, mAllowExportFiles:Z

    .line 106
    iput-boolean v1, p0, mAllowExportAndDeleteFiles:Z

    .line 107
    iput-boolean v0, p0, mSwitchNotifEnabled:Z

    .line 108
    iput-object v2, p0, mRCPDataSettings:Ljava/util/HashMap;

    .line 109
    iput-object v2, p0, mRCPNotifSettings:Ljava/util/HashMap;

    .line 113
    iput p1, p0, mPersonaId:I

    .line 114
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, mRCPDataSettings:Ljava/util/HashMap;

    .line 115
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, mRCPNotifSettings:Ljava/util/HashMap;

    .line 116
    return-void
.end method
