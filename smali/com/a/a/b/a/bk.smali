.class final Lcom/a/a/b/a/bk;
.super Lcom/a/a/bj;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/a/a/bj",
        "<",
        "Ljava/util/Calendar;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/a/a/bj;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/a/a/d/aa;)Ljava/lang/Object;
    .locals 9

    const/4 v6, 0x0

    invoke-virtual {p1}, Lcom/a/a/d/aa;->f()Lcom/a/a/d/ac;

    move-result-object v0

    sget-object v1, Lcom/a/a/d/ac;->i:Lcom/a/a/d/ac;

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/a/a/d/aa;->j()V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/a/a/d/aa;->c()V

    move v5, v6

    move v4, v6

    move v3, v6

    move v2, v6

    move v1, v6

    :cond_1
    :goto_1
    invoke-virtual {p1}, Lcom/a/a/d/aa;->f()Lcom/a/a/d/ac;

    move-result-object v0

    sget-object v7, Lcom/a/a/d/ac;->d:Lcom/a/a/d/ac;

    if-ne v0, v7, :cond_2

    invoke-virtual {p1}, Lcom/a/a/d/aa;->d()V

    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct/range {v0 .. v6}, Ljava/util/GregorianCalendar;-><init>(IIIIII)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/a/a/d/aa;->g()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lcom/a/a/d/aa;->m()I

    move-result v0

    const-string v8, "year"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    move v1, v0

    goto :goto_1

    :cond_3
    const-string v8, "month"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    move v2, v0

    goto :goto_1

    :cond_4
    const-string v8, "dayOfMonth"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    move v3, v0

    goto :goto_1

    :cond_5
    const-string v8, "hourOfDay"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    move v4, v0

    goto :goto_1

    :cond_6
    const-string v8, "minute"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    move v5, v0

    goto :goto_1

    :cond_7
    const-string v8, "second"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    move v6, v0

    goto :goto_1
.end method

.method public final synthetic a(Lcom/a/a/d/ad;Ljava/lang/Object;)V
    .locals 2

    check-cast p2, Ljava/util/Calendar;

    if-nez p2, :cond_0

    invoke-virtual {p1}, Lcom/a/a/d/ad;->f()Lcom/a/a/d/ad;

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/a/a/d/ad;->d()Lcom/a/a/d/ad;

    const-string v0, "year"

    invoke-virtual {p1, v0}, Lcom/a/a/d/ad;->a(Ljava/lang/String;)Lcom/a/a/d/ad;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lcom/a/a/d/ad;->a(J)Lcom/a/a/d/ad;

    const-string v0, "month"

    invoke-virtual {p1, v0}, Lcom/a/a/d/ad;->a(Ljava/lang/String;)Lcom/a/a/d/ad;

    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lcom/a/a/d/ad;->a(J)Lcom/a/a/d/ad;

    const-string v0, "dayOfMonth"

    invoke-virtual {p1, v0}, Lcom/a/a/d/ad;->a(Ljava/lang/String;)Lcom/a/a/d/ad;

    const/4 v0, 0x5

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lcom/a/a/d/ad;->a(J)Lcom/a/a/d/ad;

    const-string v0, "hourOfDay"

    invoke-virtual {p1, v0}, Lcom/a/a/d/ad;->a(Ljava/lang/String;)Lcom/a/a/d/ad;

    const/16 v0, 0xb

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lcom/a/a/d/ad;->a(J)Lcom/a/a/d/ad;

    const-string v0, "minute"

    invoke-virtual {p1, v0}, Lcom/a/a/d/ad;->a(Ljava/lang/String;)Lcom/a/a/d/ad;

    const/16 v0, 0xc

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lcom/a/a/d/ad;->a(J)Lcom/a/a/d/ad;

    const-string v0, "second"

    invoke-virtual {p1, v0}, Lcom/a/a/d/ad;->a(Ljava/lang/String;)Lcom/a/a/d/ad;

    const/16 v0, 0xd

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lcom/a/a/d/ad;->a(J)Lcom/a/a/d/ad;

    invoke-virtual {p1}, Lcom/a/a/d/ad;->e()Lcom/a/a/d/ad;

    goto :goto_0
.end method
