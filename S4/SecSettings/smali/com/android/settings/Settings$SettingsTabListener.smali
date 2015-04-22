.class Lcom/android/settings/Settings$SettingsTabListener;
.super Ljava/lang/Object;
.source "Settings.java"

# interfaces
.implements Landroid/app/ActionBar$TabListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsTabListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/Settings;


# direct methods
.method private constructor <init>(Lcom/android/settings/Settings;)V
    .locals 0

    .prologue
    .line 1618
    iput-object p1, p0, Lcom/android/settings/Settings$SettingsTabListener;->this$0:Lcom/android/settings/Settings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/Settings;Lcom/android/settings/Settings$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings/Settings;
    .param p2, "x1"    # Lcom/android/settings/Settings$1;

    .prologue
    .line 1618
    invoke-direct {p0, p1}, Lcom/android/settings/Settings$SettingsTabListener;-><init>(Lcom/android/settings/Settings;)V

    return-void
.end method


# virtual methods
.method public onTabReselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 2
    .param p1, "arg0"    # Landroid/app/ActionBar$Tab;
    .param p2, "arg1"    # Landroid/app/FragmentTransaction;

    .prologue
    .line 1665
    # getter for: Lcom/android/settings/Settings;->DBG:Z
    invoke-static {}, Lcom/android/settings/Settings;->access$1700()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Settings"

    const-string v1, "onTabReselected ()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1667
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

    .line 1621
    iget-object v0, p0, Lcom/android/settings/Settings$SettingsTabListener;->this$0:Lcom/android/settings/Settings;

    # getter for: Lcom/android/settings/Settings;->pager:Landroid/support/v4/view/ViewPager;
    invoke-static {v0}, Lcom/android/settings/Settings;->access$1200(Lcom/android/settings/Settings;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1622
    iget-object v0, p0, Lcom/android/settings/Settings$SettingsTabListener;->this$0:Lcom/android/settings/Settings;

    # getter for: Lcom/android/settings/Settings;->pager:Landroid/support/v4/view/ViewPager;
    invoke-static {v0}, Lcom/android/settings/Settings;->access$1200(Lcom/android/settings/Settings;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 1626
    :cond_0
    iget-object v0, p0, Lcom/android/settings/Settings$SettingsTabListener;->this$0:Lcom/android/settings/Settings;

    # setter for: Lcom/android/settings/Settings;->mFirstHeader:Landroid/preference/PreferenceActivity$Header;
    invoke-static {v0, v3}, Lcom/android/settings/Settings;->access$1302(Lcom/android/settings/Settings;Landroid/preference/PreferenceActivity$Header;)Landroid/preference/PreferenceActivity$Header;

    .line 1627
    iget-object v0, p0, Lcom/android/settings/Settings$SettingsTabListener;->this$0:Lcom/android/settings/Settings;

    # setter for: Lcom/android/settings/Settings;->mLastHeader:Landroid/preference/PreferenceActivity$Header;
    invoke-static {v0, v3}, Lcom/android/settings/Settings;->access$1402(Lcom/android/settings/Settings;Landroid/preference/PreferenceActivity$Header;)Landroid/preference/PreferenceActivity$Header;

    .line 1628
    iget-object v0, p0, Lcom/android/settings/Settings$SettingsTabListener;->this$0:Lcom/android/settings/Settings;

    invoke-virtual {v0}, Lcom/android/settings/Settings;->invalidateHeaders()V

    .line 1630
    # getter for: Lcom/android/settings/Settings;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/settings/Settings;->access$1500()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isSupportSfinder(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/settings/Utils;->isSearchVerTwoEnable()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1631
    :cond_1
    iget-object v0, p0, Lcom/android/settings/Settings$SettingsTabListener;->this$0:Lcom/android/settings/Settings;

    # getter for: Lcom/android/settings/Settings;->mOpenSearchHierarchy:Z
    invoke-static {v0}, Lcom/android/settings/Settings;->access$1600(Lcom/android/settings/Settings;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1632
    iget-object v0, p0, Lcom/android/settings/Settings$SettingsTabListener;->this$0:Lcom/android/settings/Settings;

    invoke-virtual {v0}, Lcom/android/settings/Settings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setSelection(I)V

    .line 1645
    :cond_2
    :goto_0
    # getter for: Lcom/android/settings/Settings;->DBG:Z
    invoke-static {}, Lcom/android/settings/Settings;->access$1700()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "Settings"

    const-string v1, "onTabSelected ()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1646
    :cond_3
    return-void

    .line 1634
    :cond_4
    iget-object v0, p0, Lcom/android/settings/Settings$SettingsTabListener;->this$0:Lcom/android/settings/Settings;

    invoke-virtual {v0}, Lcom/android/settings/Settings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_0
.end method

.method public onTabUnselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 3
    .param p1, "arg0"    # Landroid/app/ActionBar$Tab;
    .param p2, "arg1"    # Landroid/app/FragmentTransaction;

    .prologue
    .line 1650
    # getter for: Lcom/android/settings/Settings;->DBG:Z
    invoke-static {}, Lcom/android/settings/Settings;->access$1700()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Settings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTabUnselected() mPrevSelectedActionBarIndex : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/Settings$SettingsTabListener;->this$0:Lcom/android/settings/Settings;

    iget v2, v2, Lcom/android/settings/Settings;->mPrevSelectedActionBarIndex:I

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

    .line 1651
    :cond_0
    iget-object v0, p0, Lcom/android/settings/Settings$SettingsTabListener;->this$0:Lcom/android/settings/Settings;

    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getPosition()I

    move-result v1

    iput v1, v0, Lcom/android/settings/Settings;->mPrevSelectedActionBarIndex:I

    .line 1661
    return-void
.end method
