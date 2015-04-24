.class Lcom/android/settings/fingerprint/PaypalPayment$9;
.super Ljava/lang/Object;
.source "PaypalPayment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fingerprint/PaypalPayment;->showDataUsingDialog()V
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
    .line 694
    iput-object p1, p0, Lcom/android/settings/fingerprint/PaypalPayment$9;->this$0:Lcom/android/settings/fingerprint/PaypalPayment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 698
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 699
    return-void
.end method
