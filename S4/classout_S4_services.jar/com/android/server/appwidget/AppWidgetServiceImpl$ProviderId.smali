.class final Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;
.super Ljava/lang/Object;
.source "AppWidgetServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/appwidget/AppWidgetServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ProviderId"
.end annotation


# instance fields
.field final componentName:Landroid/content/ComponentName;

.field final uid:I


# direct methods
.method private constructor <init>(ILandroid/content/ComponentName;)V
    .registers 3
    .param p1, "uid"    # I
    .param p2, "componentName"    # Landroid/content/ComponentName;

    .prologue
    .line 3437
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3438
    iput p1, p0, uid:I

    .line 3439
    iput-object p2, p0, componentName:Landroid/content/ComponentName;

    .line 3440
    return-void
.end method

.method synthetic constructor <init>(ILandroid/content/ComponentName;Lcom/android/server/appwidget/AppWidgetServiceImpl$1;)V
    .registers 4
    .param p1, "x0"    # I
    .param p2, "x1"    # Landroid/content/ComponentName;
    .param p3, "x2"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$1;

    .prologue
    .line 3433
    invoke-direct {p0, p1, p2}, <init>(ILandroid/content/ComponentName;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3444
    if-ne p0, p1, :cond_5

    .line 3464
    :cond_4
    :goto_4
    return v1

    .line 3447
    :cond_5
    if-nez p1, :cond_9

    move v1, v2

    .line 3448
    goto :goto_4

    .line 3450
    :cond_9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_15

    move v1, v2

    .line 3451
    goto :goto_4

    :cond_15
    move-object v0, p1

    .line 3453
    check-cast v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    .line 3454
    .local v0, "other":Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;
    iget v3, p0, uid:I

    iget v4, v0, uid:I

    if-eq v3, v4, :cond_20

    move v1, v2

    .line 3455
    goto :goto_4

    .line 3457
    :cond_20
    iget-object v3, p0, componentName:Landroid/content/ComponentName;

    if-nez v3, :cond_2a

    .line 3458
    iget-object v3, v0, componentName:Landroid/content/ComponentName;

    if-eqz v3, :cond_4

    move v1, v2

    .line 3459
    goto :goto_4

    .line 3461
    :cond_2a
    iget-object v3, p0, componentName:Landroid/content/ComponentName;

    iget-object v4, v0, componentName:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    move v1, v2

    .line 3462
    goto :goto_4
.end method

.method public hashCode()I
    .registers 4

    .prologue
    .line 3469
    iget v0, p0, uid:I

    .line 3470
    .local v0, "result":I
    mul-int/lit8 v2, v0, 0x1f

    iget-object v1, p0, componentName:Landroid/content/ComponentName;

    if-eqz v1, :cond_11

    iget-object v1, p0, componentName:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->hashCode()I

    move-result v1

    :goto_e
    add-int v0, v2, v1

    .line 3472
    return v0

    .line 3470
    :cond_11
    const/4 v1, 0x0

    goto :goto_e
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 3477
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ProviderId{user:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", app:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", cmp:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, componentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
