.class public final Lcom/nextpeer/android/ex;
.super Lcom/nextpeer/android/en;

# interfaces
.implements Lcom/nextpeer/android/av$ac;
.implements Lcom/nextpeer/android/ew$aa;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nextpeer/android/ex$aa;,
        Lcom/nextpeer/android/ex$ab;,
        Lcom/nextpeer/android/ex$ac;,
        Lcom/nextpeer/android/ex$ad;,
        Lcom/nextpeer/android/ex$ae;,
        Lcom/nextpeer/android/ex$af;
    }
.end annotation


# instance fields
.field private a:Lcom/nextpeer/android/ex$af;

.field private b:Lcom/nextpeer/android/ex$ab;

.field private c:Lcom/nextpeer/android/ex$ad;

.field private d:Lcom/nextpeer/android/ex$ae;

.field private e:Landroid/widget/Button;

.field private f:Landroid/widget/Button;

.field private g:Landroid/widget/Button;

.field private h:Landroid/widget/Button;

.field private i:Landroid/widget/Button;

.field private j:Landroid/widget/ImageButton;

.field private k:Landroid/view/View;

.field private l:Landroid/widget/ListView;

.field private m:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/nextpeer/android/av$ab;",
            ">;"
        }
    .end annotation
.end field

.field private n:Lcom/nextpeer/android/gx;

.field private o:Lcom/nextpeer/android/hq;

.field private p:Z

.field private q:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/nextpeer/android/en;-><init>()V

    iput-object v1, p0, Lcom/nextpeer/android/ex;->a:Lcom/nextpeer/android/ex$af;

    iput-object v1, p0, Lcom/nextpeer/android/ex;->b:Lcom/nextpeer/android/ex$ab;

    iput-object v1, p0, Lcom/nextpeer/android/ex;->c:Lcom/nextpeer/android/ex$ad;

    sget-object v0, Lcom/nextpeer/android/ex$ae;->a:Lcom/nextpeer/android/ex$ae;

    iput-object v0, p0, Lcom/nextpeer/android/ex;->d:Lcom/nextpeer/android/ex$ae;

    iput-object v1, p0, Lcom/nextpeer/android/ex;->e:Landroid/widget/Button;

    iput-object v1, p0, Lcom/nextpeer/android/ex;->f:Landroid/widget/Button;

    iput-object v1, p0, Lcom/nextpeer/android/ex;->g:Landroid/widget/Button;

    iput-object v1, p0, Lcom/nextpeer/android/ex;->h:Landroid/widget/Button;

    iput-object v1, p0, Lcom/nextpeer/android/ex;->i:Landroid/widget/Button;

    iput-object v1, p0, Lcom/nextpeer/android/ex;->j:Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/nextpeer/android/ex;->k:Landroid/view/View;

    iput-object v1, p0, Lcom/nextpeer/android/ex;->l:Landroid/widget/ListView;

    iput-object v1, p0, Lcom/nextpeer/android/ex;->m:Ljava/util/Map;

    iput-object v1, p0, Lcom/nextpeer/android/ex;->n:Lcom/nextpeer/android/gx;

    iput-object v1, p0, Lcom/nextpeer/android/ex;->o:Lcom/nextpeer/android/hq;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nextpeer/android/ex;->p:Z

    iput-object v1, p0, Lcom/nextpeer/android/ex;->q:Landroid/widget/LinearLayout;

    return-void
.end method

.method static synthetic a(Lcom/nextpeer/android/ex;Lcom/nextpeer/android/av$ab;)V
    .locals 4

    if-nez p1, :cond_0

    const-string v0, "shareToFacebookFriend - could not share - selected friend is null"

    invoke-static {v0}, Lcom/nextpeer/android/bk;->b(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/nextpeer/android/hh;->a()Lcom/nextpeer/android/hh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nextpeer/android/hh;->d()Lcom/nextpeer/android/hl;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "shareToFacebookFriend - could not share - user profile is null"

    invoke-static {v0}, Lcom/nextpeer/android/bk;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, v0, Lcom/nextpeer/android/hl;->b:Lcom/nextpeer/android/hl$ad;

    const-string v1, "invite"

    invoke-virtual {v0, v1}, Lcom/nextpeer/android/hl$ad;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v0, "shareToFacebookFriend - could not share - facebook share message is null"

    invoke-static {v0}, Lcom/nextpeer/android/bk;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    new-instance v1, Lcom/nextpeer/android/gx$ac;

    invoke-virtual {p0}, Lcom/nextpeer/android/ex;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    new-instance v3, Lcom/nextpeer/android/fc;

    invoke-direct {v3, p0}, Lcom/nextpeer/android/fc;-><init>(Lcom/nextpeer/android/ex;)V

    invoke-direct {v1, v2, v3}, Lcom/nextpeer/android/gx$ac;-><init>(Landroid/content/Context;Lcom/nextpeer/android/gx$ac$aa;)V

    new-instance v2, Lcom/nextpeer/android/fe;

    invoke-direct {v2, p0}, Lcom/nextpeer/android/fe;-><init>(Lcom/nextpeer/android/ex;)V

    invoke-virtual {v1, v2}, Lcom/nextpeer/android/gx$ac;->a(Lcom/nextpeer/android/gx$ae;)Lcom/nextpeer/android/gx$ab;

    iget-object v2, p0, Lcom/nextpeer/android/ex;->n:Lcom/nextpeer/android/gx;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/nextpeer/android/ex;->n:Lcom/nextpeer/android/gx;

    invoke-virtual {v2}, Lcom/nextpeer/android/gx;->dismiss()V

    :cond_3
    invoke-virtual {v1, v0}, Lcom/nextpeer/android/gx$ac;->a(Ljava/lang/String;)Lcom/nextpeer/android/gx$ac;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nextpeer/android/gx$ac;->a(Lcom/nextpeer/android/av$ab;)Lcom/nextpeer/android/gx$ac;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nextpeer/android/gx$ac;->a()Lcom/nextpeer/android/gx;

    move-result-object v0

    iput-object v0, p0, Lcom/nextpeer/android/ex;->n:Lcom/nextpeer/android/gx;

    const-string v0, "NPA_INVITE_FB_FRIENDS_SHARE_TO_FRIENDS_DIALOG_DISPLAY"

    invoke-static {v0}, Lcom/nextpeer/android/aa;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nextpeer/android/ex;->n:Lcom/nextpeer/android/gx;

    invoke-virtual {v0}, Lcom/nextpeer/android/gx;->show()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/nextpeer/android/ex;Lcom/nextpeer/android/ex$ae;)V
    .locals 0

    iput-object p1, p0, Lcom/nextpeer/android/ex;->d:Lcom/nextpeer/android/ex$ae;

    return-void
.end method

.method static synthetic a(Lcom/nextpeer/android/ex;Lcom/nextpeer/android/hq;)V
    .locals 0

    iput-object p1, p0, Lcom/nextpeer/android/ex;->o:Lcom/nextpeer/android/hq;

    return-void
.end method

.method static synthetic a(Lcom/nextpeer/android/ex;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/nextpeer/android/ex;->m:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v3

    invoke-static {}, Lcom/nextpeer/android/hh;->a()Lcom/nextpeer/android/hh;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nextpeer/android/hh;->d()Lcom/nextpeer/android/hl;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/nextpeer/android/hh;->a()Lcom/nextpeer/android/hh;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nextpeer/android/hh;->d()Lcom/nextpeer/android/hl;

    move-result-object v2

    iget-object v2, v2, Lcom/nextpeer/android/hl;->b:Lcom/nextpeer/android/hl$ad;

    iget v2, v2, Lcom/nextpeer/android/hl$ad;->f:I

    :goto_0
    if-lez v2, :cond_0

    if-lt v3, v2, :cond_0

    invoke-virtual {p0}, Lcom/nextpeer/android/ex;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    sget v4, Lcom/nextpeer/android/R$string;->np__invite_fb_friends_limit_passed__dialog_description:I

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    invoke-virtual {v3, v4, v1}, Landroid/support/v4/app/FragmentActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/nextpeer/android/R$drawable;->np__ic_dialog_information:I

    invoke-static {v2, v1}, Lcom/nextpeer/android/dz;->a(ILjava/lang/String;)Lcom/nextpeer/android/dz;

    move-result-object v1

    invoke-virtual {p0}, Lcom/nextpeer/android/ex;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    const-string v3, "NPUIAlertDialogFragment"

    invoke-virtual {v1, v2, v3}, Lcom/nextpeer/android/dz;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    :goto_1
    return v0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    move v2, v0

    goto :goto_0
.end method

.method static synthetic b(Lcom/nextpeer/android/ex;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/ex;->m:Ljava/util/Map;

    return-object v0
.end method

.method private b(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/nextpeer/android/av$ab;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/nextpeer/android/ex$ae;->f:Lcom/nextpeer/android/ex$ae;

    iput-object v0, p0, Lcom/nextpeer/android/ex;->d:Lcom/nextpeer/android/ex$ae;

    invoke-virtual {p0}, Lcom/nextpeer/android/ex;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/nextpeer/android/ex;->b:Lcom/nextpeer/android/ex$ab;

    if-nez v1, :cond_2

    new-instance v1, Lcom/nextpeer/android/ex$ab;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v1, p0, v0, v2}, Lcom/nextpeer/android/ex$ab;-><init>(Lcom/nextpeer/android/ex;Landroid/content/Context;Ljava/util/List;)V

    iput-object v1, p0, Lcom/nextpeer/android/ex;->b:Lcom/nextpeer/android/ex$ab;

    :goto_0
    iget-object v1, p0, Lcom/nextpeer/android/ex;->c:Lcom/nextpeer/android/ex$ad;

    if-nez v1, :cond_3

    new-instance v1, Lcom/nextpeer/android/ex$ad;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v1, p0, v0, v2}, Lcom/nextpeer/android/ex$ad;-><init>(Lcom/nextpeer/android/ex;Landroid/content/Context;Ljava/util/List;)V

    iput-object v1, p0, Lcom/nextpeer/android/ex;->c:Lcom/nextpeer/android/ex$ad;

    :goto_1
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_1
    iget-object v0, p0, Lcom/nextpeer/android/ex;->b:Lcom/nextpeer/android/ex$ab;

    invoke-virtual {v0}, Lcom/nextpeer/android/ex$ab;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lcom/nextpeer/android/ex;->t()V

    :goto_3
    iget-object v0, p0, Lcom/nextpeer/android/ex;->k:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/nextpeer/android/ex;->m()V

    return-void

    :cond_2
    iget-object v1, p0, Lcom/nextpeer/android/ex;->b:Lcom/nextpeer/android/ex$ab;

    invoke-virtual {v1}, Lcom/nextpeer/android/ex$ab;->clear()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/nextpeer/android/ex;->c:Lcom/nextpeer/android/ex$ad;

    invoke-virtual {v0}, Lcom/nextpeer/android/ex$ad;->clear()V

    goto :goto_1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nextpeer/android/av$ab;

    iget-object v2, p0, Lcom/nextpeer/android/ex;->c:Lcom/nextpeer/android/ex$ad;

    invoke-virtual {v2, v0}, Lcom/nextpeer/android/ex$ad;->add(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/nextpeer/android/av$ab;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/nextpeer/android/ex;->b:Lcom/nextpeer/android/ex$ab;

    invoke-virtual {v2, v0}, Lcom/nextpeer/android/ex$ab;->add(Ljava/lang/Object;)V

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/nextpeer/android/ex;->b:Lcom/nextpeer/android/ex$ab;

    invoke-virtual {v0}, Lcom/nextpeer/android/ex$ab;->notifyDataSetChanged()V

    invoke-direct {p0}, Lcom/nextpeer/android/ex;->s()V

    goto :goto_3
.end method

.method static synthetic c(Lcom/nextpeer/android/ex;)V
    .locals 0

    invoke-direct {p0}, Lcom/nextpeer/android/ex;->u()V

    return-void
.end method

.method static synthetic d(Lcom/nextpeer/android/ex;)Lcom/nextpeer/android/ex$af;
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/ex;->a:Lcom/nextpeer/android/ex$af;

    return-object v0
.end method

.method static synthetic e(Lcom/nextpeer/android/ex;)V
    .locals 0

    invoke-direct {p0}, Lcom/nextpeer/android/ex;->t()V

    return-void
.end method

.method static synthetic f(Lcom/nextpeer/android/ex;)V
    .locals 0

    invoke-direct {p0}, Lcom/nextpeer/android/ex;->s()V

    return-void
.end method

.method static synthetic g(Lcom/nextpeer/android/ex;)Lcom/nextpeer/android/ex$ab;
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/ex;->b:Lcom/nextpeer/android/ex$ab;

    return-object v0
.end method

.method static synthetic h(Lcom/nextpeer/android/ex;)Lcom/nextpeer/android/ex$ad;
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/ex;->c:Lcom/nextpeer/android/ex$ad;

    return-object v0
.end method

.method private s()V
    .locals 3

    const/16 v2, 0x8

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/nextpeer/android/ex;->b:Lcom/nextpeer/android/ex$ab;

    invoke-virtual {v0}, Lcom/nextpeer/android/ex$ab;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/nextpeer/android/ew;

    invoke-direct {v0}, Lcom/nextpeer/android/ew;-><init>()V

    invoke-virtual {v0, p0}, Lcom/nextpeer/android/ew;->a(Lcom/nextpeer/android/ew$aa;)V

    invoke-virtual {p0}, Lcom/nextpeer/android/ex;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "NPUIInviteFBFriendsDialogFragment"

    invoke-virtual {v0, v1, v2}, Lcom/nextpeer/android/ew;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/nextpeer/android/ex;->h:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/nextpeer/android/ex;->g:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/nextpeer/android/ex;->e:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/nextpeer/android/ex;->f:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/nextpeer/android/ex;->l:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/nextpeer/android/ex;->b:Lcom/nextpeer/android/ex$ab;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/nextpeer/android/ex;->l:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_0
.end method

.method private t()V
    .locals 3

    const/16 v2, 0x8

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/nextpeer/android/ex;->e:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/nextpeer/android/ex;->f:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/nextpeer/android/ex;->h:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/nextpeer/android/ex;->g:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/nextpeer/android/ex;->l:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/nextpeer/android/ex;->c:Lcom/nextpeer/android/ex$ad;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/nextpeer/android/ex;->l:Landroid/widget/ListView;

    new-instance v1, Lcom/nextpeer/android/fh;

    invoke-direct {v1, p0}, Lcom/nextpeer/android/fh;-><init>(Lcom/nextpeer/android/ex;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method private u()V
    .locals 7

    invoke-virtual {p0}, Lcom/nextpeer/android/ex;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v1, v0, Lcom/nextpeer/android/NextpeerActivity;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/nextpeer/android/NextpeerActivity;

    iget-object v1, p0, Lcom/nextpeer/android/ex;->m:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0}, Lcom/nextpeer/android/NextpeerActivity;->isCustomViewAvailable()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/nextpeer/android/ex;->p:Z

    if-ne v1, v2, :cond_2

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/nextpeer/android/NextpeerActivity;->removeCustomViewIfAvailable()V

    iget-object v2, p0, Lcom/nextpeer/android/ex;->q:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/nextpeer/android/ex;->q:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->removeAllViews()V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/nextpeer/android/ex;->q:Landroid/widget/LinearLayout;

    :cond_3
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/nextpeer/android/ex;->q:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_5

    iget-object v2, p0, Lcom/nextpeer/android/ex;->q:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/nextpeer/android/ex;->i:Landroid/widget/Button;

    if-nez v3, :cond_4

    invoke-virtual {p0}, Lcom/nextpeer/android/ex;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    new-instance v4, Landroid/widget/Button;

    invoke-direct {v4, v3}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/nextpeer/android/ex;->i:Landroid/widget/Button;

    iget-object v4, p0, Lcom/nextpeer/android/ex;->i:Landroid/widget/Button;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/nextpeer/android/R$color;->np__nextpeer_orange:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setBackgroundColor(I)V

    iget-object v4, p0, Lcom/nextpeer/android/ex;->i:Landroid/widget/Button;

    sget v5, Lcom/nextpeer/android/R$string;->np__invite_fb_friends_start_game_button:I

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(I)V

    iget-object v4, p0, Lcom/nextpeer/android/ex;->i:Landroid/widget/Button;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v5, Lcom/nextpeer/android/R$color;->np__white:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v4, v3}, Landroid/widget/Button;->setTextColor(I)V

    iget-object v3, p0, Lcom/nextpeer/android/ex;->i:Landroid/widget/Button;

    new-instance v4, Lcom/nextpeer/android/ez;

    invoke-direct {v4, p0}, Lcom/nextpeer/android/ez;-><init>(Lcom/nextpeer/android/ex;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    iget-object v3, p0, Lcom/nextpeer/android/ex;->i:Landroid/widget/Button;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_5
    iget-object v2, p0, Lcom/nextpeer/android/ex;->q:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/nextpeer/android/ex;->j:Landroid/widget/ImageButton;

    if-nez v3, :cond_6

    invoke-virtual {p0}, Lcom/nextpeer/android/ex;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    new-instance v4, Landroid/widget/ImageButton;

    invoke-direct {v4, v3}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/nextpeer/android/ex;->j:Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/nextpeer/android/ex;->j:Landroid/widget/ImageButton;

    sget v4, Lcom/nextpeer/android/R$drawable;->np__ic_invite_friends_refresh:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setImageResource(I)V

    iget-object v3, p0, Lcom/nextpeer/android/ex;->j:Landroid/widget/ImageButton;

    new-instance v4, Lcom/nextpeer/android/fi;

    invoke-direct {v4, p0}, Lcom/nextpeer/android/fi;-><init>(Lcom/nextpeer/android/ex;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_6
    iget-object v3, p0, Lcom/nextpeer/android/ex;->j:Landroid/widget/ImageButton;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v2, p0, Lcom/nextpeer/android/ex;->q:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Lcom/nextpeer/android/NextpeerActivity;->addCustomView(Landroid/view/View;)V

    iput-boolean v1, p0, Lcom/nextpeer/android/ex;->p:Z

    goto/16 :goto_1
.end method


# virtual methods
.method public final a()V
    .locals 3

    invoke-direct {p0}, Lcom/nextpeer/android/ex;->u()V

    invoke-virtual {p0}, Lcom/nextpeer/android/ex;->m()V

    const/4 v0, 0x0

    sget v1, Lcom/nextpeer/android/R$string;->np__invite_fb_friends_fetch_failed_alert_error_description:I

    const v2, 0x153d6b

    invoke-virtual {p0, v0, v1, v2}, Lcom/nextpeer/android/ex;->a(III)V

    return-void
.end method

.method protected final a(Lcom/nextpeer/android/bc;)V
    .locals 0

    check-cast p1, Lcom/nextpeer/android/ex$af;

    iput-object p1, p0, Lcom/nextpeer/android/ex;->a:Lcom/nextpeer/android/ex$af;

    return-void
.end method

.method public final a(Lcom/nextpeer/android/fw;)V
    .locals 2

    iget v0, p1, Lcom/nextpeer/android/fw;->a:I

    const v1, 0x153d6b

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/nextpeer/android/ex;->a:Lcom/nextpeer/android/ex$af;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nextpeer/android/ex;->a:Lcom/nextpeer/android/ex$af;

    invoke-interface {v0}, Lcom/nextpeer/android/ex$af;->w()V

    :cond_0
    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/nextpeer/android/av$ab;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/nextpeer/android/ex;->u()V

    invoke-direct {p0, p1}, Lcom/nextpeer/android/ex;->b(Ljava/util/List;)V

    return-void
.end method

.method protected final a(Z)V
    .locals 3

    invoke-virtual {p0}, Lcom/nextpeer/android/ex;->m()V

    if-eqz p1, :cond_1

    sget-object v0, Lcom/nextpeer/android/ex$ae;->e:Lcom/nextpeer/android/ex$ae;

    iput-object v0, p0, Lcom/nextpeer/android/ex;->d:Lcom/nextpeer/android/ex$ae;

    iget-object v0, p0, Lcom/nextpeer/android/ex;->a:Lcom/nextpeer/android/ex$af;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nextpeer/android/ex;->a:Lcom/nextpeer/android/ex$af;

    invoke-interface {v0}, Lcom/nextpeer/android/ex$af;->w()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/nextpeer/android/ex$ae;->d:Lcom/nextpeer/android/ex$ae;

    iput-object v0, p0, Lcom/nextpeer/android/ex;->d:Lcom/nextpeer/android/ex$ae;

    const/4 v0, 0x0

    sget v1, Lcom/nextpeer/android/R$string;->np__invite_fb_friends_log_in_failed_alert_error_description:I

    const v2, 0x153d6b

    invoke-virtual {p0, v0, v1, v2}, Lcom/nextpeer/android/ex;->a(III)V

    goto :goto_0
.end method

.method public final d_()V
    .locals 4

    invoke-static {}, Lcom/nextpeer/android/hh;->a()Lcom/nextpeer/android/hh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nextpeer/android/hh;->d()Lcom/nextpeer/android/hl;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "shareToCurrentUser - could not share - user profile is null"

    invoke-static {v0}, Lcom/nextpeer/android/bk;->b(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, v0, Lcom/nextpeer/android/hl;->b:Lcom/nextpeer/android/hl$ad;

    const-string v1, "shareGeneric"

    invoke-virtual {v0, v1}, Lcom/nextpeer/android/hl$ad;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "shareToCurrentUser - could not share - facebook share message is null"

    invoke-static {v0}, Lcom/nextpeer/android/bk;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/nextpeer/android/gx$ac;

    invoke-virtual {p0}, Lcom/nextpeer/android/ex;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    new-instance v3, Lcom/nextpeer/android/ff;

    invoke-direct {v3, p0}, Lcom/nextpeer/android/ff;-><init>(Lcom/nextpeer/android/ex;)V

    invoke-direct {v1, v2, v3}, Lcom/nextpeer/android/gx$ac;-><init>(Landroid/content/Context;Lcom/nextpeer/android/gx$ac$aa;)V

    new-instance v2, Lcom/nextpeer/android/fg;

    invoke-direct {v2, p0}, Lcom/nextpeer/android/fg;-><init>(Lcom/nextpeer/android/ex;)V

    invoke-virtual {v1, v2}, Lcom/nextpeer/android/gx$ac;->a(Lcom/nextpeer/android/gx$ae;)Lcom/nextpeer/android/gx$ab;

    iget-object v2, p0, Lcom/nextpeer/android/ex;->n:Lcom/nextpeer/android/gx;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/nextpeer/android/ex;->n:Lcom/nextpeer/android/gx;

    invoke-virtual {v2}, Lcom/nextpeer/android/gx;->dismiss()V

    :cond_2
    invoke-virtual {v1, v0}, Lcom/nextpeer/android/gx$ac;->a(Ljava/lang/String;)Lcom/nextpeer/android/gx$ac;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nextpeer/android/gx$ac;->a()Lcom/nextpeer/android/gx;

    move-result-object v0

    iput-object v0, p0, Lcom/nextpeer/android/ex;->n:Lcom/nextpeer/android/gx;

    iget-object v0, p0, Lcom/nextpeer/android/ex;->n:Lcom/nextpeer/android/gx;

    invoke-virtual {v0}, Lcom/nextpeer/android/gx;->show()V

    const-string v0, "NPA_INVITE_FB_FRIENDS_SHARE_TO_USER_DIALOG_DISPLAY"

    invoke-static {v0}, Lcom/nextpeer/android/aa;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method final f()Lcom/nextpeer/android/cc;
    .locals 1

    sget-object v0, Lcom/nextpeer/android/cc;->h:Lcom/nextpeer/android/cc;

    return-object v0
.end method

.method final g()V
    .locals 1

    const-string v0, "NPA_INVITE_FB_FRIENDS_DISPLAY"

    invoke-static {v0}, Lcom/nextpeer/android/aa;->b(Ljava/lang/String;)V

    return-void
.end method

.method final h()V
    .locals 1

    const-string v0, "NPA_INVITE_FB_FRIENDS_CANCELLED"

    invoke-static {v0}, Lcom/nextpeer/android/aa;->b(Ljava/lang/String;)V

    return-void
.end method

.method protected final n()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected final o()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nextpeer/android/ex;->a:Lcom/nextpeer/android/ex$af;

    iget-object v0, p0, Lcom/nextpeer/android/ex;->o:Lcom/nextpeer/android/hq;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/nextpeer/android/ho;->a()Lcom/nextpeer/android/ho;

    iget-object v0, p0, Lcom/nextpeer/android/ex;->o:Lcom/nextpeer/android/hq;

    invoke-static {v0}, Lcom/nextpeer/android/ho;->a(Lcom/nextpeer/android/hq;)V

    :cond_0
    return-void
.end method

.method public final onAttach(Landroid/app/Activity;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/nextpeer/android/en;->onAttach(Landroid/app/Activity;)V

    invoke-static {}, Lcom/nextpeer/android/av;->b()Lcom/nextpeer/android/av;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/nextpeer/android/av;->a(Lcom/nextpeer/android/av$ac;)V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/nextpeer/android/en;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/nextpeer/android/ex;->setRetainInstance(Z)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nextpeer/android/ex;->m:Ljava/util/Map;

    new-instance v0, Lcom/nextpeer/android/ey;

    invoke-direct {v0, p0}, Lcom/nextpeer/android/ey;-><init>(Lcom/nextpeer/android/ex;)V

    invoke-virtual {p0, v0}, Lcom/nextpeer/android/ex;->a(Landroid/content/DialogInterface$OnCancelListener;)V

    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    sget v0, Lcom/nextpeer/android/R$layout;->np__fragment_invite_fb_friends:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    sget v0, Lcom/nextpeer/android/R$id;->np__invite_fb_friends_filter_container:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/nextpeer/android/ex;->k:Landroid/view/View;

    iget-object v0, p0, Lcom/nextpeer/android/ex;->k:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    sget v0, Lcom/nextpeer/android/R$id;->np__invite_fb_friends_picker_list_view:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/nextpeer/android/ex;->l:Landroid/widget/ListView;

    sget v0, Lcom/nextpeer/android/R$id;->np__invite_fb_friends_filter_show_all_button_active:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/nextpeer/android/ex;->e:Landroid/widget/Button;

    sget v0, Lcom/nextpeer/android/R$id;->np__invite_fb_friends_filter_show_all_button_deactive:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/nextpeer/android/ex;->f:Landroid/widget/Button;

    iget-object v0, p0, Lcom/nextpeer/android/ex;->f:Landroid/widget/Button;

    new-instance v2, Lcom/nextpeer/android/fa;

    invoke-direct {v2, p0}, Lcom/nextpeer/android/fa;-><init>(Lcom/nextpeer/android/ex;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/nextpeer/android/R$id;->np__invite_fb_friends_filter_show_active_button_active:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/nextpeer/android/ex;->h:Landroid/widget/Button;

    sget v0, Lcom/nextpeer/android/R$id;->np__invite_fb_friends_filter_show_active_button_deactive:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/nextpeer/android/ex;->g:Landroid/widget/Button;

    iget-object v0, p0, Lcom/nextpeer/android/ex;->g:Landroid/widget/Button;

    new-instance v2, Lcom/nextpeer/android/fb;

    invoke-direct {v2, p0}, Lcom/nextpeer/android/fb;-><init>(Lcom/nextpeer/android/ex;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v1
.end method

.method public final onDestroy()V
    .locals 1

    invoke-static {}, Lcom/nextpeer/android/av;->b()Lcom/nextpeer/android/av;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nextpeer/android/av;->d()V

    invoke-virtual {p0}, Lcom/nextpeer/android/ex;->m()V

    invoke-super {p0}, Lcom/nextpeer/android/en;->onDestroy()V

    return-void
.end method

.method public final onDetach()V
    .locals 1

    invoke-super {p0}, Lcom/nextpeer/android/en;->onDetach()V

    invoke-static {}, Lcom/nextpeer/android/av;->b()Lcom/nextpeer/android/av;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/nextpeer/android/av;->b(Lcom/nextpeer/android/av$ac;)V

    return-void
.end method

.method public final onResume()V
    .locals 2

    invoke-super {p0}, Lcom/nextpeer/android/en;->onResume()V

    iget-object v0, p0, Lcom/nextpeer/android/ex;->d:Lcom/nextpeer/android/ex$ae;

    sget-object v1, Lcom/nextpeer/android/ex$ae;->c:Lcom/nextpeer/android/ex$ae;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/nextpeer/android/ex;->d:Lcom/nextpeer/android/ex$ae;

    sget-object v1, Lcom/nextpeer/android/ex$ae;->f:Lcom/nextpeer/android/ex$ae;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/nextpeer/android/ex;->d:Lcom/nextpeer/android/ex$ae;

    sget-object v1, Lcom/nextpeer/android/ex$ae;->g:Lcom/nextpeer/android/ex$ae;

    if-ne v0, v1, :cond_2

    :cond_0
    invoke-virtual {p0}, Lcom/nextpeer/android/ex;->r()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/nextpeer/android/ex;->d:Lcom/nextpeer/android/ex$ae;

    sget-object v1, Lcom/nextpeer/android/ex$ae;->a:Lcom/nextpeer/android/ex$ae;

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/nextpeer/android/ex;->d:Lcom/nextpeer/android/ex$ae;

    sget-object v1, Lcom/nextpeer/android/ex$ae;->b:Lcom/nextpeer/android/ex$ae;

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/nextpeer/android/ex;->d:Lcom/nextpeer/android/ex$ae;

    sget-object v1, Lcom/nextpeer/android/ex$ae;->d:Lcom/nextpeer/android/ex$ae;

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/nextpeer/android/ex;->d:Lcom/nextpeer/android/ex$ae;

    sget-object v1, Lcom/nextpeer/android/ex$ae;->e:Lcom/nextpeer/android/ex$ae;

    if-ne v0, v1, :cond_1

    :cond_3
    invoke-virtual {p0}, Lcom/nextpeer/android/ex;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/nextpeer/android/R$string;->np__loading_indicator_title:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nextpeer/android/ex;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/nextpeer/android/ex;->p()V

    goto :goto_0
.end method

.method public final onStart()V
    .locals 2

    invoke-super {p0}, Lcom/nextpeer/android/en;->onStart()V

    invoke-virtual {p0}, Lcom/nextpeer/android/ex;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/nextpeer/android/R$string;->np__invite_fb_friends_title:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(I)V

    return-void
.end method

.method public final onStop()V
    .locals 2

    invoke-super {p0}, Lcom/nextpeer/android/en;->onStop()V

    invoke-virtual {p0}, Lcom/nextpeer/android/ex;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v1, v0, Lcom/nextpeer/android/NextpeerActivity;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/nextpeer/android/NextpeerActivity;

    invoke-virtual {v0}, Lcom/nextpeer/android/NextpeerActivity;->removeCustomViewIfAvailable()V

    :cond_0
    return-void
.end method

.method protected final q()V
    .locals 2

    sget-object v0, Lcom/nextpeer/android/ex$ae;->b:Lcom/nextpeer/android/ex$ae;

    iput-object v0, p0, Lcom/nextpeer/android/ex;->d:Lcom/nextpeer/android/ex$ae;

    invoke-virtual {p0}, Lcom/nextpeer/android/ex;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/nextpeer/android/R$string;->np__loading_indicator_title:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nextpeer/android/ex;->a(Ljava/lang/String;)V

    return-void
.end method

.method protected final r()V
    .locals 3

    invoke-static {}, Lcom/nextpeer/android/av;->b()Lcom/nextpeer/android/av;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "Could not fetch the friends list as the friends service is unavailable"

    invoke-static {v0}, Lcom/nextpeer/android/bk;->b(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/nextpeer/android/ex;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v0, "Could not fetch the friends list as the NextpeerActivity is unavailable"

    invoke-static {v0}, Lcom/nextpeer/android/bk;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/nextpeer/android/av;->f()Ljava/util/Date;

    move-result-object v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/nextpeer/android/ex$ae;->c:Lcom/nextpeer/android/ex$ae;

    iput-object v1, p0, Lcom/nextpeer/android/ex;->d:Lcom/nextpeer/android/ex$ae;

    invoke-virtual {p0}, Lcom/nextpeer/android/ex;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget v2, Lcom/nextpeer/android/R$string;->np__invite_fb_friends_fetching_action_description:I

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/nextpeer/android/ex;->a(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/nextpeer/android/av;->c()V

    :goto_1
    invoke-direct {p0}, Lcom/nextpeer/android/ex;->u()V

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/nextpeer/android/av;->g()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/nextpeer/android/ex;->b(Ljava/util/List;)V

    goto :goto_1
.end method
