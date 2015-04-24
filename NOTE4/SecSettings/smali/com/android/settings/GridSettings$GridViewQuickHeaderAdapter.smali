.class public Lcom/android/settings/GridSettings$GridViewQuickHeaderAdapter;
.super Landroid/widget/BaseAdapter;
.source "GridSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/GridSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GridViewQuickHeaderAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/GridSettings$GridViewQuickHeaderAdapter$HeaderViewHolder;
    }
.end annotation


# instance fields
.field public mHeadersList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;"
        }
    .end annotation
.end field

.field private mInflater:Landroid/view/LayoutInflater;

.field private mOnGridItemSelectedListener:Lcom/android/settings/grid/GridViewAdapter$OnGridItemListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/android/settings/grid/GridViewAdapter$OnGridItemListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "listner"    # Lcom/android/settings/grid/GridViewAdapter$OnGridItemListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;",
            "Lcom/android/settings/grid/GridViewAdapter$OnGridItemListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 3818
    .local p2, "headers":Ljava/util/List;, "Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 3819
    iput-object p2, p0, Lcom/android/settings/GridSettings$GridViewQuickHeaderAdapter;->mHeadersList:Ljava/util/List;

    .line 3820
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/settings/GridSettings$GridViewQuickHeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 3821
    iput-object p3, p0, Lcom/android/settings/GridSettings$GridViewQuickHeaderAdapter;->mOnGridItemSelectedListener:Lcom/android/settings/grid/GridViewAdapter$OnGridItemListener;

    .line 3822
    return-void
.end method

.method private updateAddQuickSettingsView(Landroid/preference/PreferenceActivity$Header;Landroid/view/View;)V
    .locals 6
    .param p1, "header"    # Landroid/preference/PreferenceActivity$Header;
    .param p2, "v"    # Landroid/view/View;

    .prologue
    .line 3899
    iget-wide v2, p1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v4, 0x7f10000b

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 3900
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    # getter for: Lcom/android/settings/GridSettings;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/settings/GridSettings;->access$200()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a003c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    # getter for: Lcom/android/settings/GridSettings;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/settings/GridSettings;->access$200()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0a07

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3902
    .local v0, "s":Ljava/lang/String;
    invoke-virtual {p2, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 3905
    .end local v0    # "s":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private updateCommonHeaderView(Landroid/preference/PreferenceActivity$Header;Lcom/android/settings/GridSettings$GridViewQuickHeaderAdapter$HeaderViewHolder;)V
    .locals 4
    .param p1, "header"    # Landroid/preference/PreferenceActivity$Header;
    .param p2, "holder"    # Lcom/android/settings/GridSettings$GridViewQuickHeaderAdapter$HeaderViewHolder;

    .prologue
    .line 3892
    iget-wide v0, p1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f1006a9

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 3895
    :cond_0
    iget-object v0, p2, Lcom/android/settings/GridSettings$GridViewQuickHeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    # getter for: Lcom/android/settings/GridSettings;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/settings/GridSettings;->access$200()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/preference/PreferenceActivity$Header;->getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3896
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 2

    .prologue
    .line 3827
    const/4 v0, 0x0

    .line 3828
    .local v0, "count":I
    iget-object v1, p0, Lcom/android/settings/GridSettings$GridViewQuickHeaderAdapter;->mHeadersList:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 3829
    iget-object v1, p0, Lcom/android/settings/GridSettings$GridViewQuickHeaderAdapter;->mHeadersList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 3830
    :cond_0
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 3836
    iget-object v0, p0, Lcom/android/settings/GridSettings$GridViewQuickHeaderAdapter;->mHeadersList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 3842
    iget-object v0, p0, Lcom/android/settings/GridSettings$GridViewQuickHeaderAdapter;->mHeadersList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    iget-wide v0, v0, Landroid/preference/PreferenceActivity$Header;->id:J

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 13
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 3847
    if-nez p2, :cond_0

    const/4 v5, 0x1

    .line 3848
    .local v5, "isNull":Z
    :goto_0
    const-string v9, "GridSettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "position grid: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " / isNull: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3849
    const/4 v7, 0x0

    .line 3850
    .local v7, "v":Landroid/view/View;
    const/4 v4, 0x0

    .line 3852
    .local v4, "holder":Lcom/android/settings/GridSettings$GridViewQuickHeaderAdapter$HeaderViewHolder;
    iget-object v9, p0, Lcom/android/settings/GridSettings$GridViewQuickHeaderAdapter;->mHeadersList:Ljava/util/List;

    if-nez v9, :cond_1

    .line 3853
    const/4 v9, 0x0

    .line 3888
    :goto_1
    return-object v9

    .line 3847
    .end local v4    # "holder":Lcom/android/settings/GridSettings$GridViewQuickHeaderAdapter$HeaderViewHolder;
    .end local v5    # "isNull":Z
    .end local v7    # "v":Landroid/view/View;
    :cond_0
    const/4 v5, 0x0

    goto :goto_0

    .line 3855
    .restart local v4    # "holder":Lcom/android/settings/GridSettings$GridViewQuickHeaderAdapter$HeaderViewHolder;
    .restart local v5    # "isNull":Z
    .restart local v7    # "v":Landroid/view/View;
    :cond_1
    if-nez p2, :cond_3

    .line 3856
    new-instance v4, Lcom/android/settings/GridSettings$GridViewQuickHeaderAdapter$HeaderViewHolder;

    .end local v4    # "holder":Lcom/android/settings/GridSettings$GridViewQuickHeaderAdapter$HeaderViewHolder;
    const/4 v9, 0x0

    invoke-direct {v4, v9}, Lcom/android/settings/GridSettings$GridViewQuickHeaderAdapter$HeaderViewHolder;-><init>(Lcom/android/settings/GridSettings$1;)V

    .line 3857
    .restart local v4    # "holder":Lcom/android/settings/GridSettings$GridViewQuickHeaderAdapter$HeaderViewHolder;
    iget-object v9, p0, Lcom/android/settings/GridSettings$GridViewQuickHeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v10, 0x7f0400d2

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 3858
    const v9, 0x7f100086

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, v4, Lcom/android/settings/GridSettings$GridViewQuickHeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    .line 3859
    const v9, 0x7f100085

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/android/settings/ToggleImageView;

    iput-object v9, v4, Lcom/android/settings/GridSettings$GridViewQuickHeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    .line 3860
    iput p1, v4, Lcom/android/settings/GridSettings$GridViewQuickHeaderAdapter$HeaderViewHolder;->position:I

    .line 3861
    invoke-virtual {v7, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 3867
    :goto_2
    iget-object v9, p0, Lcom/android/settings/GridSettings$GridViewQuickHeaderAdapter;->mHeadersList:Ljava/util/List;

    invoke-interface {v9, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/preference/PreferenceActivity$Header;

    invoke-direct {p0, v9, v4}, Lcom/android/settings/GridSettings$GridViewQuickHeaderAdapter;->updateCommonHeaderView(Landroid/preference/PreferenceActivity$Header;Lcom/android/settings/GridSettings$GridViewQuickHeaderAdapter$HeaderViewHolder;)V

    .line 3868
    iget-object v10, v4, Lcom/android/settings/GridSettings$GridViewQuickHeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    iget-object v9, p0, Lcom/android/settings/GridSettings$GridViewQuickHeaderAdapter;->mHeadersList:Ljava/util/List;

    invoke-interface {v9, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/preference/PreferenceActivity$Header;

    iget v9, v9, Landroid/preference/PreferenceActivity$Header;->iconRes:I

    invoke-virtual {v10, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3869
    iget-object v9, v4, Lcom/android/settings/GridSettings$GridViewQuickHeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 3870
    invoke-virtual {v7, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3871
    iget-object v9, p0, Lcom/android/settings/GridSettings$GridViewQuickHeaderAdapter;->mHeadersList:Ljava/util/List;

    invoke-interface {v9, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/preference/PreferenceActivity$Header;

    invoke-direct {p0, v9, v7}, Lcom/android/settings/GridSettings$GridViewQuickHeaderAdapter;->updateAddQuickSettingsView(Landroid/preference/PreferenceActivity$Header;Landroid/view/View;)V

    .line 3873
    # getter for: Lcom/android/settings/GridSettings;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/settings/GridSettings;->access$200()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0f02a9

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    .line 3874
    .local v8, "width":I
    # getter for: Lcom/android/settings/GridSettings;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/settings/GridSettings;->access$200()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0f02a8

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 3876
    .local v3, "height":I
    div-int/lit8 v1, v8, 0x2

    .line 3877
    .local v1, "centerX":I
    div-int/lit8 v2, v3, 0x2

    .line 3879
    .local v2, "centerY":I
    # getter for: Lcom/android/settings/GridSettings;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/settings/GridSettings;->access$200()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0f02a7

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 3881
    .local v6, "padding":I
    invoke-virtual {v7}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 3882
    .local v0, "backgroundDrawable":Landroid/graphics/drawable/Drawable;
    instance-of v9, v0, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v9, :cond_2

    .line 3884
    sub-int v9, v1, v6

    sub-int v10, v2, v6

    add-int v11, v1, v6

    add-int v12, v2, v6

    invoke-virtual {v0, v9, v10, v11, v12}, Landroid/graphics/drawable/Drawable;->setHotspotBounds(IIII)V

    :cond_2
    move-object v9, v7

    .line 3888
    goto/16 :goto_1

    .line 3863
    .end local v0    # "backgroundDrawable":Landroid/graphics/drawable/Drawable;
    .end local v1    # "centerX":I
    .end local v2    # "centerY":I
    .end local v3    # "height":I
    .end local v6    # "padding":I
    .end local v8    # "width":I
    :cond_3
    move-object v7, p2

    .line 3864
    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "holder":Lcom/android/settings/GridSettings$GridViewQuickHeaderAdapter$HeaderViewHolder;
    check-cast v4, Lcom/android/settings/GridSettings$GridViewQuickHeaderAdapter$HeaderViewHolder;

    .restart local v4    # "holder":Lcom/android/settings/GridSettings$GridViewQuickHeaderAdapter$HeaderViewHolder;
    goto/16 :goto_2
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 3916
    iget-object v1, p0, Lcom/android/settings/GridSettings$GridViewQuickHeaderAdapter;->mOnGridItemSelectedListener:Lcom/android/settings/grid/GridViewAdapter$OnGridItemListener;

    if-eqz v1, :cond_0

    .line 3917
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/GridSettings$GridViewQuickHeaderAdapter$HeaderViewHolder;

    .line 3918
    .local v0, "holder":Lcom/android/settings/GridSettings$GridViewQuickHeaderAdapter$HeaderViewHolder;
    const-string v1, "GridViewAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "holder.position: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/android/settings/GridSettings$GridViewQuickHeaderAdapter$HeaderViewHolder;->position:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3919
    iget-object v2, p0, Lcom/android/settings/GridSettings$GridViewQuickHeaderAdapter;->mOnGridItemSelectedListener:Lcom/android/settings/grid/GridViewAdapter$OnGridItemListener;

    iget-object v1, p0, Lcom/android/settings/GridSettings$GridViewQuickHeaderAdapter;->mHeadersList:Ljava/util/List;

    iget v3, v0, Lcom/android/settings/GridSettings$GridViewQuickHeaderAdapter$HeaderViewHolder;->position:I

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceActivity$Header;

    iget v3, v0, Lcom/android/settings/GridSettings$GridViewQuickHeaderAdapter$HeaderViewHolder;->position:I

    invoke-interface {v2, v1, v3}, Lcom/android/settings/grid/GridViewAdapter$OnGridItemListener;->onGridItemSelected(Landroid/preference/PreferenceActivity$Header;I)V

    .line 3924
    .end local v0    # "holder":Lcom/android/settings/GridSettings$GridViewQuickHeaderAdapter$HeaderViewHolder;
    :goto_0
    return-void

    .line 3922
    :cond_0
    const-string v1, "GridViewAdapter"

    const-string v2, "mOnGridItemSelectedListener is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
