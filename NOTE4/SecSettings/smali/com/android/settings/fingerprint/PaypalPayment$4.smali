.class Lcom/android/settings/fingerprint/PaypalPayment$4;
.super Ljava/lang/Object;
.source "PaypalPayment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fingerprint/PaypalPayment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fingerprint/PaypalPayment;


# direct methods
.method constructor <init>(Lcom/android/settings/fingerprint/PaypalPayment;)V
    .locals 0

    .prologue
    .line 272
    iput-object p1, p0, Lcom/android/settings/fingerprint/PaypalPayment$4;->this$0:Lcom/android/settings/fingerprint/PaypalPayment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 276
    iget-object v0, p0, Lcom/android/settings/fingerprint/PaypalPayment$4;->this$0:Lcom/android/settings/fingerprint/PaypalPayment;

    iget-object v1, p0, Lcom/android/settings/fingerprint/PaypalPayment$4;->this$0:Lcom/android/settings/fingerprint/PaypalPayment;

    # invokes: Lcom/android/settings/fingerprint/PaypalPayment;->updateInstallButton()I
    invoke-static {v1}, Lcom/android/settings/fingerprint/PaypalPayment;->access$1200(Lcom/android/settings/fingerprint/PaypalPayment;)I

    move-result v1

    # setter for: Lcom/android/settings/fingerprint/PaypalPayment;->mInstallButtonStatus:I
    invoke-static {v0, v1}, Lcom/android/settings/fingerprint/PaypalPayment;->access$402(Lcom/android/settings/fingerprint/PaypalPayment;I)I

    .line 277
    return-void
.end method
