.class Lcom/android/settings/myplace/SelectMapActivity$9;
.super Ljava/lang/Object;
.source "SelectMapActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/myplace/SelectMapActivity;->onResume()V
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
    .line 362
    iput-object p1, p0, Lcom/android/settings/myplace/SelectMapActivity$9;->this$0:Lcom/android/settings/myplace/SelectMapActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 365
    iget-object v0, p0, Lcom/android/settings/myplace/SelectMapActivity$9;->this$0:Lcom/android/settings/myplace/SelectMapActivity;

    iget-object v1, p0, Lcom/android/settings/myplace/SelectMapActivity$9;->this$0:Lcom/android/settings/myplace/SelectMapActivity;

    # getter for: Lcom/android/settings/myplace/SelectMapActivity;->mLocation:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/settings/myplace/SelectMapActivity;->access$800(Lcom/android/settings/myplace/SelectMapActivity;)Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/settings/myplace/SelectMapActivity;->getFromLocationName(Ljava/lang/String;)Z
    invoke-static {v0, v1}, Lcom/android/settings/myplace/SelectMapActivity;->access$1100(Lcom/android/settings/myplace/SelectMapActivity;Ljava/lang/String;)Z

    .line 366
    return-void
.end method
