.class final Lcom/android/launcher2/AppInfoDrawable$1;
.super Landroid/util/Property;
.source "AppInfoDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/AppInfoDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Property",
        "<",
        "Lcom/android/launcher2/AppInfoDrawable;",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0
    .param p2, "x1"    # Ljava/lang/String;

    .prologue
    .line 71
    .local p1, "x0":Ljava/lang/Class;, "Ljava/lang/Class<Ljava/lang/Float;>;"
    invoke-direct {p0, p1, p2}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Lcom/android/launcher2/AppInfoDrawable;)Ljava/lang/Float;
    .locals 1
    .param p1, "object"    # Lcom/android/launcher2/AppInfoDrawable;

    .prologue
    .line 73
    invoke-virtual {p1}, Lcom/android/launcher2/AppInfoDrawable;->getScaleFactor()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 71
    check-cast p1, Lcom/android/launcher2/AppInfoDrawable;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/launcher2/AppInfoDrawable$1;->get(Lcom/android/launcher2/AppInfoDrawable;)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public set(Lcom/android/launcher2/AppInfoDrawable;Ljava/lang/Float;)V
    .locals 1
    .param p1, "object"    # Lcom/android/launcher2/AppInfoDrawable;
    .param p2, "value"    # Ljava/lang/Float;

    .prologue
    .line 72
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/launcher2/AppInfoDrawable;->setScaleFactor(F)V

    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 71
    check-cast p1, Lcom/android/launcher2/AppInfoDrawable;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Ljava/lang/Float;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher2/AppInfoDrawable$1;->set(Lcom/android/launcher2/AppInfoDrawable;Ljava/lang/Float;)V

    return-void
.end method
