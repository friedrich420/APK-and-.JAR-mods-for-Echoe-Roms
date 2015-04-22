.class public Lcom/android/server/am/ActivityManagerService$GrantUri;
.super Ljava/lang/Object;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GrantUri"
.end annotation


# instance fields
.field public prefix:Z

.field public final sourceUserId:I

.field public final uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(ILandroid/net/Uri;Z)V
    .registers 4
    .param p1, "sourceUserId"    # I
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "prefix"    # Z

    .prologue
    .line 1102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1103
    iput p1, p0, sourceUserId:I

    .line 1104
    iput-object p2, p0, uri:Landroid/net/Uri;

    .line 1105
    iput-boolean p3, p0, prefix:Z

    .line 1106
    return-void
.end method

.method public static resolve(ILandroid/net/Uri;)Lcom/android/server/am/ActivityManagerService$GrantUri;
    .registers 6
    .param p0, "defaultSourceUserHandle"    # I
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 1137
    new-instance v0, Lcom/android/server/am/ActivityManagerService$GrantUri;

    invoke-static {p1, p0}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;I)I

    move-result v1

    invoke-static {p1}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, <init>(ILandroid/net/Uri;Z)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 1115
    instance-of v2, p1, Lcom/android/server/am/ActivityManagerService$GrantUri;

    if-eqz v2, :cond_1f

    move-object v0, p1

    .line 1116
    check-cast v0, Lcom/android/server/am/ActivityManagerService$GrantUri;

    .line 1117
    .local v0, "other":Lcom/android/server/am/ActivityManagerService$GrantUri;
    iget-object v2, p0, uri:Landroid/net/Uri;

    iget-object v3, v0, uri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    iget v2, p0, sourceUserId:I

    iget v3, v0, sourceUserId:I

    if-ne v2, v3, :cond_1f

    iget-boolean v2, p0, prefix:Z

    iget-boolean v3, v0, prefix:Z

    if-ne v2, v3, :cond_1f

    const/4 v1, 0x1

    .line 1120
    .end local v0    # "other":Lcom/android/server/am/ActivityManagerService$GrantUri;
    :cond_1f
    return v1
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 1110
    invoke-virtual {p0}, toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toSafeString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 1131
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, sourceUserId:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " @ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, uri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toSafeString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1132
    .local v0, "result":Ljava/lang/String;
    iget-boolean v1, p0, prefix:Z

    if-eqz v1, :cond_3a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " [prefix]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1133
    :cond_3a
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 1125
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, sourceUserId:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " @ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, uri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1126
    .local v0, "result":Ljava/lang/String;
    iget-boolean v1, p0, prefix:Z

    if-eqz v1, :cond_3a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " [prefix]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1127
    :cond_3a
    return-object v0
.end method
