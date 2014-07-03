.class public final Lcom/nextpeer/android/eb;
.super Lcom/nextpeer/android/em;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nextpeer/android/eb$aa;,
        Lcom/nextpeer/android/eb$ab;,
        Lcom/nextpeer/android/eb$ac;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nextpeer/android/em;",
        "Landroid/view/View$OnClickListener;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field private b:Landroid/widget/GridView;

.field private c:Landroid/widget/ProgressBar;

.field private d:Landroid/widget/Button;

.field private e:Landroid/widget/Button;

.field private f:Lcom/nextpeer/android/hq;

.field private g:I

.field private h:Lcom/nextpeer/android/eb$ac;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/nextpeer/android/em;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nextpeer/android/eb;->f:Lcom/nextpeer/android/hq;

    return-void
.end method

.method private a()V
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/eb;->f:Lcom/nextpeer/android/hq;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/nextpeer/android/ho;->a()Lcom/nextpeer/android/ho;

    iget-object v0, p0, Lcom/nextpeer/android/eb;->f:Lcom/nextpeer/android/hq;

    invoke-static {v0}, Lcom/nextpeer/android/ho;->a(Lcom/nextpeer/android/hq;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nextpeer/android/eb;->f:Lcom/nextpeer/android/hq;

    :cond_0
    return-void
.end method

.method static synthetic a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/nextpeer/android/eb;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nextpeer/android/eb;->f:Lcom/nextpeer/android/hq;

    return-void
.end method

.method static synthetic a(Lcom/nextpeer/android/eb;I)V
    .locals 0

    iput p1, p0, Lcom/nextpeer/android/eb;->g:I

    return-void
.end method

.method static synthetic a(Lcom/nextpeer/android/eb;Ljava/util/List;I)V
    .locals 3

    invoke-direct {p0}, Lcom/nextpeer/android/eb;->c()V

    iget-object v0, p0, Lcom/nextpeer/android/eb;->b:Landroid/widget/GridView;

    new-instance v1, Lcom/nextpeer/android/eb$ab;

    invoke-static {}, Lcom/nextpeer/android/Nextpeer;->a()Lcom/nextpeer/android/Nextpeer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nextpeer/android/Nextpeer;->b()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2, p1, p2}, Lcom/nextpeer/android/eb$ab;-><init>(Lcom/nextpeer/android/eb;Landroid/content/Context;Ljava/util/List;I)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method private b()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/nextpeer/android/eb;->c:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/nextpeer/android/eb;->b:Landroid/widget/GridView;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/nextpeer/android/eb;->e:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method static synthetic b(Lcom/nextpeer/android/eb;)V
    .locals 1

    const-string v0, "NPA_CHANGE_AVATAR_DIALOG_AVATAR_CHANGED"

    invoke-static {v0}, Lcom/nextpeer/android/aa;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nextpeer/android/eb;->h:Lcom/nextpeer/android/eb$ac;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nextpeer/android/eb;->h:Lcom/nextpeer/android/eb$ac;

    invoke-interface {v0}, Lcom/nextpeer/android/eb$ac;->a()V

    :cond_0
    return-void
.end method

.method private c()V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/nextpeer/android/eb;->c:Landroid/widget/ProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/nextpeer/android/eb;->b:Landroid/widget/GridView;

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/nextpeer/android/eb;->e:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method static synthetic c(Lcom/nextpeer/android/eb;)V
    .locals 0

    invoke-direct {p0}, Lcom/nextpeer/android/eb;->c()V

    return-void
.end method

.method static synthetic d(Lcom/nextpeer/android/eb;)V
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/eb;->h:Lcom/nextpeer/android/eb$ac;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nextpeer/android/eb;->h:Lcom/nextpeer/android/eb$ac;

    invoke-interface {v0}, Lcom/nextpeer/android/eb$ac;->d()V

    :cond_0
    invoke-virtual {p0}, Lcom/nextpeer/android/eb;->dismiss()V

    return-void
.end method

.method static synthetic e(Lcom/nextpeer/android/eb;)I
    .locals 1

    iget v0, p0, Lcom/nextpeer/android/eb;->g:I

    return v0
.end method


# virtual methods
.method public final a(Lcom/nextpeer/android/eb$ac;)V
    .locals 0

    iput-object p1, p0, Lcom/nextpeer/android/eb;->h:Lcom/nextpeer/android/eb$ac;

    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 6

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v2, 0x1

    sget v3, Lcom/nextpeer/android/R$id;->np__dialog_changeavatar_button_positive:I

    if-ne v0, v3, :cond_2

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/nextpeer/android/eb;->b:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/nextpeer/android/eb$ab;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/nextpeer/android/eb$ab;->a()I

    move-result v4

    iget v5, p0, Lcom/nextpeer/android/eb;->g:I

    if-eq v4, v5, :cond_3

    invoke-virtual {v0}, Lcom/nextpeer/android/eb$ab;->a()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/nextpeer/android/eb$ab;->b(I)Lcom/nextpeer/android/eb$aa;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/nextpeer/android/eb;->b()V

    iget-object v2, v0, Lcom/nextpeer/android/eb$aa;->b:Ljava/lang/String;

    invoke-static {}, Lcom/nextpeer/android/ho;->a()Lcom/nextpeer/android/ho;

    move-result-object v3

    iget v4, v0, Lcom/nextpeer/android/eb$aa;->a:I

    iget v0, v0, Lcom/nextpeer/android/eb$aa;->c:I

    new-instance v5, Lcom/nextpeer/android/ec;

    invoke-direct {v5, p0, v2}, Lcom/nextpeer/android/ec;-><init>(Lcom/nextpeer/android/eb;Ljava/lang/String;)V

    invoke-virtual {v3, v4, v0, v5}, Lcom/nextpeer/android/ho;->a(IILcom/nextpeer/android/hr;)Lcom/nextpeer/android/hq;

    move-result-object v0

    iput-object v0, p0, Lcom/nextpeer/android/eb;->f:Lcom/nextpeer/android/hq;

    move v0, v1

    :goto_1
    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/nextpeer/android/eb;->b()V

    iget-object v0, p0, Lcom/nextpeer/android/eb;->d:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    invoke-direct {p0}, Lcom/nextpeer/android/eb;->a()V

    const-string v0, "NPA_CHANGE_AVATAR_DIALOG_CANCELLED"

    invoke-static {v0}, Lcom/nextpeer/android/aa;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nextpeer/android/eb;->h:Lcom/nextpeer/android/eb$ac;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nextpeer/android/eb;->h:Lcom/nextpeer/android/eb$ac;

    invoke-interface {v0}, Lcom/nextpeer/android/eb$ac;->e()V

    :cond_0
    invoke-virtual {p0}, Lcom/nextpeer/android/eb;->dismiss()V

    :cond_1
    return-void

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    move-object v0, v3

    goto :goto_0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/nextpeer/android/em;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/nextpeer/android/eb;->setCancelable(Z)V

    const-string v0, "NPA_CHANGE_AVATAR_DIALOG_DISPLAY"

    invoke-static {v0}, Lcom/nextpeer/android/aa;->b(Ljava/lang/String;)V

    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    sget v0, Lcom/nextpeer/android/R$layout;->np__dialog_changeavatar:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    sget v0, Lcom/nextpeer/android/R$id;->np__dialog_changeavatar_grid:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/nextpeer/android/eb;->b:Landroid/widget/GridView;

    sget v0, Lcom/nextpeer/android/R$id;->np__dialog_changeavatar_title_progressbar:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/nextpeer/android/eb;->c:Landroid/widget/ProgressBar;

    sget v0, Lcom/nextpeer/android/R$id;->np__dialog_changeavatar_button_negative:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/nextpeer/android/eb;->d:Landroid/widget/Button;

    sget v0, Lcom/nextpeer/android/R$id;->np__dialog_changeavatar_button_positive:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/nextpeer/android/eb;->e:Landroid/widget/Button;

    iget-object v0, p0, Lcom/nextpeer/android/eb;->d:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/nextpeer/android/eb;->e:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/nextpeer/android/eb;->b:Landroid/widget/GridView;

    invoke-virtual {v0, p0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-object v1
.end method

.method public final onDestroy()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nextpeer/android/eb;->h:Lcom/nextpeer/android/eb$ac;

    invoke-direct {p0}, Lcom/nextpeer/android/eb;->a()V

    invoke-super {p0}, Lcom/nextpeer/android/em;->onDestroy()V

    return-void
.end method

.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Lcom/nextpeer/android/eb$ab;

    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Landroid/view/View;->setSelected(Z)V

    invoke-virtual {v0, p3}, Lcom/nextpeer/android/eb$ab;->a(I)V

    invoke-virtual {v0}, Lcom/nextpeer/android/eb$ab;->notifyDataSetChanged()V

    return-void
.end method

.method public final onStart()V
    .locals 2

    invoke-super {p0}, Lcom/nextpeer/android/em;->onStart()V

    invoke-direct {p0}, Lcom/nextpeer/android/eb;->a()V

    invoke-direct {p0}, Lcom/nextpeer/android/eb;->b()V

    invoke-static {}, Lcom/nextpeer/android/ho;->a()Lcom/nextpeer/android/ho;

    move-result-object v0

    new-instance v1, Lcom/nextpeer/android/ed;

    invoke-direct {v1, p0}, Lcom/nextpeer/android/ed;-><init>(Lcom/nextpeer/android/eb;)V

    invoke-virtual {v0, v1}, Lcom/nextpeer/android/ho;->c(Lcom/nextpeer/android/hr;)Lcom/nextpeer/android/hq;

    move-result-object v0

    iput-object v0, p0, Lcom/nextpeer/android/eb;->f:Lcom/nextpeer/android/hq;

    return-void
.end method
