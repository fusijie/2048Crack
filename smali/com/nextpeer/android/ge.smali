.class public final Lcom/nextpeer/android/ge;
.super Lcom/nextpeer/android/ba;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nextpeer/android/ge$aa;,
        Lcom/nextpeer/android/ge$ab;,
        Lcom/nextpeer/android/ge$ac;
    }
.end annotation


# instance fields
.field private a:Lcom/nextpeer/android/ge$ab;

.field private b:Lcom/nextpeer/android/dm;

.field private c:Lcom/nextpeer/android/dr;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nextpeer/android/dp;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/nextpeer/android/ge$ac;

.field private f:Landroid/widget/ImageView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/ListView;

.field private k:Lcom/nextpeer/android/ge$aa;

.field private l:Z

.field private final m:Lcom/nextpeer/android/dx;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/nextpeer/android/ba;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nextpeer/android/ge;->a:Lcom/nextpeer/android/ge$ab;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nextpeer/android/ge;->d:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nextpeer/android/ge;->l:Z

    new-instance v0, Lcom/nextpeer/android/gf;

    invoke-direct {v0, p0}, Lcom/nextpeer/android/gf;-><init>(Lcom/nextpeer/android/ge;)V

    iput-object v0, p0, Lcom/nextpeer/android/ge;->m:Lcom/nextpeer/android/dx;

    return-void
.end method

.method private varargs a(I[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/nextpeer/android/ge;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/nextpeer/android/ge;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a()V
    .locals 2

    iget-object v0, p0, Lcom/nextpeer/android/ge;->k:Lcom/nextpeer/android/ge$aa;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nextpeer/android/ge;->k:Lcom/nextpeer/android/ge$aa;

    invoke-virtual {v0}, Lcom/nextpeer/android/ge$aa;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nextpeer/android/ge;->k:Lcom/nextpeer/android/ge$aa;

    iget-object v0, p0, Lcom/nextpeer/android/ge;->i:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/nextpeer/android/ge;)V
    .locals 0

    invoke-direct {p0}, Lcom/nextpeer/android/ge;->b()V

    return-void
.end method

.method static synthetic a(Lcom/nextpeer/android/ge;Lcom/nextpeer/android/ge$aa;)V
    .locals 0

    iput-object p1, p0, Lcom/nextpeer/android/ge;->k:Lcom/nextpeer/android/ge$aa;

    return-void
.end method

.method static synthetic a(Lcom/nextpeer/android/ge;Ljava/util/Collection;)V
    .locals 4

    iget-object v0, p0, Lcom/nextpeer/android/ge;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-static {}, Lcom/nextpeer/android/hh;->a()Lcom/nextpeer/android/hh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nextpeer/android/hh;->d()Lcom/nextpeer/android/hl;

    move-result-object v0

    iget-object v0, v0, Lcom/nextpeer/android/hl;->a:Lcom/nextpeer/android/hl$ab;

    iget-object v1, v0, Lcom/nextpeer/android/hl$ab;->a:Ljava/lang/String;

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/nextpeer/android/ge;->e:Lcom/nextpeer/android/ge$ac;

    invoke-virtual {v0}, Lcom/nextpeer/android/ge$ac;->notifyDataSetChanged()V

    return-void

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nextpeer/android/dp;

    invoke-virtual {v0}, Lcom/nextpeer/android/dp;->d()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/nextpeer/android/ge;->d:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method static synthetic b(Lcom/nextpeer/android/ge;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/ge;->d:Ljava/util/List;

    return-object v0
.end method

.method private b()V
    .locals 4

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/nextpeer/android/ge;->c:Lcom/nextpeer/android/dr;

    invoke-virtual {v0}, Lcom/nextpeer/android/dr;->d()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-gtz v0, :cond_0

    sget v0, Lcom/nextpeer/android/R$string;->np__tournament_loading_random_loading_bar_title_zero:I

    new-array v1, v3, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/nextpeer/android/ge;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/nextpeer/android/ge;->h:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    if-ne v0, v2, :cond_1

    sget v0, Lcom/nextpeer/android/R$string;->np__tournament_loading_random_loading_bar_title_one:I

    new-array v1, v3, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/nextpeer/android/ge;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    sget v1, Lcom/nextpeer/android/R$string;->np__tournament_loading_random_loading_bar_title_many:I

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-direct {p0, v1, v2}, Lcom/nextpeer/android/ge;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic c(Lcom/nextpeer/android/ge;)Lcom/nextpeer/android/ge$ac;
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/ge;->e:Lcom/nextpeer/android/ge$ac;

    return-object v0
.end method

.method static synthetic d(Lcom/nextpeer/android/ge;)V
    .locals 0

    invoke-direct {p0}, Lcom/nextpeer/android/ge;->a()V

    return-void
.end method

.method static synthetic e(Lcom/nextpeer/android/ge;)Lcom/nextpeer/android/ge$aa;
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/ge;->k:Lcom/nextpeer/android/ge$aa;

    return-object v0
.end method

.method static synthetic f(Lcom/nextpeer/android/ge;)Lcom/nextpeer/android/ge$ab;
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/ge;->a:Lcom/nextpeer/android/ge$ab;

    return-object v0
.end method

.method static synthetic g(Lcom/nextpeer/android/ge;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/ge;->i:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method protected final a(Lcom/nextpeer/android/bc;)V
    .locals 0

    check-cast p1, Lcom/nextpeer/android/ge$ab;

    iput-object p1, p0, Lcom/nextpeer/android/ge;->a:Lcom/nextpeer/android/ge$ab;

    return-void
.end method

.method public final a(Lcom/nextpeer/android/fw;)V
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/ge;->a:Lcom/nextpeer/android/ge$ab;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nextpeer/android/ge;->a:Lcom/nextpeer/android/ge$ab;

    invoke-interface {v0}, Lcom/nextpeer/android/ge$ab;->n()V

    :cond_0
    return-void
.end method

.method public final c_()V
    .locals 2

    iget-object v0, p0, Lcom/nextpeer/android/ge;->c:Lcom/nextpeer/android/dr;

    iget-object v1, p0, Lcom/nextpeer/android/ge;->m:Lcom/nextpeer/android/dx;

    invoke-virtual {v0, v1}, Lcom/nextpeer/android/dr;->b(Lcom/nextpeer/android/dx;)V

    iget-object v0, p0, Lcom/nextpeer/android/ge;->c:Lcom/nextpeer/android/dr;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/nextpeer/android/dr;->a(Z)V

    invoke-direct {p0}, Lcom/nextpeer/android/ge;->a()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nextpeer/android/ge;->l:Z

    return-void
.end method

.method final f()Lcom/nextpeer/android/cc;
    .locals 1

    sget-object v0, Lcom/nextpeer/android/cc;->d:Lcom/nextpeer/android/cc;

    return-object v0
.end method

.method final g()V
    .locals 1

    const-string v0, "NPA_TOURNAMENT_LOADING_RANDOM_DISPLAY"

    invoke-static {v0}, Lcom/nextpeer/android/aa;->b(Ljava/lang/String;)V

    return-void
.end method

.method final h()V
    .locals 2

    const-string v0, "NPA_TOURNAMENT_LOADING_RANDOM_CANCELLED"

    invoke-static {v0}, Lcom/nextpeer/android/aa;->b(Ljava/lang/String;)V

    const-string v0, "disconnecting from current room."

    invoke-static {v0}, Lcom/nextpeer/android/bk;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nextpeer/android/ge;->c:Lcom/nextpeer/android/dr;

    iget-object v1, p0, Lcom/nextpeer/android/ge;->m:Lcom/nextpeer/android/dx;

    invoke-virtual {v0, v1}, Lcom/nextpeer/android/dr;->b(Lcom/nextpeer/android/dx;)V

    iget-object v0, p0, Lcom/nextpeer/android/ge;->c:Lcom/nextpeer/android/dr;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/nextpeer/android/dr;->a(Z)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nextpeer/android/ge;->l:Z

    return-void
.end method

.method protected final j()V
    .locals 2

    const-string v0, "Random Loading - onNextpeerFragmentShouldClearResources"

    invoke-static {v0}, Lcom/nextpeer/android/bk;->e(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nextpeer/android/ge;->k:Lcom/nextpeer/android/ge$aa;

    iget-object v0, p0, Lcom/nextpeer/android/ge;->c:Lcom/nextpeer/android/dr;

    iget-object v1, p0, Lcom/nextpeer/android/ge;->m:Lcom/nextpeer/android/dx;

    invoke-virtual {v0, v1}, Lcom/nextpeer/android/dr;->b(Lcom/nextpeer/android/dx;)V

    iget-object v0, p0, Lcom/nextpeer/android/ge;->c:Lcom/nextpeer/android/dr;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nextpeer/android/dr;->a(Z)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nextpeer/android/ge;->l:Z

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

    iput-object v0, p0, Lcom/nextpeer/android/ge;->a:Lcom/nextpeer/android/ge$ab;

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/nextpeer/android/ba;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/nextpeer/android/ge;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No arguments was given."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {v0}, Lcom/nextpeer/android/bb;->a(Landroid/os/Bundle;)Lcom/nextpeer/android/dm;

    move-result-object v0

    iput-object v0, p0, Lcom/nextpeer/android/ge;->b:Lcom/nextpeer/android/dm;

    iget-object v0, p0, Lcom/nextpeer/android/ge;->b:Lcom/nextpeer/android/dm;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No given serialized tournament was given."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {}, Lcom/nextpeer/android/dr;->b()Lcom/nextpeer/android/dr;

    move-result-object v0

    iput-object v0, p0, Lcom/nextpeer/android/ge;->c:Lcom/nextpeer/android/dr;

    const-string v0, "connecting to a room."

    invoke-static {v0}, Lcom/nextpeer/android/bk;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nextpeer/android/ge;->c:Lcom/nextpeer/android/dr;

    iget-object v1, p0, Lcom/nextpeer/android/ge;->m:Lcom/nextpeer/android/dx;

    invoke-virtual {v0, v1}, Lcom/nextpeer/android/dr;->a(Lcom/nextpeer/android/dx;)V

    iget-object v0, p0, Lcom/nextpeer/android/ge;->c:Lcom/nextpeer/android/dr;

    iget-object v1, p0, Lcom/nextpeer/android/ge;->b:Lcom/nextpeer/android/dm;

    invoke-virtual {v0, v1}, Lcom/nextpeer/android/dr;->a(Lcom/nextpeer/android/dm;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nextpeer/android/ge;->l:Z

    new-instance v0, Lcom/nextpeer/android/ge$ac;

    invoke-direct {v0, p0}, Lcom/nextpeer/android/ge$ac;-><init>(Lcom/nextpeer/android/ge;)V

    iput-object v0, p0, Lcom/nextpeer/android/ge;->e:Lcom/nextpeer/android/ge$ac;

    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    const/4 v4, 0x0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/nextpeer/android/ge;->setRetainInstance(Z)V

    sget v0, Lcom/nextpeer/android/R$layout;->np__fragment_tournament_loading_random:I

    invoke-virtual {p1, v0, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    sget v0, Lcom/nextpeer/android/R$id;->np__tournament_loading_random_player_bar_thumbnail:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/nextpeer/android/ge;->f:Landroid/widget/ImageView;

    sget v0, Lcom/nextpeer/android/R$id;->np__tournament_loading_random_player_bar_text_name:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nextpeer/android/ge;->g:Landroid/widget/TextView;

    sget v0, Lcom/nextpeer/android/R$id;->np__tournament_loading_random_loading_bar_title:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nextpeer/android/ge;->h:Landroid/widget/TextView;

    sget v0, Lcom/nextpeer/android/R$id;->np__tournament_loading_random_loading_bar_text_progress:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nextpeer/android/ge;->i:Landroid/widget/TextView;

    sget v0, Lcom/nextpeer/android/R$id;->np__tournament_loading_random_list_peers:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/nextpeer/android/ge;->j:Landroid/widget/ListView;

    invoke-static {}, Lcom/nextpeer/android/hh;->a()Lcom/nextpeer/android/hh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nextpeer/android/hh;->d()Lcom/nextpeer/android/hl;

    move-result-object v0

    iget-object v0, v0, Lcom/nextpeer/android/hl;->a:Lcom/nextpeer/android/hl$ab;

    invoke-virtual {v0}, Lcom/nextpeer/android/hl$ab;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/nextpeer/android/ge;->f:Landroid/widget/ImageView;

    sget v4, Lcom/nextpeer/android/R$drawable;->np__ic_thumbnail_place_holder:I

    invoke-static {v3, v2, v4}, Lcom/b/a/aq;->a(Landroid/widget/ImageView;Ljava/lang/String;I)V

    :goto_0
    iget-object v2, p0, Lcom/nextpeer/android/ge;->g:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/nextpeer/android/hl$ab;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/nextpeer/android/ge;->j:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/nextpeer/android/ge;->e:Lcom/nextpeer/android/ge$ac;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/nextpeer/android/ge;->c:Lcom/nextpeer/android/dr;

    invoke-virtual {v0}, Lcom/nextpeer/android/dr;->i()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/nextpeer/android/ge;->b()V

    :cond_0
    return-object v1

    :cond_1
    iget-object v2, p0, Lcom/nextpeer/android/ge;->f:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public final onStart()V
    .locals 2

    invoke-super {p0}, Lcom/nextpeer/android/ba;->onStart()V

    invoke-virtual {p0}, Lcom/nextpeer/android/ge;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/nextpeer/android/R$string;->np__tournament_loading_random_title:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->setTitle(I)V

    iget-boolean v0, p0, Lcom/nextpeer/android/ge;->l:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nextpeer/android/ge;->l:Z

    iget-object v0, p0, Lcom/nextpeer/android/ge;->c:Lcom/nextpeer/android/dr;

    iget-object v1, p0, Lcom/nextpeer/android/ge;->m:Lcom/nextpeer/android/dx;

    invoke-virtual {v0, v1}, Lcom/nextpeer/android/dr;->a(Lcom/nextpeer/android/dx;)V

    iget-object v0, p0, Lcom/nextpeer/android/ge;->c:Lcom/nextpeer/android/dr;

    iget-object v1, p0, Lcom/nextpeer/android/ge;->b:Lcom/nextpeer/android/dm;

    invoke-virtual {v0, v1}, Lcom/nextpeer/android/dr;->a(Lcom/nextpeer/android/dm;)V

    :cond_0
    return-void
.end method
