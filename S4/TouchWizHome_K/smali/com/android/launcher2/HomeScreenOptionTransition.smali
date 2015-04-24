.class public Lcom/android/launcher2/HomeScreenOptionTransition;
.super Landroid/app/Activity;
.source "HomeScreenOptionTransition.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field mAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mListView:Landroid/widget/ListView;

.field mTransitionEffectPreviewEffect1:Landroid/net/Uri;

.field mTransitionEffectPreviewEffect2:Landroid/net/Uri;

.field mTransitionEffectPreviewNone:Landroid/net/Uri;

.field mVideoView:Landroid/widget/VideoView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 35
    const-string v0, "android.resource://com.sec.android.app.launcher/2131230721"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/HomeScreenOptionTransition;->mTransitionEffectPreviewNone:Landroid/net/Uri;

    .line 36
    const-string v0, "android.resource://com.sec.android.app.launcher/2131230720"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/HomeScreenOptionTransition;->mTransitionEffectPreviewEffect1:Landroid/net/Uri;

    .line 37
    const-string v0, "android.resource://com.sec.android.app.launcher/2131230722"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/HomeScreenOptionTransition;->mTransitionEffectPreviewEffect2:Landroid/net/Uri;

    return-void
.end method

.method private playVideo()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 206
    iget-object v0, p0, Lcom/android/launcher2/HomeScreenOptionTransition;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setFocusable(Z)V

    .line 207
    iget-object v0, p0, Lcom/android/launcher2/HomeScreenOptionTransition;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setFocusableInTouchMode(Z)V

    .line 208
    iget-object v0, p0, Lcom/android/launcher2/HomeScreenOptionTransition;->mVideoView:Landroid/widget/VideoView;

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/android/launcher2/HomeScreenOptionTransition;->mVideoView:Landroid/widget/VideoView;

    new-instance v1, Lcom/android/launcher2/HomeScreenOptionTransition$1;

    invoke-direct {v1, p0}, Lcom/android/launcher2/HomeScreenOptionTransition$1;-><init>(Lcom/android/launcher2/HomeScreenOptionTransition;)V

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 225
    :cond_0
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/launcher2/HomeScreenOptionTransition;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/HomeScreenOptionTransition;->setResult(I)V

    .line 103
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 105
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 6
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v5, 0x1

    .line 164
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 166
    const v2, 0x7f030026

    invoke-virtual {p0, v2}, Lcom/android/launcher2/HomeScreenOptionTransition;->setContentView(I)V

    .line 168
    invoke-virtual {p0}, Lcom/android/launcher2/HomeScreenOptionTransition;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 169
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 170
    invoke-virtual {p0}, Lcom/android/launcher2/HomeScreenOptionTransition;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f10004d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 171
    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 174
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/HomeScreenOptionTransition;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 175
    .local v1, "resources":Landroid/content/res/Resources;
    const v2, 0x7f0f005d

    invoke-virtual {p0, v2}, Lcom/android/launcher2/HomeScreenOptionTransition;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/android/launcher2/HomeScreenOptionTransition;->mListView:Landroid/widget/ListView;

    .line 176
    const v2, 0x7f0f005c

    invoke-virtual {p0, v2}, Lcom/android/launcher2/HomeScreenOptionTransition;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/VideoView;

    iput-object v2, p0, Lcom/android/launcher2/HomeScreenOptionTransition;->mVideoView:Landroid/widget/VideoView;

    .line 177
    iget-object v2, p0, Lcom/android/launcher2/HomeScreenOptionTransition;->mVideoView:Landroid/widget/VideoView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/VideoView;->setStopMusic(Z)V

    .line 178
    iget-object v2, p0, Lcom/android/launcher2/HomeScreenOptionTransition;->mVideoView:Landroid/widget/VideoView;

    const v3, 0x7f020143

    invoke-virtual {v2, v3}, Landroid/widget/VideoView;->setBackgroundResource(I)V

    .line 180
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/launcher2/HomeScreenOptionTransition;->mItems:Ljava/util/ArrayList;

    .line 181
    iget-object v2, p0, Lcom/android/launcher2/HomeScreenOptionTransition;->mItems:Ljava/util/ArrayList;

    const v3, 0x7f10004e

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 182
    iget-object v2, p0, Lcom/android/launcher2/HomeScreenOptionTransition;->mItems:Ljava/util/ArrayList;

    const v3, 0x7f10004f

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 183
    iget-object v2, p0, Lcom/android/launcher2/HomeScreenOptionTransition;->mItems:Ljava/util/ArrayList;

    const v3, 0x7f100050

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 184
    new-instance v2, Landroid/widget/ArrayAdapter;

    const v3, 0x7f03002c

    iget-object v4, p0, Lcom/android/launcher2/HomeScreenOptionTransition;->mItems:Ljava/util/ArrayList;

    invoke-direct {v2, p0, v3, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v2, p0, Lcom/android/launcher2/HomeScreenOptionTransition;->mAdapter:Landroid/widget/ArrayAdapter;

    .line 186
    iget-object v2, p0, Lcom/android/launcher2/HomeScreenOptionTransition;->mListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/android/launcher2/HomeScreenOptionTransition;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 187
    iget-object v2, p0, Lcom/android/launcher2/HomeScreenOptionTransition;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v5}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 188
    iget-object v2, p0, Lcom/android/launcher2/HomeScreenOptionTransition;->mListView:Landroid/widget/ListView;

    sget v3, Lcom/android/launcher2/Launcher;->sWhichTransitionEffect:I

    invoke-virtual {v2, v3, v5}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 189
    iget-object v2, p0, Lcom/android/launcher2/HomeScreenOptionTransition;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 191
    sget v2, Lcom/android/launcher2/Launcher;->sWhichTransitionEffect:I

    packed-switch v2, :pswitch_data_0

    .line 202
    :goto_0
    invoke-direct {p0}, Lcom/android/launcher2/HomeScreenOptionTransition;->playVideo()V

    .line 204
    return-void

    .line 193
    :pswitch_0
    iget-object v2, p0, Lcom/android/launcher2/HomeScreenOptionTransition;->mVideoView:Landroid/widget/VideoView;

    iget-object v3, p0, Lcom/android/launcher2/HomeScreenOptionTransition;->mTransitionEffectPreviewNone:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    goto :goto_0

    .line 196
    :pswitch_1
    iget-object v2, p0, Lcom/android/launcher2/HomeScreenOptionTransition;->mVideoView:Landroid/widget/VideoView;

    iget-object v3, p0, Lcom/android/launcher2/HomeScreenOptionTransition;->mTransitionEffectPreviewEffect1:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    goto :goto_0

    .line 199
    :pswitch_2
    iget-object v2, p0, Lcom/android/launcher2/HomeScreenOptionTransition;->mVideoView:Landroid/widget/VideoView;

    iget-object v3, p0, Lcom/android/launcher2/HomeScreenOptionTransition;->mTransitionEffectPreviewEffect2:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    goto :goto_0

    .line 191
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x1

    .line 41
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 43
    invoke-virtual {p0}, Lcom/android/launcher2/HomeScreenOptionTransition;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v3, 0x258

    if-lt v2, v3, :cond_1

    .line 45
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Lcom/android/launcher2/HomeScreenOptionTransition;->setRequestedOrientation(I)V

    .line 49
    :goto_0
    const v2, 0x7f030026

    invoke-virtual {p0, v2}, Lcom/android/launcher2/HomeScreenOptionTransition;->setContentView(I)V

    .line 51
    invoke-virtual {p0}, Lcom/android/launcher2/HomeScreenOptionTransition;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 52
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 53
    invoke-virtual {p0}, Lcom/android/launcher2/HomeScreenOptionTransition;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f10004d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 54
    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 57
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/HomeScreenOptionTransition;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 58
    .local v1, "resources":Landroid/content/res/Resources;
    const v2, 0x7f0f005d

    invoke-virtual {p0, v2}, Lcom/android/launcher2/HomeScreenOptionTransition;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/android/launcher2/HomeScreenOptionTransition;->mListView:Landroid/widget/ListView;

    .line 59
    const v2, 0x7f0f005c

    invoke-virtual {p0, v2}, Lcom/android/launcher2/HomeScreenOptionTransition;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/VideoView;

    iput-object v2, p0, Lcom/android/launcher2/HomeScreenOptionTransition;->mVideoView:Landroid/widget/VideoView;

    .line 60
    iget-object v2, p0, Lcom/android/launcher2/HomeScreenOptionTransition;->mVideoView:Landroid/widget/VideoView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/VideoView;->setStopMusic(Z)V

    .line 61
    iget-object v2, p0, Lcom/android/launcher2/HomeScreenOptionTransition;->mVideoView:Landroid/widget/VideoView;

    const v3, 0x7f020143

    invoke-virtual {v2, v3}, Landroid/widget/VideoView;->setBackgroundResource(I)V

    .line 63
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/launcher2/HomeScreenOptionTransition;->mItems:Ljava/util/ArrayList;

    .line 64
    iget-object v2, p0, Lcom/android/launcher2/HomeScreenOptionTransition;->mItems:Ljava/util/ArrayList;

    const v3, 0x7f10004e

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    iget-object v2, p0, Lcom/android/launcher2/HomeScreenOptionTransition;->mItems:Ljava/util/ArrayList;

    const v3, 0x7f10004f

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    iget-object v2, p0, Lcom/android/launcher2/HomeScreenOptionTransition;->mItems:Ljava/util/ArrayList;

    const v3, 0x7f100050

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    new-instance v2, Landroid/widget/ArrayAdapter;

    const v3, 0x7f03002c

    iget-object v4, p0, Lcom/android/launcher2/HomeScreenOptionTransition;->mItems:Ljava/util/ArrayList;

    invoke-direct {v2, p0, v3, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v2, p0, Lcom/android/launcher2/HomeScreenOptionTransition;->mAdapter:Landroid/widget/ArrayAdapter;

    .line 69
    iget-object v2, p0, Lcom/android/launcher2/HomeScreenOptionTransition;->mListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/android/launcher2/HomeScreenOptionTransition;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 70
    iget-object v2, p0, Lcom/android/launcher2/HomeScreenOptionTransition;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v5}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 71
    iget-object v2, p0, Lcom/android/launcher2/HomeScreenOptionTransition;->mListView:Landroid/widget/ListView;

    sget v3, Lcom/android/launcher2/Launcher;->sWhichTransitionEffect:I

    invoke-virtual {v2, v3, v5}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 72
    iget-object v2, p0, Lcom/android/launcher2/HomeScreenOptionTransition;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 74
    sget v2, Lcom/android/launcher2/Launcher;->sWhichTransitionEffect:I

    packed-switch v2, :pswitch_data_0

    .line 85
    :goto_1
    invoke-direct {p0}, Lcom/android/launcher2/HomeScreenOptionTransition;->playVideo()V

    .line 86
    return-void

    .line 47
    .end local v0    # "actionBar":Landroid/app/ActionBar;
    .end local v1    # "resources":Landroid/content/res/Resources;
    :cond_1
    invoke-virtual {p0, v5}, Lcom/android/launcher2/HomeScreenOptionTransition;->setRequestedOrientation(I)V

    goto/16 :goto_0

    .line 76
    .restart local v0    # "actionBar":Landroid/app/ActionBar;
    .restart local v1    # "resources":Landroid/content/res/Resources;
    :pswitch_0
    iget-object v2, p0, Lcom/android/launcher2/HomeScreenOptionTransition;->mVideoView:Landroid/widget/VideoView;

    iget-object v3, p0, Lcom/android/launcher2/HomeScreenOptionTransition;->mTransitionEffectPreviewNone:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    goto :goto_1

    .line 79
    :pswitch_1
    iget-object v2, p0, Lcom/android/launcher2/HomeScreenOptionTransition;->mVideoView:Landroid/widget/VideoView;

    iget-object v3, p0, Lcom/android/launcher2/HomeScreenOptionTransition;->mTransitionEffectPreviewEffect1:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    goto :goto_1

    .line 82
    :pswitch_2
    iget-object v2, p0, Lcom/android/launcher2/HomeScreenOptionTransition;->mVideoView:Landroid/widget/VideoView;

    iget-object v3, p0, Lcom/android/launcher2/HomeScreenOptionTransition;->mTransitionEffectPreviewEffect2:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    goto :goto_1

    .line 74
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 110
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    packed-switch p3, :pswitch_data_0

    .line 121
    :goto_0
    invoke-direct {p0}, Lcom/android/launcher2/HomeScreenOptionTransition;->playVideo()V

    .line 122
    invoke-virtual {p0, p3}, Lcom/android/launcher2/HomeScreenOptionTransition;->setTransitionEffect(I)V

    .line 123
    return-void

    .line 112
    :pswitch_0
    iget-object v0, p0, Lcom/android/launcher2/HomeScreenOptionTransition;->mVideoView:Landroid/widget/VideoView;

    iget-object v1, p0, Lcom/android/launcher2/HomeScreenOptionTransition;->mTransitionEffectPreviewNone:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    goto :goto_0

    .line 115
    :pswitch_1
    iget-object v0, p0, Lcom/android/launcher2/HomeScreenOptionTransition;->mVideoView:Landroid/widget/VideoView;

    iget-object v1, p0, Lcom/android/launcher2/HomeScreenOptionTransition;->mTransitionEffectPreviewEffect1:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    goto :goto_0

    .line 118
    :pswitch_2
    iget-object v0, p0, Lcom/android/launcher2/HomeScreenOptionTransition;->mVideoView:Landroid/widget/VideoView;

    iget-object v1, p0, Lcom/android/launcher2/HomeScreenOptionTransition;->mTransitionEffectPreviewEffect2:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    goto :goto_0

    .line 110
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 90
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 96
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 93
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/launcher2/HomeScreenOptionTransition;->onBackPressed()V

    .line 94
    const/4 v0, 0x1

    goto :goto_0

    .line 90
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 141
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 143
    :try_start_0
    iget-object v1, p0, Lcom/android/launcher2/HomeScreenOptionTransition;->mVideoView:Landroid/widget/VideoView;

    if-eqz v1, :cond_0

    .line 144
    iget-object v1, p0, Lcom/android/launcher2/HomeScreenOptionTransition;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v1}, Landroid/widget/VideoView;->pause()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    :cond_0
    :goto_0
    return-void

    .line 146
    :catch_0
    move-exception v0

    .line 147
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 152
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 154
    :try_start_0
    iget-object v1, p0, Lcom/android/launcher2/HomeScreenOptionTransition;->mVideoView:Landroid/widget/VideoView;

    if-eqz v1, :cond_0

    .line 155
    iget-object v1, p0, Lcom/android/launcher2/HomeScreenOptionTransition;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v1}, Landroid/widget/VideoView;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    :cond_0
    :goto_0
    return-void

    .line 157
    :catch_0
    move-exception v0

    .line 158
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setTransitionEffect(I)V
    .locals 5
    .param p1, "newValue"    # I

    .prologue
    .line 126
    sget v3, Lcom/android/launcher2/Launcher;->sWhichTransitionEffect:I

    if-ne p1, v3, :cond_1

    .line 138
    :cond_0
    :goto_0
    return-void

    .line 129
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/HomeScreenOptionTransition;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 131
    .local v2, "pref":Landroid/content/SharedPreferences$Editor;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 132
    .local v0, "integer":Ljava/lang/Integer;
    const-string v3, "pref_list_transition_effect"

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 133
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 135
    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v1

    .line 136
    .local v1, "launcher":Lcom/android/launcher2/Launcher;
    if-eqz v1, :cond_0

    .line 137
    invoke-virtual {v1, p1}, Lcom/android/launcher2/Launcher;->setWhichTransitionEffect(I)V

    goto :goto_0
.end method
