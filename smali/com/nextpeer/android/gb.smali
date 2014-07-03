.class public final Lcom/nextpeer/android/gb;
.super Lcom/nextpeer/android/ba;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nextpeer/android/gb$aa;,
        Lcom/nextpeer/android/gb$ab;,
        Lcom/nextpeer/android/gb$ac;,
        Lcom/nextpeer/android/gb$ad;
    }
.end annotation


# instance fields
.field private a:Lcom/nextpeer/android/gb$ab;

.field private b:Lcom/nextpeer/android/dm;

.field private c:Lcom/nextpeer/android/dn;

.field private d:Lcom/nextpeer/android/dr;

.field private e:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/nextpeer/android/gb$ac;

.field private h:Landroid/widget/ImageView;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/Button;

.field private m:Landroid/widget/ListView;

.field private n:Lcom/nextpeer/android/gb$aa;

.field private o:Landroid/widget/ProgressBar;

.field private p:Z

.field private final q:Lcom/nextpeer/android/dx;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/nextpeer/android/ba;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nextpeer/android/gb;->a:Lcom/nextpeer/android/gb$ab;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nextpeer/android/gb;->p:Z

    new-instance v0, Lcom/nextpeer/android/gc;

    invoke-direct {v0, p0}, Lcom/nextpeer/android/gc;-><init>(Lcom/nextpeer/android/gb;)V

    iput-object v0, p0, Lcom/nextpeer/android/gb;->q:Lcom/nextpeer/android/dx;

    return-void
.end method

.method static synthetic a(Lcom/nextpeer/android/gb;)Lcom/nextpeer/android/gb$ac;
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/gb;->g:Lcom/nextpeer/android/gb$ac;

    return-object v0
.end method

.method private varargs a(I[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/nextpeer/android/gb;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/nextpeer/android/gb;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/nextpeer/android/gb;I[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/nextpeer/android/gb;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a()V
    .locals 2

    iget-object v0, p0, Lcom/nextpeer/android/gb;->n:Lcom/nextpeer/android/gb$aa;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nextpeer/android/gb;->n:Lcom/nextpeer/android/gb$aa;

    invoke-virtual {v0}, Lcom/nextpeer/android/gb$aa;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nextpeer/android/gb;->n:Lcom/nextpeer/android/gb$aa;

    iget-object v0, p0, Lcom/nextpeer/android/gb;->k:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/nextpeer/android/gb;Lcom/nextpeer/android/gb$aa;)V
    .locals 0

    iput-object p1, p0, Lcom/nextpeer/android/gb;->n:Lcom/nextpeer/android/gb$aa;

    return-void
.end method

.method static synthetic b(Lcom/nextpeer/android/gb;)Ljava/util/HashSet;
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/gb;->f:Ljava/util/HashSet;

    return-object v0
.end method

.method private b()V
    .locals 4

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/nextpeer/android/gb;->j:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nextpeer/android/gb;->f:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-gtz v0, :cond_1

    sget v0, Lcom/nextpeer/android/R$string;->np__tournament_loading_friends_loading_bar_title_zero:I

    new-array v1, v3, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/nextpeer/android/gb;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/nextpeer/android/gb;->j:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void

    :cond_1
    if-ne v0, v2, :cond_2

    sget v0, Lcom/nextpeer/android/R$string;->np__tournament_loading_friends_loading_bar_title_one:I

    new-array v1, v3, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/nextpeer/android/gb;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    sget v1, Lcom/nextpeer/android/R$string;->np__tournament_loading_friends_loading_bar_title_many:I

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-direct {p0, v1, v2}, Lcom/nextpeer/android/gb;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic c(Lcom/nextpeer/android/gb;)Ljava/util/Hashtable;
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/gb;->e:Ljava/util/Hashtable;

    return-object v0
.end method

.method static synthetic d(Lcom/nextpeer/android/gb;)V
    .locals 0

    invoke-direct {p0}, Lcom/nextpeer/android/gb;->b()V

    return-void
.end method

.method static synthetic e(Lcom/nextpeer/android/gb;)V
    .locals 0

    invoke-direct {p0}, Lcom/nextpeer/android/gb;->a()V

    return-void
.end method

.method static synthetic f(Lcom/nextpeer/android/gb;)Lcom/nextpeer/android/gb$aa;
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/gb;->n:Lcom/nextpeer/android/gb$aa;

    return-object v0
.end method

.method static synthetic g(Lcom/nextpeer/android/gb;)Lcom/nextpeer/android/gb$ab;
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/gb;->a:Lcom/nextpeer/android/gb$ab;

    return-object v0
.end method

.method static synthetic h(Lcom/nextpeer/android/gb;)Landroid/widget/ProgressBar;
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/gb;->o:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic i(Lcom/nextpeer/android/gb;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/gb;->k:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic j(Lcom/nextpeer/android/gb;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/gb;->l:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic k(Lcom/nextpeer/android/gb;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/gb;->j:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic l(Lcom/nextpeer/android/gb;)Lcom/nextpeer/android/dr;
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/gb;->d:Lcom/nextpeer/android/dr;

    return-object v0
.end method


# virtual methods
.method protected final a(Lcom/nextpeer/android/bc;)V
    .locals 0

    check-cast p1, Lcom/nextpeer/android/gb$ab;

    iput-object p1, p0, Lcom/nextpeer/android/gb;->a:Lcom/nextpeer/android/gb$ab;

    return-void
.end method

.method public final a(Lcom/nextpeer/android/fw;)V
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/gb;->a:Lcom/nextpeer/android/gb$ab;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nextpeer/android/gb;->a:Lcom/nextpeer/android/gb$ab;

    invoke-interface {v0}, Lcom/nextpeer/android/gb$ab;->p()V

    :cond_0
    return-void
.end method

.method public final c_()V
    .locals 2

    iget-object v0, p0, Lcom/nextpeer/android/gb;->d:Lcom/nextpeer/android/dr;

    iget-object v1, p0, Lcom/nextpeer/android/gb;->q:Lcom/nextpeer/android/dx;

    invoke-virtual {v0, v1}, Lcom/nextpeer/android/dr;->b(Lcom/nextpeer/android/dx;)V

    iget-object v0, p0, Lcom/nextpeer/android/gb;->d:Lcom/nextpeer/android/dr;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/nextpeer/android/dr;->a(Z)V

    invoke-direct {p0}, Lcom/nextpeer/android/gb;->a()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nextpeer/android/gb;->p:Z

    return-void
.end method

.method final f()Lcom/nextpeer/android/cc;
    .locals 1

    sget-object v0, Lcom/nextpeer/android/cc;->e:Lcom/nextpeer/android/cc;

    return-object v0
.end method

.method final g()V
    .locals 1

    const-string v0, "NPA_TOURNAMENT_LOADING_FRIENDS_DISPLAY"

    invoke-static {v0}, Lcom/nextpeer/android/aa;->b(Ljava/lang/String;)V

    return-void
.end method

.method final h()V
    .locals 2

    const-string v0, "NPA_TOURNAMENT_LOADING_FRIENDS_CANCELLED"

    invoke-static {v0}, Lcom/nextpeer/android/aa;->b(Ljava/lang/String;)V

    const-string v0, "disconnecting from current room."

    invoke-static {v0}, Lcom/nextpeer/android/bk;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nextpeer/android/gb;->d:Lcom/nextpeer/android/dr;

    iget-object v1, p0, Lcom/nextpeer/android/gb;->q:Lcom/nextpeer/android/dx;

    invoke-virtual {v0, v1}, Lcom/nextpeer/android/dr;->b(Lcom/nextpeer/android/dx;)V

    iget-object v0, p0, Lcom/nextpeer/android/gb;->d:Lcom/nextpeer/android/dr;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/nextpeer/android/dr;->a(Z)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nextpeer/android/gb;->p:Z

    return-void
.end method

.method protected final j()V
    .locals 2

    const-string v0, "Friends Loading - onNextpeerFragmentShouldClearResources"

    invoke-static {v0}, Lcom/nextpeer/android/bk;->e(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nextpeer/android/gb;->n:Lcom/nextpeer/android/gb$aa;

    iget-object v0, p0, Lcom/nextpeer/android/gb;->d:Lcom/nextpeer/android/dr;

    iget-object v1, p0, Lcom/nextpeer/android/gb;->q:Lcom/nextpeer/android/dx;

    invoke-virtual {v0, v1}, Lcom/nextpeer/android/dr;->b(Lcom/nextpeer/android/dx;)V

    iget-object v0, p0, Lcom/nextpeer/android/gb;->d:Lcom/nextpeer/android/dr;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nextpeer/android/dr;->a(Z)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nextpeer/android/gb;->p:Z

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

    iput-object v0, p0, Lcom/nextpeer/android/gb;->a:Lcom/nextpeer/android/gb$ab;

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 6

    invoke-super {p0, p1}, Lcom/nextpeer/android/ba;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/nextpeer/android/gb;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No arguments was given."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {v0}, Lcom/nextpeer/android/bb;->a(Landroid/os/Bundle;)Lcom/nextpeer/android/dm;

    move-result-object v1

    iput-object v1, p0, Lcom/nextpeer/android/gb;->b:Lcom/nextpeer/android/dm;

    iget-object v1, p0, Lcom/nextpeer/android/gb;->b:Lcom/nextpeer/android/dm;

    if-nez v1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No given serialized tournament was found."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {v0}, Lcom/nextpeer/android/bb;->c(Landroid/os/Bundle;)I

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No given match id was found."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-static {}, Lcom/nextpeer/android/hh;->a()Lcom/nextpeer/android/hh;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nextpeer/android/hh;->d()Lcom/nextpeer/android/hl;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/nextpeer/android/hl;->a(I)Lcom/nextpeer/android/dn;

    move-result-object v1

    iput-object v1, p0, Lcom/nextpeer/android/gb;->c:Lcom/nextpeer/android/dn;

    iget-object v1, p0, Lcom/nextpeer/android/gb;->c:Lcom/nextpeer/android/dn;

    if-nez v1, :cond_3

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Loading. Could not find the given match id ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ") in the user profile"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    invoke-static {}, Lcom/nextpeer/android/dr;->b()Lcom/nextpeer/android/dr;

    move-result-object v1

    iput-object v1, p0, Lcom/nextpeer/android/gb;->d:Lcom/nextpeer/android/dr;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "connecting to a match with id "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/nextpeer/android/bk;->e(Ljava/lang/String;)V

    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lcom/nextpeer/android/gb;->e:Ljava/util/Hashtable;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/nextpeer/android/gb;->f:Ljava/util/HashSet;

    iget-object v1, p0, Lcom/nextpeer/android/gb;->d:Lcom/nextpeer/android/dr;

    iget-object v2, p0, Lcom/nextpeer/android/gb;->q:Lcom/nextpeer/android/dx;

    invoke-virtual {v1, v2}, Lcom/nextpeer/android/dr;->a(Lcom/nextpeer/android/dx;)V

    iget-object v1, p0, Lcom/nextpeer/android/gb;->d:Lcom/nextpeer/android/dr;

    iget-object v2, p0, Lcom/nextpeer/android/gb;->b:Lcom/nextpeer/android/dm;

    invoke-virtual {v1, v2, v0}, Lcom/nextpeer/android/dr;->a(Lcom/nextpeer/android/dm;I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nextpeer/android/gb;->p:Z

    new-instance v0, Lcom/nextpeer/android/gb$ac;

    invoke-virtual {p0}, Lcom/nextpeer/android/gb;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v0, p0, v1, v2}, Lcom/nextpeer/android/gb$ac;-><init>(Lcom/nextpeer/android/gb;Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/nextpeer/android/gb;->g:Lcom/nextpeer/android/gb$ac;

    invoke-static {}, Lcom/nextpeer/android/hh;->a()Lcom/nextpeer/android/hh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nextpeer/android/hh;->d()Lcom/nextpeer/android/hl;

    move-result-object v0

    iget-object v2, v0, Lcom/nextpeer/android/hl;->a:Lcom/nextpeer/android/hl$ab;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/nextpeer/android/gb;->c:Lcom/nextpeer/android/dn;

    iget-object v1, v1, Lcom/nextpeer/android/dn;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v1, v0

    :cond_4
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nextpeer/android/do;

    invoke-virtual {v0}, Lcom/nextpeer/android/do;->d()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    iget-object v5, v2, Lcom/nextpeer/android/hl$ab;->a:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    iget-object v5, p0, Lcom/nextpeer/android/gb;->e:Ljava/util/Hashtable;

    invoke-virtual {v5, v4, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Lcom/nextpeer/android/gb;->g:Lcom/nextpeer/android/gb$ac;

    invoke-virtual {v4, v0}, Lcom/nextpeer/android/gb$ac;->add(Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object v1, v0

    goto :goto_0
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    const/4 v4, 0x0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/nextpeer/android/gb;->setRetainInstance(Z)V

    sget v0, Lcom/nextpeer/android/R$layout;->np__fragment_tournament_loading_friends:I

    invoke-virtual {p1, v0, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    sget v0, Lcom/nextpeer/android/R$id;->np__tournament_loading_friends_player_bar_thumbnail:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/nextpeer/android/gb;->h:Landroid/widget/ImageView;

    sget v0, Lcom/nextpeer/android/R$id;->np__tournament_loading_friends_player_bar_text_name:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nextpeer/android/gb;->i:Landroid/widget/TextView;

    sget v0, Lcom/nextpeer/android/R$id;->np__tournament_loading_friends_loading_bar_title:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nextpeer/android/gb;->j:Landroid/widget/TextView;

    sget v0, Lcom/nextpeer/android/R$id;->np__tournament_loading_friends_loading_bar_text_progress:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nextpeer/android/gb;->k:Landroid/widget/TextView;

    sget v0, Lcom/nextpeer/android/R$id;->np__tournament_loading_friends_list_peers:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/nextpeer/android/gb;->m:Landroid/widget/ListView;

    sget v0, Lcom/nextpeer/android/R$id;->np__tournament_loading_friends_loading_bar_play_now:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/nextpeer/android/gb;->l:Landroid/widget/Button;

    sget v0, Lcom/nextpeer/android/R$id;->np__tournament_loading_friends_loading_bar_progressbar:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/nextpeer/android/gb;->o:Landroid/widget/ProgressBar;

    iget-object v0, p0, Lcom/nextpeer/android/gb;->m:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/nextpeer/android/gb;->g:Lcom/nextpeer/android/gb$ac;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

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

    iget-object v3, p0, Lcom/nextpeer/android/gb;->h:Landroid/widget/ImageView;

    sget v4, Lcom/nextpeer/android/R$drawable;->np__ic_thumbnail_place_holder:I

    invoke-static {v3, v2, v4}, Lcom/b/a/aq;->a(Landroid/widget/ImageView;Ljava/lang/String;I)V

    :goto_0
    iget-object v2, p0, Lcom/nextpeer/android/gb;->i:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/nextpeer/android/hl$ab;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/nextpeer/android/gb;->d:Lcom/nextpeer/android/dr;

    invoke-virtual {v0}, Lcom/nextpeer/android/dr;->i()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nextpeer/android/gb;->d:Lcom/nextpeer/android/dr;

    invoke-virtual {v0}, Lcom/nextpeer/android/dr;->k()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nextpeer/android/gb;->q:Lcom/nextpeer/android/dx;

    invoke-virtual {v0}, Lcom/nextpeer/android/dx;->onReceiveShowPlayNow()V

    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/nextpeer/android/gb;->l:Landroid/widget/Button;

    new-instance v2, Lcom/nextpeer/android/gd;

    invoke-direct {v2, p0}, Lcom/nextpeer/android/gd;-><init>(Lcom/nextpeer/android/gb;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v1

    :cond_1
    iget-object v2, p0, Lcom/nextpeer/android/gb;->h:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/nextpeer/android/gb;->b()V

    goto :goto_1
.end method

.method public final onStart()V
    .locals 3

    invoke-super {p0}, Lcom/nextpeer/android/ba;->onStart()V

    invoke-virtual {p0}, Lcom/nextpeer/android/gb;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/nextpeer/android/R$string;->np__tournament_loading_friends_title:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->setTitle(I)V

    iget-boolean v0, p0, Lcom/nextpeer/android/gb;->p:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nextpeer/android/gb;->c:Lcom/nextpeer/android/dn;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nextpeer/android/gb;->p:Z

    iget-object v0, p0, Lcom/nextpeer/android/gb;->d:Lcom/nextpeer/android/dr;

    iget-object v1, p0, Lcom/nextpeer/android/gb;->q:Lcom/nextpeer/android/dx;

    invoke-virtual {v0, v1}, Lcom/nextpeer/android/dr;->a(Lcom/nextpeer/android/dx;)V

    iget-object v0, p0, Lcom/nextpeer/android/gb;->d:Lcom/nextpeer/android/dr;

    iget-object v1, p0, Lcom/nextpeer/android/gb;->b:Lcom/nextpeer/android/dm;

    iget-object v2, p0, Lcom/nextpeer/android/gb;->c:Lcom/nextpeer/android/dn;

    iget v2, v2, Lcom/nextpeer/android/dn;->b:I

    invoke-virtual {v0, v1, v2}, Lcom/nextpeer/android/dr;->a(Lcom/nextpeer/android/dm;I)V

    :cond_0
    return-void
.end method
