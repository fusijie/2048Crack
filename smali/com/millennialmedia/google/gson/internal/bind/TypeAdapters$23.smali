.class final Lcom/millennialmedia/google/gson/internal/bind/TypeAdapters$23;
.super Lcom/millennialmedia/google/gson/TypeAdapter;
.source "TypeAdapters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/google/gson/internal/bind/TypeAdapters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/millennialmedia/google/gson/TypeAdapter",
        "<",
        "Ljava/util/Calendar;",
        ">;"
    }
.end annotation


# static fields
.field private static final DAY_OF_MONTH:Ljava/lang/String; = "dayOfMonth"

.field private static final HOUR_OF_DAY:Ljava/lang/String; = "hourOfDay"

.field private static final MINUTE:Ljava/lang/String; = "minute"

.field private static final MONTH:Ljava/lang/String; = "month"

.field private static final SECOND:Ljava/lang/String; = "second"

.field private static final YEAR:Ljava/lang/String; = "year"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 654
    invoke-direct {p0}, Lcom/millennialmedia/google/gson/TypeAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic read(Lcom/millennialmedia/google/gson/stream/JsonReader;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 654
    invoke-virtual {p0, p1}, Lcom/millennialmedia/google/gson/internal/bind/TypeAdapters$23;->read(Lcom/millennialmedia/google/gson/stream/JsonReader;)Ljava/util/Calendar;

    move-result-object v0

    return-object v0
.end method

.method public read(Lcom/millennialmedia/google/gson/stream/JsonReader;)Ljava/util/Calendar;
    .locals 10
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 665
    invoke-virtual {p1}, Lcom/millennialmedia/google/gson/stream/JsonReader;->peek()Lcom/millennialmedia/google/gson/stream/JsonToken;

    move-result-object v0

    sget-object v9, Lcom/millennialmedia/google/gson/stream/JsonToken;->NULL:Lcom/millennialmedia/google/gson/stream/JsonToken;

    if-ne v0, v9, :cond_0

    .line 666
    invoke-virtual {p1}, Lcom/millennialmedia/google/gson/stream/JsonReader;->nextNull()V

    .line 667
    const/4 v0, 0x0

    .line 694
    :goto_0
    return-object v0

    .line 669
    :cond_0
    invoke-virtual {p1}, Lcom/millennialmedia/google/gson/stream/JsonReader;->beginObject()V

    .line 670
    const/4 v1, 0x0

    .line 671
    .local v1, year:I
    const/4 v2, 0x0

    .line 672
    .local v2, month:I
    const/4 v3, 0x0

    .line 673
    .local v3, dayOfMonth:I
    const/4 v4, 0x0

    .line 674
    .local v4, hourOfDay:I
    const/4 v5, 0x0

    .line 675
    .local v5, minute:I
    const/4 v6, 0x0

    .line 676
    .local v6, second:I
    :cond_1
    :goto_1
    invoke-virtual {p1}, Lcom/millennialmedia/google/gson/stream/JsonReader;->peek()Lcom/millennialmedia/google/gson/stream/JsonToken;

    move-result-object v0

    sget-object v9, Lcom/millennialmedia/google/gson/stream/JsonToken;->END_OBJECT:Lcom/millennialmedia/google/gson/stream/JsonToken;

    if-eq v0, v9, :cond_7

    .line 677
    invoke-virtual {p1}, Lcom/millennialmedia/google/gson/stream/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v7

    .line 678
    .local v7, name:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/millennialmedia/google/gson/stream/JsonReader;->nextInt()I

    move-result v8

    .line 679
    .local v8, value:I
    const-string v0, "year"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 680
    move v1, v8

    goto :goto_1

    .line 681
    :cond_2
    const-string v0, "month"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 682
    move v2, v8

    goto :goto_1

    .line 683
    :cond_3
    const-string v0, "dayOfMonth"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 684
    move v3, v8

    goto :goto_1

    .line 685
    :cond_4
    const-string v0, "hourOfDay"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 686
    move v4, v8

    goto :goto_1

    .line 687
    :cond_5
    const-string v0, "minute"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 688
    move v5, v8

    goto :goto_1

    .line 689
    :cond_6
    const-string v0, "second"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 690
    move v6, v8

    goto :goto_1

    .line 693
    .end local v7           #name:Ljava/lang/String;
    .end local v8           #value:I
    :cond_7
    invoke-virtual {p1}, Lcom/millennialmedia/google/gson/stream/JsonReader;->endObject()V

    .line 694
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct/range {v0 .. v6}, Ljava/util/GregorianCalendar;-><init>(IIIIII)V

    goto :goto_0
.end method

.method public bridge synthetic write(Lcom/millennialmedia/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 654
    check-cast p2, Ljava/util/Calendar;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/millennialmedia/google/gson/internal/bind/TypeAdapters$23;->write(Lcom/millennialmedia/google/gson/stream/JsonWriter;Ljava/util/Calendar;)V

    return-void
.end method

.method public write(Lcom/millennialmedia/google/gson/stream/JsonWriter;Ljava/util/Calendar;)V
    .locals 2
    .parameter "out"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 701
    if-nez p2, :cond_0

    .line 702
    invoke-virtual {p1}, Lcom/millennialmedia/google/gson/stream/JsonWriter;->nullValue()Lcom/millennialmedia/google/gson/stream/JsonWriter;

    .line 719
    :goto_0
    return-void

    .line 705
    :cond_0
    invoke-virtual {p1}, Lcom/millennialmedia/google/gson/stream/JsonWriter;->beginObject()Lcom/millennialmedia/google/gson/stream/JsonWriter;

    .line 706
    const-string v0, "year"

    invoke-virtual {p1, v0}, Lcom/millennialmedia/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/millennialmedia/google/gson/stream/JsonWriter;

    .line 707
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lcom/millennialmedia/google/gson/stream/JsonWriter;->value(J)Lcom/millennialmedia/google/gson/stream/JsonWriter;

    .line 708
    const-string v0, "month"

    invoke-virtual {p1, v0}, Lcom/millennialmedia/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/millennialmedia/google/gson/stream/JsonWriter;

    .line 709
    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lcom/millennialmedia/google/gson/stream/JsonWriter;->value(J)Lcom/millennialmedia/google/gson/stream/JsonWriter;

    .line 710
    const-string v0, "dayOfMonth"

    invoke-virtual {p1, v0}, Lcom/millennialmedia/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/millennialmedia/google/gson/stream/JsonWriter;

    .line 711
    const/4 v0, 0x5

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lcom/millennialmedia/google/gson/stream/JsonWriter;->value(J)Lcom/millennialmedia/google/gson/stream/JsonWriter;

    .line 712
    const-string v0, "hourOfDay"

    invoke-virtual {p1, v0}, Lcom/millennialmedia/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/millennialmedia/google/gson/stream/JsonWriter;

    .line 713
    const/16 v0, 0xb

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lcom/millennialmedia/google/gson/stream/JsonWriter;->value(J)Lcom/millennialmedia/google/gson/stream/JsonWriter;

    .line 714
    const-string v0, "minute"

    invoke-virtual {p1, v0}, Lcom/millennialmedia/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/millennialmedia/google/gson/stream/JsonWriter;

    .line 715
    const/16 v0, 0xc

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lcom/millennialmedia/google/gson/stream/JsonWriter;->value(J)Lcom/millennialmedia/google/gson/stream/JsonWriter;

    .line 716
    const-string v0, "second"

    invoke-virtual {p1, v0}, Lcom/millennialmedia/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/millennialmedia/google/gson/stream/JsonWriter;

    .line 717
    const/16 v0, 0xd

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lcom/millennialmedia/google/gson/stream/JsonWriter;->value(J)Lcom/millennialmedia/google/gson/stream/JsonWriter;

    .line 718
    invoke-virtual {p1}, Lcom/millennialmedia/google/gson/stream/JsonWriter;->endObject()Lcom/millennialmedia/google/gson/stream/JsonWriter;

    goto :goto_0
.end method
