.class Lcom/android/settings/fingerprint/RegisterTouchFingerprint$11;
.super Ljava/lang/Object;
.source "RegisterTouchFingerprint.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->startTipDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fingerprint/RegisterTouchFingerprint;


# direct methods
.method constructor <init>(Lcom/android/settings/fingerprint/RegisterTouchFingerprint;)V
    .locals 0

    .prologue
    .line 684
    iput-object p1, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint$11;->this$0:Lcom/android/settings/fingerprint/RegisterTouchFingerprint;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "builder"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 686
    const-string v0, "RegisterTouchFingerprint"

    const-string v1, "showGuidewithTipDialog OK!!"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    return-void
.end method
