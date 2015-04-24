.class Lcom/android/launcher2/HomeShortcutItem;
.super Lcom/android/launcher2/HomeItem;
.source "HomeShortcutItem.java"


# static fields
.field private static final DEBUGGABLE:Z


# instance fields
.field customIcon:Z

.field iconResource:Landroid/content/Intent$ShortcutIconResource;

.field intent:Landroid/content/Intent;

.field mCustomIconBitmap:Landroid/graphics/Bitmap;

.field mIconMovieUri:Landroid/net/Uri;

.field packageName:Ljava/lang/String;

.field usingFallbackIcon:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    invoke-static {}, Lcom/android/launcher2/Utilities;->DEBUGGABLE()Z

    move-result v0

    sput-boolean v0, Lcom/android/launcher2/HomeShortcutItem;->DEBUGGABLE:Z

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lcom/android/launcher2/BaseItem$Type;->HOME_SHORTCUT:Lcom/android/launcher2/BaseItem$Type;

    invoke-direct {p0, v0}, Lcom/android/launcher2/HomeItem;-><init>(Lcom/android/launcher2/BaseItem$Type;)V

    .line 70
    return-void
.end method

.method constructor <init>(Lcom/android/launcher2/BaseItem$Type;)V
    .locals 0
    .param p1, "type"    # Lcom/android/launcher2/BaseItem$Type;

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/android/launcher2/HomeItem;-><init>(Lcom/android/launcher2/BaseItem$Type;)V

    .line 74
    return-void
.end method

.method public static dumpShortcutInfoList(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 4
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "label"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/HomeShortcutItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 201
    .local p2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher2/HomeShortcutItem;>;"
    sget-boolean v2, Lcom/android/launcher2/HomeShortcutItem;->DEBUGGABLE:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    :cond_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/HomeShortcutItem;

    .line 203
    .local v1, "info":Lcom/android/launcher2/HomeShortcutItem;
    sget-boolean v2, Lcom/android/launcher2/HomeShortcutItem;->DEBUGGABLE:Z

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "   title=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lcom/android/launcher2/HomeShortcutItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " icon="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lcom/android/launcher2/HomeShortcutItem;->mIconBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " customIcon="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, v1, Lcom/android/launcher2/HomeShortcutItem;->customIcon:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 206
    .end local v1    # "info":Lcom/android/launcher2/HomeShortcutItem;
    :cond_2
    return-void
.end method


# virtual methods
.method public getComponentName()Landroid/content/ComponentName;
    .locals 2

    .prologue
    .line 85
    const/4 v0, 0x0

    .line 86
    .local v0, "cn":Landroid/content/ComponentName;
    iget-object v1, p0, Lcom/android/launcher2/HomeShortcutItem;->intent:Landroid/content/Intent;

    if-eqz v1, :cond_0

    .line 87
    iget-object v1, p0, Lcom/android/launcher2/HomeShortcutItem;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 89
    :cond_0
    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/launcher2/HomeShortcutItem;->intent:Landroid/content/Intent;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 109
    iget-object v2, p0, Lcom/android/launcher2/HomeShortcutItem;->packageName:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v1, p0, Lcom/android/launcher2/HomeShortcutItem;->packageName:Ljava/lang/String;

    .line 122
    :cond_0
    :goto_0
    return-object v1

    .line 111
    :cond_1
    const/4 v1, 0x0

    .line 112
    .local v1, "pkgName":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/launcher2/HomeShortcutItem;->intent:Landroid/content/Intent;

    if-eqz v2, :cond_2

    .line 113
    iget-object v2, p0, Lcom/android/launcher2/HomeShortcutItem;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 114
    .local v0, "cn":Landroid/content/ComponentName;
    if-eqz v0, :cond_3

    .line 115
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 120
    .end local v0    # "cn":Landroid/content/ComponentName;
    :cond_2
    :goto_1
    if-nez v1, :cond_0

    iget-object v2, p0, Lcom/android/launcher2/HomeShortcutItem;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    if-eqz v2, :cond_0

    .line 121
    iget-object v2, p0, Lcom/android/launcher2/HomeShortcutItem;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    iget-object v1, v2, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    goto :goto_0

    .line 117
    .restart local v0    # "cn":Landroid/content/ComponentName;
    :cond_3
    iget-object v2, p0, Lcom/android/launcher2/HomeShortcutItem;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method onAddToDatabase(Landroid/content/ContentValues;)V
    .locals 4
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    const/4 v3, 0x0

    .line 157
    invoke-super {p0, p1}, Lcom/android/launcher2/HomeItem;->onAddToDatabase(Landroid/content/ContentValues;)V

    .line 159
    const-string v1, "title"

    iget-object v2, p0, Lcom/android/launcher2/HomeShortcutItem;->mTitle:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    iget-object v1, p0, Lcom/android/launcher2/HomeShortcutItem;->intent:Landroid/content/Intent;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/launcher2/HomeShortcutItem;->intent:Landroid/content/Intent;

    invoke-virtual {v1, v3}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v0

    .line 162
    .local v0, "uri":Ljava/lang/String;
    :goto_0
    const-string v1, "intent"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    iget-boolean v1, p0, Lcom/android/launcher2/HomeShortcutItem;->customIcon:Z

    if-eqz v1, :cond_3

    .line 165
    const-string v1, "iconType"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 167
    iget-object v1, p0, Lcom/android/launcher2/HomeShortcutItem;->mIconBitmap:Landroid/graphics/Bitmap;

    invoke-static {p1, v1}, Lcom/android/launcher2/HomeShortcutItem;->writeBitmap(Landroid/content/ContentValues;Landroid/graphics/Bitmap;)V

    .line 168
    sget-boolean v1, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_THEME_ENABLE:Z

    if-eqz v1, :cond_0

    .line 169
    iget-object v1, p0, Lcom/android/launcher2/HomeShortcutItem;->mCustomIconBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 170
    iget-object v1, p0, Lcom/android/launcher2/HomeShortcutItem;->mCustomIconBitmap:Landroid/graphics/Bitmap;

    invoke-static {p1, v1}, Lcom/android/launcher2/HomeShortcutItem;->writeBitmap(Landroid/content/ContentValues;Landroid/graphics/Bitmap;)V

    .line 186
    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/android/launcher2/HomeShortcutItem;->mIconMovie:Landroid/graphics/Movie;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher2/HomeShortcutItem;->mIconMovieUri:Landroid/net/Uri;

    if-eqz v1, :cond_1

    .line 187
    const-string v1, "iconMovieUri"

    iget-object v2, p0, Lcom/android/launcher2/HomeShortcutItem;->mIconMovieUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    :cond_1
    return-void

    .line 161
    .end local v0    # "uri":Ljava/lang/String;
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 174
    .restart local v0    # "uri":Ljava/lang/String;
    :cond_3
    iget-boolean v1, p0, Lcom/android/launcher2/HomeShortcutItem;->usingFallbackIcon:Z

    if-nez v1, :cond_4

    .line 175
    iget-object v1, p0, Lcom/android/launcher2/HomeShortcutItem;->mIconBitmap:Landroid/graphics/Bitmap;

    invoke-static {p1, v1}, Lcom/android/launcher2/HomeShortcutItem;->writeBitmap(Landroid/content/ContentValues;Landroid/graphics/Bitmap;)V

    .line 177
    :cond_4
    const-string v1, "iconType"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 179
    iget-object v1, p0, Lcom/android/launcher2/HomeShortcutItem;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    if-eqz v1, :cond_0

    .line 180
    const-string v1, "iconPackage"

    iget-object v2, p0, Lcom/android/launcher2/HomeShortcutItem;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    iget-object v2, v2, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    const-string v1, "iconResource"

    iget-object v2, p0, Lcom/android/launcher2/HomeShortcutItem;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    iget-object v2, v2, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method final setActivity(Landroid/content/ComponentName;I)V
    .locals 2
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "launchFlags"    # I

    .prologue
    .line 148
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/launcher2/HomeShortcutItem;->intent:Landroid/content/Intent;

    .line 149
    iget-object v0, p0, Lcom/android/launcher2/HomeShortcutItem;->intent:Landroid/content/Intent;

    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 150
    iget-object v0, p0, Lcom/android/launcher2/HomeShortcutItem;->intent:Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 151
    iget-object v0, p0, Lcom/android/launcher2/HomeShortcutItem;->intent:Landroid/content/Intent;

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 152
    return-void
.end method

.method public setCustomIcon(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "b"    # Landroid/graphics/Bitmap;

    .prologue
    .line 133
    sget-boolean v0, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_THEME_ENABLE:Z

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/android/launcher2/HomeShortcutItem;->mCustomIconBitmap:Landroid/graphics/Bitmap;

    if-eq v0, p1, :cond_0

    .line 135
    iput-object p1, p0, Lcom/android/launcher2/HomeShortcutItem;->mCustomIconBitmap:Landroid/graphics/Bitmap;

    .line 138
    :cond_0
    return-void
.end method

.method public setIcon(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "b"    # Landroid/graphics/Bitmap;

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/launcher2/HomeShortcutItem;->mIconBitmap:Landroid/graphics/Bitmap;

    if-eq v0, p1, :cond_0

    .line 127
    iput-object p1, p0, Lcom/android/launcher2/HomeShortcutItem;->mIconBitmap:Landroid/graphics/Bitmap;

    .line 128
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/HomeShortcutItem;->mIconShadowBitmap:Landroid/graphics/Bitmap;

    .line 130
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 193
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HomeShortcutItem(title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/HomeShortcutItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/launcher2/HomeShortcutItem;->mId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " container="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/launcher2/HomeShortcutItem;->container:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " screen="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher2/HomeShortcutItem;->mScreen:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " cellX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher2/HomeShortcutItem;->cellX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " cellY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher2/HomeShortcutItem;->cellY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " spanX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher2/HomeShortcutItem;->spanX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " spanY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher2/HomeShortcutItem;->spanY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " dropPos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/HomeShortcutItem;->dropPos:[I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
