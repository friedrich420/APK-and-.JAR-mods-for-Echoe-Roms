.class public Lcom/android/settings/DataUsageSummary$DeniedRestrictFragment;
.super Landroid/app/DialogFragment;
.source "DataUsageSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DeniedRestrictFragment"
.end annotation


# static fields
.field static final dialog:Lcom/android/settings/DataUsageSummary$DeniedRestrictFragment;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 3663
    new-instance v0, Lcom/android/settings/DataUsageSummary$DeniedRestrictFragment;

    invoke-direct {v0}, Lcom/android/settings/DataUsageSummary$DeniedRestrictFragment;-><init>()V

    sput-object v0, Lcom/android/settings/DataUsageSummary$DeniedRestrictFragment;->dialog:Lcom/android/settings/DataUsageSummary$DeniedRestrictFragment;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3662
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 3682
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary$DeniedRestrictFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 3684
    .local v1, "context":Landroid/content/Context;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3685
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0a0cfe

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 3686
    const v2, 0x7f0a0d03

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 3687
    const v2, 0x104000a

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 3689
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    return-object v2
.end method
