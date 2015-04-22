.class public Landroid/content/pm/PackageUserState;
.super Ljava/lang/Object;
.source "PackageUserState.java"


# instance fields
.field public blockUninstall:Z

.field public disabledComponents:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public enabled:I

.field public enabledComponents:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public hidden:Z

.field public installed:Z

.field public lastDisableAppCaller:Ljava/lang/String;

.field public notLaunched:Z

.field public stopped:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, 0x1

    iput-boolean v0, p0, installed:Z

    .line 42
    iput-boolean v1, p0, hidden:Z

    .line 43
    iput v1, p0, enabled:I

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/pm/PackageUserState;)V
    .registers 5
    .param p1, "o"    # Landroid/content/pm/PackageUserState;

    .prologue
    const/4 v1, 0x0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iget-boolean v0, p1, installed:Z

    iput-boolean v0, p0, installed:Z

    .line 48
    iget-boolean v0, p1, stopped:Z

    iput-boolean v0, p0, stopped:Z

    .line 49
    iget-boolean v0, p1, notLaunched:Z

    iput-boolean v0, p0, notLaunched:Z

    .line 50
    iget v0, p1, enabled:I

    iput v0, p0, enabled:I

    .line 51
    iget-boolean v0, p1, hidden:Z

    iput-boolean v0, p0, hidden:Z

    .line 52
    iget-object v0, p1, lastDisableAppCaller:Ljava/lang/String;

    iput-object v0, p0, lastDisableAppCaller:Ljava/lang/String;

    .line 53
    iget-object v0, p1, disabledComponents:Ljava/util/HashSet;

    if-eqz v0, :cond_3b

    new-instance v0, Ljava/util/HashSet;

    iget-object v2, p1, disabledComponents:Ljava/util/HashSet;

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    :goto_27
    iput-object v0, p0, disabledComponents:Ljava/util/HashSet;

    .line 55
    iget-object v0, p1, enabledComponents:Ljava/util/HashSet;

    if-eqz v0, :cond_34

    new-instance v1, Ljava/util/HashSet;

    iget-object v0, p1, enabledComponents:Ljava/util/HashSet;

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    :cond_34
    iput-object v1, p0, enabledComponents:Ljava/util/HashSet;

    .line 57
    iget-boolean v0, p1, blockUninstall:Z

    iput-boolean v0, p0, blockUninstall:Z

    .line 58
    return-void

    :cond_3b
    move-object v0, v1

    .line 53
    goto :goto_27
.end method
