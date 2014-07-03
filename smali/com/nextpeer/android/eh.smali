.class public final Lcom/nextpeer/android/eh;
.super Lcom/nextpeer/android/ba;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nextpeer/android/eh$aa;,
        Lcom/nextpeer/android/eh$ab;,
        Lcom/nextpeer/android/eh$ac;,
        Lcom/nextpeer/android/eh$ad;,
        Lcom/nextpeer/android/eh$ae;,
        Lcom/nextpeer/android/eh$af;
    }
.end annotation


# instance fields
.field private a:Lcom/nextpeer/android/eh$ad;

.field private b:Lcom/nextpeer/android/eh$af;

.field private c:Landroid/widget/ListView;

.field private d:Landroid/widget/Button;

.field private e:Landroid/widget/Button;

.field private f:Landroid/widget/Button;

.field private g:Landroid/widget/Button;

.field private h:Landroid/view/View;

.field private i:Landroid/widget/TextView;

.field private j:Lcom/nextpeer/android/eh$ab;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/nextpeer/android/ba;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nextpeer/android/eh;->j:Lcom/nextpeer/android/eh$ab;

    return-void
.end method

.method private a()V
    .locals 4

    const/4 v3, 0x0

    const/16 v1, 0x8

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/nextpeer/android/eh;->d:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/nextpeer/android/eh;->e:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/nextpeer/android/eh;->g:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/nextpeer/android/eh;->f:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/nextpeer/android/eh;->a:Lcom/nextpeer/android/eh$ad;

    invoke-virtual {v0}, Lcom/nextpeer/android/eh$ad;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nextpeer/android/eh;->i:Landroid/widget/TextView;

    sget v1, Lcom/nextpeer/android/R$string;->np__current_matches_on_going_not_available:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/nextpeer/android/eh;->h:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/nextpeer/android/eh;->c:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/nextpeer/android/eh;->h:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/nextpeer/android/eh;->c:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/nextpeer/android/eh;->c:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/nextpeer/android/eh;->h:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/nextpeer/android/eh;->c:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/nextpeer/android/eh;->c:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/nextpeer/android/eh;->a:Lcom/nextpeer/android/eh$ad;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/nextpeer/android/eh;->c:Landroid/widget/ListView;

    new-instance v1, Lcom/nextpeer/android/ek;

    invoke-direct {v1, p0}, Lcom/nextpeer/android/ek;-><init>(Lcom/nextpeer/android/eh;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/nextpeer/android/eh;)V
    .locals 0

    invoke-direct {p0}, Lcom/nextpeer/android/eh;->b()V

    return-void
.end method

.method static synthetic b(I)I
    .locals 1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    sget v0, Lcom/nextpeer/android/R$color;->np__current_matches_ribbon_orange:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    sget v0, Lcom/nextpeer/android/R$color;->np__current_matches_ribbon_blue:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    if-ne p0, v0, :cond_2

    sget v0, Lcom/nextpeer/android/R$color;->np__current_matches_ribbon_purple:I

    goto :goto_0

    :cond_2
    sget v0, Lcom/nextpeer/android/R$color;->np__current_matches_ribbon_grey:I

    goto :goto_0
.end method

.method private b()V
    .locals 4

    const/4 v3, 0x0

    const/16 v1, 0x8

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/nextpeer/android/eh;->g:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/nextpeer/android/eh;->f:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/nextpeer/android/eh;->d:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/nextpeer/android/eh;->e:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/nextpeer/android/eh;->b:Lcom/nextpeer/android/eh$af;

    invoke-virtual {v0}, Lcom/nextpeer/android/eh$af;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nextpeer/android/eh;->i:Landroid/widget/TextView;

    sget v1, Lcom/nextpeer/android/R$string;->np__current_matches_past_not_available:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/nextpeer/android/eh;->h:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/nextpeer/android/eh;->c:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/nextpeer/android/eh;->h:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/nextpeer/android/eh;->c:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/nextpeer/android/eh;->c:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/nextpeer/android/eh;->h:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/nextpeer/android/eh;->c:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/nextpeer/android/eh;->c:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/nextpeer/android/eh;->b:Lcom/nextpeer/android/eh$af;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/nextpeer/android/eh;->c:Landroid/widget/ListView;

    new-instance v1, Lcom/nextpeer/android/el;

    invoke-direct {v1, p0}, Lcom/nextpeer/android/el;-><init>(Lcom/nextpeer/android/eh;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/nextpeer/android/eh;)V
    .locals 0

    invoke-direct {p0}, Lcom/nextpeer/android/eh;->a()V

    return-void
.end method

.method static synthetic c(I)I
    .locals 1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    sget v0, Lcom/nextpeer/android/R$drawable;->np__ic_current_matches_rank_ribbon_flag_orange:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    sget v0, Lcom/nextpeer/android/R$drawable;->np__ic_current_matches_rank_ribbon_flag_blue:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    if-ne p0, v0, :cond_2

    sget v0, Lcom/nextpeer/android/R$drawable;->np__ic_current_matches_rank_ribbon_flag_purple:I

    goto :goto_0

    :cond_2
    sget v0, Lcom/nextpeer/android/R$drawable;->np__ic_current_matches_rank_ribbon_flag_grey:I

    goto :goto_0
.end method

.method static synthetic c(Lcom/nextpeer/android/eh;)Lcom/nextpeer/android/eh$ab;
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/eh;->j:Lcom/nextpeer/android/eh$ab;

    return-object v0
.end method


# virtual methods
.method protected final a(Lcom/nextpeer/android/bc;)V
    .locals 0

    check-cast p1, Lcom/nextpeer/android/eh$ab;

    iput-object p1, p0, Lcom/nextpeer/android/eh;->j:Lcom/nextpeer/android/eh$ab;

    return-void
.end method

.method final f()Lcom/nextpeer/android/cc;
    .locals 1

    sget-object v0, Lcom/nextpeer/android/cc;->k:Lcom/nextpeer/android/cc;

    return-object v0
.end method

.method final g()V
    .locals 1

    const-string v0, "NPA_CURRENT_MATCHES_DISPLAY"

    invoke-static {v0}, Lcom/nextpeer/android/aa;->b(Ljava/lang/String;)V

    return-void
.end method

.method final h()V
    .locals 1

    const-string v0, "NPA_CURRENT_MATCHES_CANCELLED"

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

    iput-object v0, p0, Lcom/nextpeer/android/eh;->j:Lcom/nextpeer/android/eh$ab;

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/nextpeer/android/ba;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/nextpeer/android/eh;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/nextpeer/android/eh$ad;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v1, p0, v0, v2}, Lcom/nextpeer/android/eh$ad;-><init>(Lcom/nextpeer/android/eh;Landroid/content/Context;Ljava/util/List;)V

    iput-object v1, p0, Lcom/nextpeer/android/eh;->a:Lcom/nextpeer/android/eh$ad;

    new-instance v1, Lcom/nextpeer/android/eh$af;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v1, p0, v0, v2}, Lcom/nextpeer/android/eh$af;-><init>(Lcom/nextpeer/android/eh;Landroid/content/Context;Ljava/util/List;)V

    iput-object v1, p0, Lcom/nextpeer/android/eh;->b:Lcom/nextpeer/android/eh$af;

    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    sget v0, Lcom/nextpeer/android/R$layout;->np__fragment_current_matches:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    sget v0, Lcom/nextpeer/android/R$id;->np__current_matches_list_view:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/nextpeer/android/eh;->c:Landroid/widget/ListView;

    sget v0, Lcom/nextpeer/android/R$id;->np__current_matches_empty_view:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/nextpeer/android/eh;->h:Landroid/view/View;

    sget v0, Lcom/nextpeer/android/R$id;->np__current_matches_empty_view_title:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nextpeer/android/eh;->i:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/nextpeer/android/eh;->h:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    sget v0, Lcom/nextpeer/android/R$id;->np__current_matches_filter_past_button_active:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/nextpeer/android/eh;->g:Landroid/widget/Button;

    sget v0, Lcom/nextpeer/android/R$id;->np__current_matches_filter_past_button_deactive:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/nextpeer/android/eh;->f:Landroid/widget/Button;

    iget-object v0, p0, Lcom/nextpeer/android/eh;->f:Landroid/widget/Button;

    new-instance v2, Lcom/nextpeer/android/ei;

    invoke-direct {v2, p0}, Lcom/nextpeer/android/ei;-><init>(Lcom/nextpeer/android/eh;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/nextpeer/android/R$id;->np__current_matches_filter_ongoing_button_active:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/nextpeer/android/eh;->d:Landroid/widget/Button;

    sget v0, Lcom/nextpeer/android/R$id;->np__current_matches_filter_ongoing_button_deactive:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/nextpeer/android/eh;->e:Landroid/widget/Button;

    iget-object v0, p0, Lcom/nextpeer/android/eh;->e:Landroid/widget/Button;

    new-instance v2, Lcom/nextpeer/android/ej;

    invoke-direct {v2, p0}, Lcom/nextpeer/android/ej;-><init>(Lcom/nextpeer/android/eh;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v1
.end method

.method public final onStart()V
    .locals 4

    invoke-super {p0}, Lcom/nextpeer/android/ba;->onStart()V

    invoke-virtual {p0}, Lcom/nextpeer/android/eh;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/nextpeer/android/R$string;->np__current_matches_title:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->setTitle(I)V

    invoke-static {}, Lcom/nextpeer/android/hh;->a()Lcom/nextpeer/android/hh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nextpeer/android/hh;->d()Lcom/nextpeer/android/hl;

    move-result-object v0

    iget-object v1, p0, Lcom/nextpeer/android/eh;->a:Lcom/nextpeer/android/eh$ad;

    invoke-virtual {v1}, Lcom/nextpeer/android/eh$ad;->clear()V

    iget-object v1, p0, Lcom/nextpeer/android/eh;->b:Lcom/nextpeer/android/eh$af;

    invoke-virtual {v1}, Lcom/nextpeer/android/eh$af;->clear()V

    iget-object v0, v0, Lcom/nextpeer/android/hl;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nextpeer/android/eh;->a:Lcom/nextpeer/android/eh$ad;

    invoke-virtual {v0}, Lcom/nextpeer/android/eh$ad;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/nextpeer/android/eh;->b()V

    :goto_1
    return-void

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nextpeer/android/dn;

    invoke-virtual {v0}, Lcom/nextpeer/android/dn;->b()Lcom/nextpeer/android/dn$aa;

    move-result-object v2

    sget-object v3, Lcom/nextpeer/android/dn$aa;->b:Lcom/nextpeer/android/dn$aa;

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/nextpeer/android/eh;->a:Lcom/nextpeer/android/eh$ad;

    invoke-virtual {v2, v0}, Lcom/nextpeer/android/eh$ad;->add(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/nextpeer/android/eh;->b:Lcom/nextpeer/android/eh$af;

    invoke-virtual {v2, v0}, Lcom/nextpeer/android/eh$af;->add(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/nextpeer/android/eh;->a()V

    goto :goto_1
.end method
