.class Lcom/android/launcher2/Launcher$2;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Lcom/android/launcher2/CellLayoutChildren$BaseItemIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/Launcher;->buildWidgetMap(Ljava/util/HashMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/launcher2/CellLayoutChildren$BaseItemIterator",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/Launcher;

.field final synthetic val$map:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Lcom/android/launcher2/Launcher;Ljava/util/HashMap;)V
    .locals 0

    .prologue
    .line 1093
    iput-object p1, p0, Lcom/android/launcher2/Launcher$2;->this$0:Lcom/android/launcher2/Launcher;

    iput-object p2, p0, Lcom/android/launcher2/Launcher$2;->val$map:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public iterate(Lcom/android/launcher2/BaseItem;Ljava/lang/Integer;)Z
    .locals 2
    .param p1, "item"    # Lcom/android/launcher2/BaseItem;
    .param p2, "closure"    # Ljava/lang/Integer;

    .prologue
    .line 1096
    invoke-static {p1}, Lcom/android/launcher2/BaseItem;->isWidget(Lcom/android/launcher2/BaseItem;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1097
    invoke-virtual {p1}, Lcom/android/launcher2/BaseItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    .line 1098
    .local v0, "compName":Landroid/content/ComponentName;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/Launcher$2;->val$map:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1099
    iget-object v1, p0, Lcom/android/launcher2/Launcher$2;->val$map:Ljava/util/HashMap;

    invoke-virtual {v1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1102
    .end local v0    # "compName":Landroid/content/ComponentName;
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method public bridge synthetic iterate(Lcom/android/launcher2/BaseItem;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Lcom/android/launcher2/BaseItem;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 1093
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher2/Launcher$2;->iterate(Lcom/android/launcher2/BaseItem;Ljava/lang/Integer;)Z

    move-result v0

    return v0
.end method
