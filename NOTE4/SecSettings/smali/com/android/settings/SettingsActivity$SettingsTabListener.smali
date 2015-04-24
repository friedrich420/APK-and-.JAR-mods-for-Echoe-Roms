.class Lcom/android/settings/SettingsActivity$SettingsTabListener;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/app/ActionBar$TabListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/SettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsTabListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SettingsActivity;


# direct methods
.method private constructor <init>(Lcom/android/settings/SettingsActivity;)V
    .locals 0

    .prologue
    .line 3016
    iput-object p1, p0, Lcom/android/settings/SettingsActivity$SettingsTabListener;->this$0:Lcom/android/settings/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/SettingsActivity;Lcom/android/settings/SettingsActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings/SettingsActivity;
    .param p2, "x1"    # Lcom/android/settings/SettingsActivity$1;

    .prologue
    .line 3016
    invoke-direct {p0, p1}, Lcom/android/settings/SettingsActivity$SettingsTabListener;-><init>(Lcom/android/settings/SettingsActivity;)V

    return-void
.end method


# virtual methods
.method public onTabReselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 2
    .param p1, "arg0"    # Landroid/app/ActionBar$Tab;
    .param p2, "arg1"    # Landroid/app/FragmentTransaction;

    .prologue
    .line 3063
    # getter for: Lcom/android/settings/SettingsActivity;->DBG:Z
    invoke-static {}, Lcom/android/settings/SettingsActivity;->access$2000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Settings"

    const-string v1, "onTabReselected ()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3065
    :cond_0
    return-void
.end method

.method public onTabSelected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 4
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;
    .param p2, "arg1"    # Landroid/app/FragmentTransaction;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 3019
    iget-object v0, p0, Lcom/android/settings/SettingsActivity$SettingsTabListener;->this$0:Lcom/android/settings/SettingsActivity;

    # getter for: Lcom/android/settings/SettingsActivity;->pager:Landroid/support/v4/view/ViewPager;
    invoke-static {v0}, Lcom/android/settings/SettingsActivity;->access$1500(Lcom/android/settings/SettingsActivity;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3020
    iget-object v0, p0, Lcom/android/settings/SettingsActivity$SettingsTabListener;->this$0:Lcom/android/settings/SettingsActivity;

    # getter for: Lcom/android/settings/SettingsActivity;->pager:Landroid/support/v4/view/ViewPager;
    invoke-static {v0}, Lcom/android/settings/SettingsActivity;->access$1500(Lcom/android/settings/SettingsActivity;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 3024
    :cond_0
    iget-object v0, p0, Lcom/android/settings/SettingsActivity$SettingsTabListener;->this$0:Lcom/android/settings/SettingsActivity;

    # setter for: Lcom/android/settings/SettingsActivity;->mFirstHeader:Landroid/preference/PreferenceActivity$Header;
    invoke-static {v0, v3}, Lcom/android/settings/SettingsActivity;->access$1602(Lcom/android/settings/SettingsActivity;Landroid/preference/PreferenceActivity$Header;)Landroid/preference/PreferenceActivity$Header;

    .line 3025
    iget-object v0, p0, Lcom/android/settings/SettingsActivity$SettingsTabListener;->this$0:Lcom/android/settings/SettingsActivity;

    # setter for: Lcom/android/settings/SettingsActivity;->mLastHeader:Landroid/preference/PreferenceActivity$Header;
    invoke-static {v0, v3}, Lcom/android/settings/SettingsActivity;->access$1702(Lcom/android/settings/SettingsActivity;Landroid/preference/PreferenceActivity$Header;)Landroid/preference/PreferenceActivity$Header;

    .line 3026
    iget-object v0, p0, Lcom/android/settings/SettingsActivity$SettingsTabListener;->this$0:Lcom/android/settings/SettingsActivity;

    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->invalidateHeaders()V

    .line 3028
    # getter for: Lcom/android/settings/SettingsActivity;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/settings/SettingsActivity;->access$1800()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isSupportSfinder(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/settings/Utils;->isSearchVerTwoEnable()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3029
    :cond_1
    iget-object v0, p0, Lcom/android/settings/SettingsActivity$SettingsTabListener;->this$0:Lcom/android/settings/SettingsActivity;

    # getter for: Lcom/android/settings/SettingsActivity;->mOpenSearchHierarchy:Z
    invoke-static {v0}, Lcom/android/settings/SettingsActivity;->access$1900(Lcom/android/settings/SettingsActivity;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 3030
    iget-object v0, p0, Lcom/android/settings/SettingsActivity$SettingsTabListener;->this$0:Lcom/android/settings/SettingsActivity;

    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setSelection(I)V

    .line 3043
    :cond_2
    :goto_0
    # getter for: Lcom/android/settings/SettingsActivity;->DBG:Z
    invoke-static {}, Lcom/android/settings/SettingsActivity;->access$2000()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "Settings"

    const-string v1, "onTabSelected ()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3044
    :cond_3
    return-void

    .line 3032
    :cond_4
    iget-object v0, p0, Lcom/android/settings/SettingsActivity$SettingsTabListener;->this$0:Lcom/android/settings/SettingsActivity;

    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_0
.end method

.method public onTabUnselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 3
    .param p1, "arg0"    # Landroid/app/ActionBar$Tab;
    .param p2, "arg1"    # Landroid/app/FragmentTransaction;

    .prologue
    .line 3048
    # getter for: Lcom/android/settings/SettingsActivity;->DBG:Z
    invoke-static {}, Lcom/android/settings/SettingsActivity;->access$2000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Settings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTabUnselected() mPrevSelectedActionBarIndex : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/SettingsActivity$SettingsTabListener;->this$0:Lcom/android/settings/SettingsActivity;

    iget v2, v2, Lcom/android/settings/SettingsActivity;->mPrevSelectedActionBarIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", getPosition : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3049
    :cond_0
    iget-object v0, p0, Lcom/android/settings/SettingsActivity$SettingsTabListener;->this$0:Lcom/android/settings/SettingsActivity;

    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getPosition()I

    move-result v1

    iput v1, v0, Lcom/android/settings/SettingsActivity;->mPrevSelectedActionBarIndex:I

    .line 3059
    return-void
.end method
