.class Lcom/android/settings/wifi/mobileap/WifiApAllowedList$5;
.super Ljava/lang/Object;
.source "WifiApAllowedList.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/mobileap/WifiApAllowedList;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/mobileap/WifiApAllowedList;)V
    .locals 0

    .prologue
    .line 259
    iput-object p1, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList$5;->this$0:Lcom/android/settings/wifi/mobileap/WifiApAllowedList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 10
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const v9, 0x7f0a0508

    const/4 v8, 0x0

    .line 261
    iget-object v6, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList$5;->this$0:Lcom/android/settings/wifi/mobileap/WifiApAllowedList;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mActivity:Landroid/app/Activity;
    invoke-static {v6}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->access$200(Lcom/android/settings/wifi/mobileap/WifiApAllowedList;)Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v3, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 262
    .local v3, "screenWidth":I
    iget-object v6, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList$5;->this$0:Lcom/android/settings/wifi/mobileap/WifiApAllowedList;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mActivity:Landroid/app/Activity;
    invoke-static {v6}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->access$200(Lcom/android/settings/wifi/mobileap/WifiApAllowedList;)Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6, v9, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 263
    .local v0, "hintToast":Landroid/widget/Toast;
    iget-object v6, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList$5;->this$0:Lcom/android/settings/wifi/mobileap/WifiApAllowedList;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mActivity:Landroid/app/Activity;
    invoke-static {v6}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->access$200(Lcom/android/settings/wifi/mobileap/WifiApAllowedList;)Landroid/app/Activity;

    move-result-object v6

    const-string v7, "layout_inflater"

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 264
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v6, 0x7f04023f

    const/4 v7, 0x0

    invoke-virtual {v1, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 265
    .local v5, "toastView":Landroid/view/View;
    invoke-virtual {v0, v5}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 266
    const v6, 0x7f100534

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 267
    .local v4, "textView":Landroid/widget/TextView;
    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setText(I)V

    .line 268
    const/4 v6, 0x2

    new-array v2, v6, [I

    .line 269
    .local v2, "screenPos":[I
    invoke-virtual {p1, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 270
    const/16 v6, 0x35

    aget v7, v2, v8

    sub-int v7, v3, v7

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    sub-int/2addr v7, v8

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v8

    add-int/lit8 v8, v8, 0x28

    invoke-virtual {v0, v6, v7, v8}, Landroid/widget/Toast;->setGravity(III)V

    .line 272
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 273
    const/4 v6, 0x1

    return v6
.end method
