.class Lcom/android/settings/fingerprint/FingerprintSupportingFeatures$2;
.super Ljava/lang/Object;
.source "FingerprintSupportingFeatures.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fingerprint/FingerprintSupportingFeatures;->registerSamsungAccount()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fingerprint/FingerprintSupportingFeatures;


# direct methods
.method constructor <init>(Lcom/android/settings/fingerprint/FingerprintSupportingFeatures;)V
    .locals 0

    .prologue
    .line 263
    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintSupportingFeatures$2;->this$0:Lcom/android/settings/fingerprint/FingerprintSupportingFeatures;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 265
    iget-object v5, p0, Lcom/android/settings/fingerprint/FingerprintSupportingFeatures$2;->this$0:Lcom/android/settings/fingerprint/FingerprintSupportingFeatures;

    # getter for: Lcom/android/settings/fingerprint/FingerprintSupportingFeatures;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/settings/fingerprint/FingerprintSupportingFeatures;->access$200(Lcom/android/settings/fingerprint/FingerprintSupportingFeatures;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    .line 266
    .local v1, "manager":Landroid/accounts/AccountManager;
    const-string v5, "com.osp.app.signin"

    invoke-virtual {v1, v5}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v4

    .line 267
    .local v4, "samsungAccnts":[Landroid/accounts/Account;
    array-length v3, v4

    .line 268
    .local v3, "returnvalue_sa":I
    if-nez v3, :cond_0

    .line 269
    iget-object v5, p0, Lcom/android/settings/fingerprint/FingerprintSupportingFeatures$2;->this$0:Lcom/android/settings/fingerprint/FingerprintSupportingFeatures;

    # getter for: Lcom/android/settings/fingerprint/FingerprintSupportingFeatures;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/settings/fingerprint/FingerprintSupportingFeatures;->access$200(Lcom/android/settings/fingerprint/FingerprintSupportingFeatures;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 270
    .local v2, "packageName":Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    const-string v5, "com.osp.app.signin.action.ADD_SAMSUNG_ACCOUNT"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 271
    .local v0, "mIntent":Landroid/content/Intent;
    const-string v5, "client_id"

    const-string v6, "s5d189ajvs"

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 272
    const-string v5, "client_secret"

    const-string v6, "E8781246E4A0F6E9E213178CC003DE6A"

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 273
    const-string v5, "mypackage"

    invoke-virtual {v0, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 274
    const-string v5, "OSP_VER"

    const-string v6, "OSP_02"

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 275
    const-string v5, "MODE"

    const-string v6, "ADD_ACCOUNT"

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 276
    iget-object v5, p0, Lcom/android/settings/fingerprint/FingerprintSupportingFeatures$2;->this$0:Lcom/android/settings/fingerprint/FingerprintSupportingFeatures;

    const/16 v6, 0x66

    invoke-virtual {v5, v0, v6}, Lcom/android/settings/fingerprint/FingerprintSupportingFeatures;->startActivityForResult(Landroid/content/Intent;I)V

    .line 279
    .end local v0    # "mIntent":Landroid/content/Intent;
    .end local v2    # "packageName":Ljava/lang/String;
    :cond_0
    return-void
.end method
