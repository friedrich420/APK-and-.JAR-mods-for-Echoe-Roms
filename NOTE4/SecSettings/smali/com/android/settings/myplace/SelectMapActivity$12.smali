.class Lcom/android/settings/myplace/SelectMapActivity$12;
.super Ljava/lang/Object;
.source "SelectMapActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/myplace/SelectMapActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/myplace/SelectMapActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/myplace/SelectMapActivity;)V
    .locals 0

    .prologue
    .line 927
    iput-object p1, p0, Lcom/android/settings/myplace/SelectMapActivity$12;->this$0:Lcom/android/settings/myplace/SelectMapActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 930
    iget-object v0, p0, Lcom/android/settings/myplace/SelectMapActivity$12;->this$0:Lcom/android/settings/myplace/SelectMapActivity;

    # getter for: Lcom/android/settings/myplace/SelectMapActivity;->mMyLocationOverlay:Lcom/google/android/maps/MyLocationOverlay;
    invoke-static {v0}, Lcom/android/settings/myplace/SelectMapActivity;->access$600(Lcom/android/settings/myplace/SelectMapActivity;)Lcom/google/android/maps/MyLocationOverlay;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 931
    iget-object v0, p0, Lcom/android/settings/myplace/SelectMapActivity$12;->this$0:Lcom/android/settings/myplace/SelectMapActivity;

    const-string v1, ""

    # setter for: Lcom/android/settings/myplace/SelectMapActivity;->mLocation:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/settings/myplace/SelectMapActivity;->access$802(Lcom/android/settings/myplace/SelectMapActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 932
    iget-object v0, p0, Lcom/android/settings/myplace/SelectMapActivity$12;->this$0:Lcom/android/settings/myplace/SelectMapActivity;

    # getter for: Lcom/android/settings/myplace/SelectMapActivity;->mMyLocationOverlay:Lcom/google/android/maps/MyLocationOverlay;
    invoke-static {v0}, Lcom/android/settings/myplace/SelectMapActivity;->access$600(Lcom/android/settings/myplace/SelectMapActivity;)Lcom/google/android/maps/MyLocationOverlay;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/MyLocationOverlay;->disableMyLocation()V

    .line 934
    :cond_0
    iget-object v0, p0, Lcom/android/settings/myplace/SelectMapActivity$12;->this$0:Lcom/android/settings/myplace/SelectMapActivity;

    invoke-virtual {v0}, Lcom/android/settings/myplace/SelectMapActivity;->finish()V

    .line 935
    return-void
.end method
