.class final Lcom/nextpeer/android/dn;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nextpeer/android/dn$aa;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;
    .annotation runtime Lcom/a/a/a/ab;
        a = "creator"
    .end annotation
.end field

.field public final b:I
    .annotation runtime Lcom/a/a/a/ab;
        a = "matchId"
    .end annotation
.end field

.field public final c:I
    .annotation runtime Lcom/a/a/a/ab;
        a = "secondsLeft"
    .end annotation
.end field

.field public final d:I
    .annotation runtime Lcom/a/a/a/ab;
        a = "limit"
    .end annotation
.end field

.field public final e:Ljava/util/ArrayList;
    .annotation runtime Lcom/a/a/a/ab;
        a = "players"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nextpeer/android/do;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Ljava/lang/String;
    .annotation runtime Lcom/a/a/a/ab;
        a = "tournamentId"
    .end annotation
.end field

.field private final g:I
    .annotation runtime Lcom/a/a/a/ab;
        a = "status"
    .end annotation
.end field

.field private transient h:Lcom/nextpeer/android/dn$aa;

.field private transient i:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nextpeer/android/do;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;IIILjava/util/ArrayList;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "III",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nextpeer/android/do;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/nextpeer/android/dn;->h:Lcom/nextpeer/android/dn$aa;

    iput-object v0, p0, Lcom/nextpeer/android/dn;->i:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/nextpeer/android/dn;->a:Ljava/lang/String;

    iput p2, p0, Lcom/nextpeer/android/dn;->b:I

    const/16 v0, -0x3e7

    iput v0, p0, Lcom/nextpeer/android/dn;->c:I

    iput p4, p0, Lcom/nextpeer/android/dn;->g:I

    iput-object p5, p0, Lcom/nextpeer/android/dn;->e:Ljava/util/ArrayList;

    iput-object p6, p0, Lcom/nextpeer/android/dn;->f:Ljava/lang/String;

    iput p3, p0, Lcom/nextpeer/android/dn;->d:I

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nextpeer/android/do;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/nextpeer/android/dn;->i:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/nextpeer/android/dn;->e:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/nextpeer/android/dn;->i:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/nextpeer/android/dn;->i:Ljava/util/ArrayList;

    new-instance v1, Lcom/nextpeer/android/do$ab;

    invoke-direct {v1}, Lcom/nextpeer/android/do$ab;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_0
    iget-object v0, p0, Lcom/nextpeer/android/dn;->i:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final b()Lcom/nextpeer/android/dn$aa;
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/dn;->h:Lcom/nextpeer/android/dn$aa;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/nextpeer/android/dn;->g:I

    invoke-static {v0}, Lcom/nextpeer/android/dn$aa;->a(I)Lcom/nextpeer/android/dn$aa;

    move-result-object v0

    iput-object v0, p0, Lcom/nextpeer/android/dn;->h:Lcom/nextpeer/android/dn$aa;

    :cond_0
    iget-object v0, p0, Lcom/nextpeer/android/dn;->h:Lcom/nextpeer/android/dn$aa;

    return-object v0
.end method

.method public final c()Z
    .locals 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/nextpeer/android/dn;->e:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nextpeer/android/dn;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/nextpeer/android/dn;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/nextpeer/android/dn;->d:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/nextpeer/android/dn;->c:I

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lcom/nextpeer/android/dn;->b()Lcom/nextpeer/android/dn$aa;

    move-result-object v0

    sget-object v3, Lcom/nextpeer/android/dn$aa;->a:Lcom/nextpeer/android/dn$aa;

    if-eq v0, v3, :cond_0

    iget-object v0, p0, Lcom/nextpeer/android/dn;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v2

    :goto_0
    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/nextpeer/android/dn;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v2

    goto :goto_1

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nextpeer/android/do;

    invoke-virtual {v0}, Lcom/nextpeer/android/do;->b()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    goto :goto_1
.end method
