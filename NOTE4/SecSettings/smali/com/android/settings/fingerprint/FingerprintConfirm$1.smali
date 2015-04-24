.class Lcom/android/settings/fingerprint/FingerprintConfirm$1;
.super Ljava/lang/Object;
.source "FingerprintConfirm.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fingerprint/FingerprintConfirm;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fingerprint/FingerprintConfirm;


# direct methods
.method constructor <init>(Lcom/android/settings/fingerprint/FingerprintConfirm;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintConfirm$1;->this$0:Lcom/android/settings/fingerprint/FingerprintConfirm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintConfirm$1;->this$0:Lcom/android/settings/fingerprint/FingerprintConfirm;

    # invokes: Lcom/android/settings/fingerprint/FingerprintConfirm;->showIdentifyDialog()V
    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintConfirm;->access$000(Lcom/android/settings/fingerprint/FingerprintConfirm;)V

    .line 57
    return-void
.end method
