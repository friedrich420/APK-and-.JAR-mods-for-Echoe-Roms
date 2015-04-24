.class Lcom/android/settings/fingerprint/PaypalPayment$6;
.super Ljava/lang/Object;
.source "PaypalPayment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fingerprint/PaypalPayment;->showErrorDialog(Ljava/lang/String;)V
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
    .line 633
    iput-object p1, p0, Lcom/android/settings/fingerprint/PaypalPayment$6;->this$0:Lcom/android/settings/fingerprint/PaypalPayment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    .line 637
    return-void
.end method
