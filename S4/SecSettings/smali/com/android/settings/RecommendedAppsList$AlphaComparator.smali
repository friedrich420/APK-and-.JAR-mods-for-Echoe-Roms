.class Lcom/android/settings/RecommendedAppsList$AlphaComparator;
.super Ljava/lang/Object;
.source "RecommendedAppsList.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/RecommendedAppsList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AlphaComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/content/pm/ActivityInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private final sCollator:Ljava/text/Collator;

.field final synthetic this$0:Lcom/android/settings/RecommendedAppsList;


# direct methods
.method constructor <init>(Lcom/android/settings/RecommendedAppsList;)V
    .locals 1

    .prologue
    .line 430
    iput-object p1, p0, Lcom/android/settings/RecommendedAppsList$AlphaComparator;->this$0:Lcom/android/settings/RecommendedAppsList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 431
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/RecommendedAppsList$AlphaComparator;->sCollator:Ljava/text/Collator;

    return-void
.end method


# virtual methods
.method public compare(Landroid/content/pm/ActivityInfo;Landroid/content/pm/ActivityInfo;)I
    .locals 3
    .param p1, "a"    # Landroid/content/pm/ActivityInfo;
    .param p2, "b"    # Landroid/content/pm/ActivityInfo;

    .prologue
    .line 436
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/settings/RecommendedAppsList$AlphaComparator;->this$0:Lcom/android/settings/RecommendedAppsList;

    # getter for: Lcom/android/settings/RecommendedAppsList;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v0}, Lcom/android/settings/RecommendedAppsList;->access$500(Lcom/android/settings/RecommendedAppsList;)Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, -0x1

    .line 439
    :goto_0
    return v0

    .line 437
    :cond_1
    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/android/settings/RecommendedAppsList$AlphaComparator;->this$0:Lcom/android/settings/RecommendedAppsList;

    # getter for: Lcom/android/settings/RecommendedAppsList;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v0}, Lcom/android/settings/RecommendedAppsList;->access$500(Lcom/android/settings/RecommendedAppsList;)Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 439
    :cond_3
    iget-object v0, p0, Lcom/android/settings/RecommendedAppsList$AlphaComparator;->sCollator:Ljava/text/Collator;

    iget-object v1, p0, Lcom/android/settings/RecommendedAppsList$AlphaComparator;->this$0:Lcom/android/settings/RecommendedAppsList;

    # getter for: Lcom/android/settings/RecommendedAppsList;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v1}, Lcom/android/settings/RecommendedAppsList;->access$500(Lcom/android/settings/RecommendedAppsList;)Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/RecommendedAppsList$AlphaComparator;->this$0:Lcom/android/settings/RecommendedAppsList;

    # getter for: Lcom/android/settings/RecommendedAppsList;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v2}, Lcom/android/settings/RecommendedAppsList;->access$500(Lcom/android/settings/RecommendedAppsList;)Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 430
    check-cast p1, Landroid/content/pm/ActivityInfo;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Landroid/content/pm/ActivityInfo;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/RecommendedAppsList$AlphaComparator;->compare(Landroid/content/pm/ActivityInfo;Landroid/content/pm/ActivityInfo;)I

    move-result v0

    return v0
.end method
