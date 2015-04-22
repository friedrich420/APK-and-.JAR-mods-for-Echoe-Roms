.class Lcom/android/server/pm/PackageVerificationState;
.super Ljava/lang/Object;
.source "PackageVerificationState.java"


# instance fields
.field private final mArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

.field private mExtendedTimeout:Z

.field private mRequiredVerificationComplete:Z

.field private mRequiredVerificationPassed:Z

.field private final mRequiredVerifierUids:Landroid/util/SparseBooleanArray;

.field private mSufficientVerificationComplete:Z

.field private mSufficientVerificationPassed:Z

.field private final mSufficientVerifierUids:Landroid/util/SparseBooleanArray;

.field private final mVerificationId:I

.field private mVerificationIntent:Landroid/content/Intent;

.field private mVerifierPackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/pm/PackageManagerService$VerifierPackage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Landroid/content/Intent;ILcom/android/server/pm/PackageManagerService$InstallArgs;)V
    .registers 6
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "verificationId"    # I
    .param p4, "args"    # Lcom/android/server/pm/PackageManagerService$InstallArgs;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/pm/PackageManagerService$VerifierPackage;",
            ">;",
            "Landroid/content/Intent;",
            "I",
            "Lcom/android/server/pm/PackageManagerService$InstallArgs;",
            ")V"
        }
    .end annotation

    .prologue
    .line 67
    .local p1, "verifierPackages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/PackageManagerService$VerifierPackage;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, mVerifierPackages:Ljava/util/ArrayList;

    .line 69
    iput-object p2, p0, mVerificationIntent:Landroid/content/Intent;

    .line 70
    iput p3, p0, mVerificationId:I

    .line 71
    iput-object p4, p0, mArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    .line 72
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, mRequiredVerifierUids:Landroid/util/SparseBooleanArray;

    .line 73
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, mSufficientVerifierUids:Landroid/util/SparseBooleanArray;

    .line 74
    const/4 v0, 0x0

    iput-boolean v0, p0, mExtendedTimeout:Z

    .line 75
    return-void
.end method


# virtual methods
.method public addRequiredVerifierUid(I)V
    .registers 4
    .param p1, "uid"    # I

    .prologue
    .line 107
    iget-object v0, p0, mRequiredVerifierUids:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 108
    return-void
.end method

.method public addSufficientVerifier(I)V
    .registers 4
    .param p1, "uid"    # I

    .prologue
    .line 116
    iget-object v0, p0, mSufficientVerifierUids:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 117
    return-void
.end method

.method public clearSufficientVerifiers()V
    .registers 2

    .prologue
    .line 123
    iget-object v0, p0, mSufficientVerifierUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 124
    return-void
.end method

.method public extendTimeout()V
    .registers 2

    .prologue
    .line 214
    iget-boolean v0, p0, mExtendedTimeout:Z

    if-nez v0, :cond_7

    .line 215
    const/4 v0, 0x1

    iput-boolean v0, p0, mExtendedTimeout:Z

    .line 217
    :cond_7
    return-void
.end method

.method public getInstallArgs()Lcom/android/server/pm/PackageManagerService$InstallArgs;
    .registers 2

    .prologue
    .line 98
    iget-object v0, p0, mArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    return-object v0
.end method

.method public getVerificationId()I
    .registers 2

    .prologue
    .line 94
    iget v0, p0, mVerificationId:I

    return v0
.end method

.method public getVerificationIntent()Landroid/content/Intent;
    .registers 2

    .prologue
    .line 90
    iget-object v0, p0, mVerificationIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public getVerifierPackage(I)Lcom/android/server/pm/PackageManagerService$VerifierPackage;
    .registers 3
    .param p1, "index"    # I

    .prologue
    .line 78
    iget-object v0, p0, mVerifierPackages:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageManagerService$VerifierPackage;

    return-object v0
.end method

.method public getVerifierPackageCount()I
    .registers 2

    .prologue
    .line 86
    iget-object v0, p0, mVerifierPackages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public initTimeout()V
    .registers 2

    .prologue
    .line 232
    const/4 v0, 0x0

    iput-boolean v0, p0, mExtendedTimeout:Z

    .line 233
    return-void
.end method

.method public isInstallAllowed()Z
    .registers 2

    .prologue
    .line 199
    iget-boolean v0, p0, mRequiredVerificationPassed:Z

    if-nez v0, :cond_6

    .line 200
    const/4 v0, 0x0

    .line 207
    :goto_5
    return v0

    .line 203
    :cond_6
    iget-boolean v0, p0, mSufficientVerificationComplete:Z

    if-eqz v0, :cond_d

    .line 204
    iget-boolean v0, p0, mSufficientVerificationPassed:Z

    goto :goto_5

    .line 207
    :cond_d
    const/4 v0, 0x1

    goto :goto_5
.end method

.method public isVerificationComplete()Z
    .registers 2

    .prologue
    .line 181
    iget-boolean v0, p0, mRequiredVerificationComplete:Z

    if-nez v0, :cond_6

    .line 182
    const/4 v0, 0x0

    .line 189
    :goto_5
    return v0

    .line 185
    :cond_6
    iget-object v0, p0, mSufficientVerifierUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    if-nez v0, :cond_10

    .line 186
    const/4 v0, 0x1

    goto :goto_5

    .line 189
    :cond_10
    iget-boolean v0, p0, mSufficientVerificationComplete:Z

    goto :goto_5
.end method

.method public removeVerifierPackage(I)V
    .registers 3
    .param p1, "index"    # I

    .prologue
    .line 82
    iget-object v0, p0, mVerifierPackages:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 83
    return-void
.end method

.method public setVerifierResponse(II)Z
    .registers 6
    .param p1, "uid"    # I
    .param p2, "code"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 134
    iget-object v2, p0, mRequiredVerifierUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v2

    if-eqz v2, :cond_33

    .line 135
    packed-switch p2, :pswitch_data_54

    .line 147
    iget-object v2, p0, mRequiredVerifierUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->clear()V

    .line 148
    iget-object v2, p0, mSufficientVerifierUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->clear()V

    .line 149
    iput-boolean v0, p0, mRequiredVerificationComplete:Z

    .line 150
    iput-boolean v1, p0, mRequiredVerificationPassed:Z

    .line 170
    :cond_1b
    :goto_1b
    return v0

    .line 137
    :pswitch_1c
    iget-object v1, p0, mSufficientVerifierUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->clear()V

    .line 140
    :pswitch_21
    iget-object v1, p0, mRequiredVerifierUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 141
    iget-object v1, p0, mRequiredVerifierUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    if-nez v1, :cond_1b

    .line 142
    iput-boolean v0, p0, mRequiredVerificationComplete:Z

    .line 143
    iput-boolean v0, p0, mRequiredVerificationPassed:Z

    goto :goto_1b

    .line 155
    :cond_33
    iget-object v2, p0, mSufficientVerifierUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v2

    if-eqz v2, :cond_51

    .line 156
    if-ne p2, v0, :cond_41

    .line 157
    iput-boolean v0, p0, mSufficientVerificationComplete:Z

    .line 158
    iput-boolean v0, p0, mSufficientVerificationPassed:Z

    .line 161
    :cond_41
    iget-object v1, p0, mSufficientVerifierUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 162
    iget-object v1, p0, mSufficientVerifierUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    if-nez v1, :cond_1b

    .line 163
    iput-boolean v0, p0, mSufficientVerificationComplete:Z

    goto :goto_1b

    :cond_51
    move v0, v1

    .line 170
    goto :goto_1b

    .line 135
    nop

    :pswitch_data_54
    .packed-switch 0x1
        :pswitch_21
        :pswitch_1c
    .end packed-switch
.end method

.method public timeoutExtended()Z
    .registers 2

    .prologue
    .line 225
    iget-boolean v0, p0, mExtendedTimeout:Z

    return v0
.end method
