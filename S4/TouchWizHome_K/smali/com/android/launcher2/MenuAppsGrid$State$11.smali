.class final enum Lcom/android/launcher2/MenuAppsGrid$State$11;
.super Lcom/android/launcher2/MenuAppsGrid$State;
.source "MenuAppsGrid.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/MenuAppsGrid$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 1266
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher2/MenuAppsGrid$State;-><init>(Ljava/lang/String;ILcom/android/launcher2/MenuAppsGrid$1;)V

    return-void
.end method


# virtual methods
.method protected getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1273
    const-string v0, "REMOVE_FROM_SECRET_BOX"

    return-object v0
.end method

.method protected getObj(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuAppsGrid$StateObj;
    .locals 1
    .param p1, "this_"    # Lcom/android/launcher2/MenuAppsGrid;

    .prologue
    .line 1269
    # getter for: Lcom/android/launcher2/MenuAppsGrid;->mStateRemoveFromSecretBox:Lcom/android/launcher2/MenuAppsGrid$StateRemoveFromSecretBox;
    invoke-static {p1}, Lcom/android/launcher2/MenuAppsGrid;->access$1700(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuAppsGrid$StateRemoveFromSecretBox;

    move-result-object v0

    return-object v0
.end method
