.class public final Lcom/nextpeer/android/gr;
.super Lcom/nextpeer/android/ba;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nextpeer/android/gr$aa;,
        Lcom/nextpeer/android/gr$ab;,
        Lcom/nextpeer/android/gr$ac;
    }
.end annotation


# instance fields
.field private a:Lcom/nextpeer/android/gr$aa;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nextpeer/android/dm;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/widget/ListView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/nextpeer/android/ba;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/nextpeer/android/gr;)Lcom/nextpeer/android/gr$aa;
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/gr;->a:Lcom/nextpeer/android/gr$aa;

    return-object v0
.end method

.method static synthetic b(Lcom/nextpeer/android/gr;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/gr;->b:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method protected final a(Lcom/nextpeer/android/bc;)V
    .locals 0

    check-cast p1, Lcom/nextpeer/android/gr$aa;

    iput-object p1, p0, Lcom/nextpeer/android/gr;->a:Lcom/nextpeer/android/gr$aa;

    return-void
.end method

.method final f()Lcom/nextpeer/android/cc;
    .locals 1

    sget-object v0, Lcom/nextpeer/android/cc;->c:Lcom/nextpeer/android/cc;

    return-object v0
.end method

.method final g()V
    .locals 1

    const-string v0, "NPA_TOURNAMENT_SELECTION_DISPLAY"

    invoke-static {v0}, Lcom/nextpeer/android/aa;->b(Ljava/lang/String;)V

    return-void
.end method

.method final h()V
    .locals 1

    const-string v0, "NPA_TOURNAMENT_SELECTION_CANCELLED"

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

    iput-object v0, p0, Lcom/nextpeer/android/gr;->a:Lcom/nextpeer/android/gr$aa;

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/nextpeer/android/ba;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/nextpeer/android/hh;->a()Lcom/nextpeer/android/hh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nextpeer/android/hh;->d()Lcom/nextpeer/android/hl;

    move-result-object v0

    iget-object v0, v0, Lcom/nextpeer/android/hl;->e:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/nextpeer/android/gr;->b:Ljava/util/List;

    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    sget v0, Lcom/nextpeer/android/R$layout;->np__fragment_tournament_selection:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/nextpeer/android/gr;->c:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/nextpeer/android/gr;->c:Landroid/widget/ListView;

    new-instance v2, Lcom/nextpeer/android/gs;

    invoke-direct {v2, p0}, Lcom/nextpeer/android/gs;-><init>(Lcom/nextpeer/android/gr;)V

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    new-instance v0, Lcom/nextpeer/android/gr$ab;

    invoke-virtual {p0}, Lcom/nextpeer/android/gr;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/nextpeer/android/gr;->b:Ljava/util/List;

    invoke-direct {v0, v2, v3}, Lcom/nextpeer/android/gr$ab;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iget-object v2, p0, Lcom/nextpeer/android/gr;->c:Landroid/widget/ListView;

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-object v1
.end method

.method public final onStart()V
    .locals 2

    invoke-super {p0}, Lcom/nextpeer/android/ba;->onStart()V

    invoke-virtual {p0}, Lcom/nextpeer/android/gr;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/nextpeer/android/R$string;->np__tournament_selection_title:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->setTitle(I)V

    return-void
.end method
