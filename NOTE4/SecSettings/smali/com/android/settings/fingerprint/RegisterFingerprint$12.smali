.class Lcom/android/settings/fingerprint/RegisterFingerprint$12;
.super Ljava/lang/Object;
.source "RegisterFingerprint.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fingerprint/RegisterFingerprint;->showGuidewithTipDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;


# direct methods
.method constructor <init>(Lcom/android/settings/fingerprint/RegisterFingerprint;)V
    .locals 0

    .prologue
    .line 858
    iput-object p1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$12;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 860
    const-string v0, "RegisterFingerprint"

    const-string v1, "showGuidewithTipDialog TIP!!"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 861
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$12;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    const/4 v1, 0x1

    # setter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->fromShowGuidewithTipDialog:Z
    invoke-static {v0, v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$4402(Lcom/android/settings/fingerprint/RegisterFingerprint;Z)Z

    .line 862
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$12;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    # invokes: Lcom/android/settings/fingerprint/RegisterFingerprint;->startTipDialog()V
    invoke-static {v0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$4500(Lcom/android/settings/fingerprint/RegisterFingerprint;)V

    .line 863
    return-void
.end method
