-- TODO: add hashtags varchar(255) []
create table news (
    id          serial       primary key    ,
	platform_id int                 not null,
	author_id   int                         ,
	link        varchar(255) unique not null,
    title       varchar(255)        not null,
	content     text                        ,
	image       varchar(255)         ,
	category    varchar(255)        not null,
	created_on  timestamp           not null,
	FOREIGN KEY (platform_id) REFERENCES platforms (id),
	FOREIGN KEY (author_id)   REFERENCES authors (id)
);


--
-- PostgreSQL database dump
--

-- Dumped from database version 14.1 (Debian 14.1-1.pgdg110+1)
-- Dumped by pg_dump version 14.5

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Data for Name: news; Type: TABLE DATA; Schema: public; Owner: admin
--

INSERT INTO public.news (id, platform_id, author_id, link, title, content, image, category, created_on) VALUES (1, 26, NULL, 'https://cointelegraph.com/news/bitcoin-battles-whales-above-22k-as-btc-price-faces-us-cpi-data', 'Bitcoin battles whales above $22K as BTC price faces US CPI data', 'Bitcoin bulls are now attacking the “final” major resistance cluster below $25,000, on-chain data shows.

1546
Total views
24
Total shares
Listen to article

3:46
Bitcoin battles whales above $22K as BTC price faces US CPI dataMARKET UPDATE


Bitcoin (BTC) continued to battle major resistance on Sep. 13 as markets prepared for United States inflation numbers.


BTC/USD 1-hour candle chart (Bitstamp). Source: TradingView
“Serious” whales present new BTC price hurdle
Data from Cointelegraph Markets Pro and TradingView tracked BTC/USD as it sought to push through $22,500.

The bulls had attempted to vanquish a wall of seller interest in the range just above $22,000, this proving especially stubborn and leading to an overnight consolidation phase.

On-chain monitoring resource Material Indicators highlighted the struggle in a screenshot of the Binance BTC/USD order book the day prior.

Let''s see if they are hungry enough to snack on $13M in #BTC ask liquidity.#FireCharts pic.twitter.com/GY3giu7Mh8

— Material Indicators (@MI_Algos) September 12, 2022
For fellow analytics platform Whalemap, meanwhile, it was no wonder that the current range was a sticking point for the bulls.

“The new area to keep an eye on: $22,780 - $23,400,” the Whalemap team told Twitter followers:

“This one is serious BUT is the last one inside our current 19k - 25k range.”

Bitcoin large wallet inflows annotated chart. Source: Whalemap/ Twitter
An accompanying chart showed the extent to which large-volume wallets had accumulated at various levels in the past. Resistance near spot price was thus all but guaranteed.

As Cointelegraph reported, these clusters of whale activity had effectively sealed the most recent BTC price bottom.

Further analyzing the situation, popular trader Crypto Ed remained confident that a price correction should now enter but noted that spot buyer interest nonetheless remained.

#BTC a correction down would absolutely make sense (small CME gap), but check how spot keeps buying this (white indicator). pic.twitter.com/XbXATe8W8I

— Ed_NL (@Crypto_Ed_NL) September 13, 2022
In a previous update, Crypto Ed had given a potential downside target of $20,800.

CPI showdown due in hours
For Michaël van de Poppe, CEO and founder of trading firm Eight, the day was still all about the U.S. Consumer Price Index (CPI) print for August.

Related: The Fed, the Merge and $22K BTC — 5 things to know in Bitcoin this week

Poised to confirm the ongoing trend of declining inflation, CPI promised volatility across risk assets around the reveal date, slated for 8:30 am EST.

“Today is the big day on CPI. Expectations are that month-over-month will be -0.1% and year-over-year 8.1%,” Van de Poppe explained:

“If it’s going to be higher than those numbers, probably we''ll be seeing a heavy reaction negatively on risk-on. If it’s lower -> positive reaction. Simple.”
The U.S. dollar index (DXY), a key driver of risk asset downside, steadied its fall from recent days, attempting to preserve 108 as support.', 'https://i.ibb.co/q9ycPcQ/image.png', 'Bitcoin', '2022-09-18 15:50:35.633951');
INSERT INTO public.news (id, platform_id, author_id, link, title, content, image, category, created_on) VALUES (2, 18, NULL, 'https://www.bloomberg.com/news/articles/2020-12-02/how-to-buy-bitcoin-btc-beginners-guide-to-investing-in-the-cryptocurrency?srnd=cryptocurrencies-v2&leadSource=uverify%20wall', 'How to Buy Bitcoin: A Guide to Investing in the Cryptocurrency', 'One minute Bitcoin’s price is up. The next it’s down. First Elon Musk loves it. Then he isn’t so sure. Some countries are embracing Bitcoin as legal tender. Others have some serious questions.

Bitcoin has been on a wild ride over the past few years. Five years ago, a single Bitcoin was worth around $1,000. In 2021, that value skyrocketed to almost $70,000. It has fluctuated a lot since then, but few other assets have seen such appreciation — and gyration — as the world’s largest cryptocurrency.

When Bitcoin’s price tanks, you’ll often hear a favorite refrain of crypto advocates: buy the dip.

But how? If you’re new to Bitcoin, it may seem like there’s no clear starting point. Your brokerage may not offer you the option yet. We can bring you up to speed.

Cryptocurrencies have a reputation for being difficult to understand, so don’t be embarrassed if you’re wondering. The Harris Poll recently found that 61% of people who had heard of cryptocurrencies still had little or no understanding of how they work.

It doesn’t help that the internet is littered with often contradictory, difficult-to-verify information. Every time Dan Herron typed “how to invest in Bitcoin” into Google, he got “10 million sources and no authority.”

This concerned the financial adviser at Elemental Wealth Advisors in San Luis Obispo, California. He wanted to learn about the cryptocurrency for his millennial clients and, of course, had been watching the asset’s price rise. A two-day Bitcoin conference he attended left him with more questions than answers — and a sense that the culture around the currency might be a little too “bro-tastic.”

Then he found Coinbase Inc. The digital currency exchange — the largest in the U.S. and most commonly used in the U.K. — increasingly represents the mainstream route for individual investors to buy Bitcoin in many countries.

The bourse went public in April 2021. Coinbase’s direct listing was taken as a sign that crypto had made the investing mainstream. After all, it would be a public company, subject to the intense regulatory and reporting scrutiny of conventional large firms.

Bitcoin’s price has tumbled since that time, as has Coinbase’s share price. And it’s not the only game in town. Other major exchanges include Kraken, Bittrex and Binance, the world’s largest spot crypto exchange by trading volume.

The case for Bitcoin as a longer-term investment
Some, including Herron, see Bitcoin as part of a broader investment strategy, particularly for younger investors who have a time horizon of 25 to 30 years and a penchant for digital finance.

He wouldn’t recommend anybody rush to put their emergency savings in the cryptocurrency. But he does see it as part of an overall mix that might “juice your returns a little bit.”

“You might consider it if you have the ability to maybe put 5% of your portfolio in there, and just let it rise and see what happens,” he said.

Bitcoin is sometimes referred to as “digital gold.” Many advocates claim that the cryptocurrency is a good hedge against inflation, which has been surging lately. Their logic is that, because Bitcoin is designed to have limited supply, it can’t be devalued by a government or central bank distributing too much of it.

Yet more recently, experts have questioned Bitcoin’s utility as an inflation hedge, cautioning that it comes with its own risks. Case in point: the price of Bitcoin has fallen about 30% since its recent high in early November, even as inflation has surged to 7.9%.

Others worry about its volatility
Dana Menard, the founder and CEO of Twin Cities Wealth Strategies Inc., is bullish on the currency’s performance but has regulatory concerns.

“Without the SEC’s blessing, the difficult thing for Bitcoin is the lack of oversight and Wild-West speculation that has caused prices to make large moves in short periods of time,” he said, referring to the U.S. Securities and Exchange Commission.

President Joe Biden signed an executive order in March 2022 directing government agencies to focus more on cryptocurrencies, but it fell short of providing clear guidance on future regulation. The directive calls for studies and policy recommendations on issues ranging from a digital U.S. dollar to combating illicit finance. 

Menard also urges caution when consulting advice about Bitcoin online. “It’s unregulated, so anyone and everyone can give advice,” he said. Not everyone will have your best interests in mind.

“To me it looks like fool’s gold,” said Mike Caligiuri, founder and chief executive of Caligiuri Financial in New Albany, Ohio. The fee-only planner worries foremost about the currency’s volatility. “It’s a relatively new asset class that has a relatively unproven track record.”

Because of this, Caligiuri takes issue with a common refrain of Bitcoin advocates: that it serves as a helpful hedge in a portfolio because it is not correlated to the performance of stock or bond markets or commodities. “Investors do not only want assets in their portfolio that are not correlated,” he said. “They want assets in their portfolio that are both not correlated and assets that they believe with a high degree of certainty will increase over time.”

Buying Bitcoin: The Basics
What Are You Actually Buying?
Not a physical coin. “It’s literally just a number,” said Carsten Sorensen, an associate professor at the London School of Economics who leads a course on cryptocurrency. Depending on how much you want to spend, you can buy one Bitcoin, 10 Bitcoin or a fraction of a Bitcoin. According to its founding protocol, only 21 million will ever be minted.

Because Bitcoin can be divided out to eight decimal places, small fractions of a whole can be purchased. So, if you bought $100 worth of the cryptocurrency when it was trading at around $19,000, you’d get roughly 0.0053 of a Bitcoin.

I’ve Heard About Bitcoin Wallets. Do I Need One?
Yes and no. If you use certain brokers such as Robinhood, you can purchase without setting up your own wallet. Robinhood holds custody of the coins. But if you want to buy Bitcoin on your own, you have to set up a wallet.

In general, a wallet is the address where your Bitcoin lives. Wallets are what they sound like — places to store currency — but, in the case of Bitcoin, they’re virtual. Some popular wallets include Blockchain.com, Exodus, Electrum and Mycelium. You can access them on your phone or computer. But if you lose your keys, you can lose access to your assets.

Hardware wallets, which are places to store your Bitcoin that are completely severed from the internet, add an extra layer of protection from hackers. The good news is that opening many wallets is free. You may pay a minimal fee to move Bitcoin into or out of a wallet.

If you’ve read about Bitcoin, you’ll know that it has a reputation for anonymity. Wallets allow for this. You need a wallet to transfer Bitcoin, but you don’t need to link your name or phone number to many wallets. 

How Do I Buy Bitcoin?
As mentioned above, your most likely destination is a Bitcoin exchange. (Yes, you may have seen in-person Bitcoin vending machines, but these are mostly novelties.)

You’ll create an account and enter a payment method. At reputable exchanges you’ll be asked for information such as your bank account details or a debit or credit card. You’ll then need to prove your identity with a driver’s license, ID or passport. After you’ve been verified, you can start buying Bitcoin with your chosen payment method, transferring it to your personal wallet and watching with greater interest as its price fluctuates.

Can I Buy Stuff With My Bitcoin?
Sure. Some vendors have started accepting it as payment. These range from small shops to a Swiss ski resort. But most people don’t really use Bitcoin to buy things, and instead use it as an investment or a store of value — in the way people purchase gold but don’t use it to buy everyday objects.

Some skeptics doubt the cryptocurrency will become a universal currency any time soon. But Bitcoin as a means of payment got a boost in 2020, when PayPal Holdings Inc. announced in October that it would allow customers to use it and other virtual currencies to shop at the 26 million merchants on its network. In 2021, Elon Musk said Tesla Inc. would allow transactions in Bitcoin, then backtracked on environment concerns, only to reverse course once again on the condition that mining is done with more clean energy.

What About a Bitcoin ETF?
One of the most eagerly anticipated developments in the world of exchange-traded funds was the approval of an ETF linked to Bitcoin. After almost a decade of waiting, that finally happened in 2021. For many years, financial firms claimed that creating Bitcoin-linked funds would make it easier for investors to access the cryptocurrency. That may have been true before it went mainstream, but the argument has lost some steam as platforms for buying and selling crypto have become more common.

Still, the appeal of Bitcoin-linked ETFs has persisted. The ProShares Bitcoin Strategy ETF, the first one listed in the U.S., debuted as the second-most heavily traded fund on record. 

What’s unique about this ETF and its peers is that they actually track Bitcoin futures, not Bitcoin itself. While it might seem like semantics, there are important differences between a fund tracking futures instead of holding actual Bitcoin. You can read all about those differences — as well as the pros and cons of buying a Bitcoin futures ETF — in this helpful guide.', 'https://i.ibb.co/QpqwbRc/image.png', 'Bitcoin', '2022-09-18 15:50:35.663019');
INSERT INTO public.news (id, platform_id, author_id, link, title, content, image, category, created_on) VALUES (3, 5, NULL, 'https://www.forbes.com/sites/javierpaz/2022/08/26/more-than-half-of-all-bitcoin-trades-are-fake/?sh=27d484906681', 'More Than Half Of All Bitcoin Trades Are Fake', 'A new Forbes analysis of 157 crypto exchanges finds that 51% of the daily bitcoin trading volume being reported is likely bogus.
Within the emerging and turbulent market for cryptocurrencies, where there are no fewer than 10,000 tokens, bitcoin, is the great granddaddy, the blue-chip, representing 40% of the $1 trillion in crypto assets outstanding. Bitcoin is crypto’s gateway drug. An estimated 46 million adult Americans already own it according to New York Digital Investment Group, and an increasing number of institutional investors and corporations are warming to the nascent alternative asset.

But can you trust what your crypto exchange or e-brokerage reports about trading in the most important digital currency?

One of the most common criticisms of bitcoin is pervasive wash trading (a form of fake volume) and poor surveillance across exchanges. The U.S. Commodity Futures Trading Commission defines wash trading as “entering into, or purporting to enter into, transactions to give the appearance that purchases and sales have been made, without incurring market risk or changing the trader''s market position.” The reason why some traders engage in wash trading is to inflate the trading volume of an asset to give the appearance of rising popularity. In some cases trading bots execute these wash trades in tokens, increasing volume, while at the same time insiders reinforce the activity with bullish remarks, driving up the price in what is effectively a pump and dump scheme. Wash trading also benefits exchanges because it allows them to appear to have more volume than they actually do, potentially encouraging more legitimate trading.

There is no universally accepted method of calculating bitcoin daily volume, even among the industry’s most reputable research firms. For instance, as of this writing, CoinMarketCap puts the latest 24-hour trading of bitcoin at $32 billion, CoinGecko at $27 billion, Nomics at $57 billion and Messari at $5 billion.

Adding to the challenges are persistent fears about the solvency of crypto exchanges, underscored by the public collapses of Voyager and Celsius. In an exclusive interview with Forbes in late June, FTX CEO Sam Bankman-Fried commented that there are many exchange bankruptcies yet to come.

A significant repercussion of this lack of faith in its underlying markets is the Security and Exchange Commission’s refusal to approve a spot bitcoin ETF.

Unfortunately for the bitcoin ETF hopefuls, many of these fears and criticisms are valid. As part of Forbes research into the crypto ecosystem using 2021 data, we ranked the 60 best exchanges in March. More recently we conducted a deeper-dive into the bitcoin trading markets to answer a few pressing questions:

Where is bitcoin traded?
How much bitcoin gets traded every day?
How is bitcoin traded?
Our study evaluated 157 crypto exchanges across the world. Here are our main findings:


More than half of all reported trading volume is likely to be fake or non-economic. Forbes estimates the global daily bitcoin volume for the industry was $128 billion on June 14. That is 51% less than the $262 billion one would get by taking the sum of self-reported volume from multiple sources.
Tether, the world’s largest stablecoin, continues to be a dominant player in the crypto trading economy, especially when it comes to trades against bitcoin. Its current market capitalization is $68 billion, despite questions about its reserves.
In terms of how much bitcoin activity takes place at these firms, 21 crypto exchanges generate $1 billion or more in daily trading activity, while the next 33 exchanges had volume between $200 million and $999 million across all contract types, spot, futures and perpetuals. Perpetual futures, or perpetual swaps as they are also known, are futures contracts that don’t require investors to roll over their positions. Binance is the clear leader, with a 27% market share, followed by FTX. Looking only at spot bitcoin, the top position is shared by Binance, FTX, and OKX. Chicago-based CME Group is the market leader in bitcoin futures trading.
The biggest problem areas regarding fake volume are firms that tout big volume but operate with little or no regulatory oversight that would make their figures more credible, notably Binance, MEXC Global and Bybit. Altogether, the lesser regulated exchanges in our study account for approximately $89 billion of the true volume (they claim $217 billion).
The creation of new trading assets and products such as stablecoins and perpetual futures adds complications for national authorities seeking to regulate crypto markets. Major U.S. exchanges hardly utilize these instruments or contracts in any of their trading. However, offshore exchanges make significant use of them as ways to synthetically create U.S. dollar liquidity on their platforms (they cannot get U.S. bank accounts).
In the Western world and particularly in the U.S., it is tempting to think of bitcoin only trading against either the U.S. dollar or the euro and British pound. But some of the largest trading pair activity occurs against fiat currencies like the Japanese yen and Korean won and against major stablecoins like Binance U.S. dollar and the USD coin.
573 million people visit crypto exchange websites on a monthly basis.
We hope that this report builds on top of the important work done by other digital asset researchers such as Bitwise, which estimated in a March 2019 white paper that 95% of CoinMarketCap’s bitcoin trading volume was fake and/or non-economic.


Our Approach
Forbes uses quantitative and qualitative analyses to adjust trading volume reported by the exchanges. Unlike other methods that carry out tests on transactional data (and can also be duped), Forbes grades a firm’s credibility by evaluating no fewer than five datasets that together inspire or diminish confidence in a firm’s self-reported data. Data comes from four crypto media firms, CoinMarketCap, CoinGecko, Nomics and Messari, as well as multiple exchanges and two other third-party data providers.

We apply volume discounts based on a proprietary methodology that relies on 10 factors such as an exchange’s home regulator if any and volume metrics based on an exchange’s web traffic and estimated workforce size. We also use the number and quality of crypto licenses as proxy to gauge the sophistication of each crypto exchange in matters pertaining to regulation and trade surveillance. If a firm shows a commitment to transparency by conducting token proofs of reserve or by participating in Forbes crypto exchange surveys, it qualifies for a “transparency credit” that lowers any discount that may otherwise apply.

Many of these factors were also present in Forbes’ crypto exchange ranking formula. We divided them into three categories:

Group 1: 49 crypto exchanges that were assigned discounts of 0-25% generated $39 billion of real bitcoin trading activity across all markets–spot, derivatives and futures–on June 14.

Group 2: 73 exchanges with volume discounts of 26% to 79% generated $81 billion in transactional activity (vs. $158 billion claimed)

Group 3: The remaining 35 firms were penalized with a high discount rate (80-99%) and traded $7.7 billion out of $59 billion claimed.', 'https://i.ibb.co/8Dm1562/image.png', 'Bitcoin', '2022-09-18 15:50:35.674715');
INSERT INTO public.news (id, platform_id, author_id, link, title, content, image, category, created_on) VALUES (4, 24, NULL, 'https://cointelegraph.com/news/bitcoin-hits-3-week-high-as-trader-says-all-signs-there-to-short-btc', 'Bitcoin hits 3-week high as trader says ''all signs there'' to short BTC', 'Bitcoin (BTC) kept grinding higher at the Sept. 12 Wall Street open as traders called for an imminent correction.


BTC/USD 1-hour candle chart (Bitstamp). Source: TradingView
$23,000 proves essential to flip
Data from Cointelegraph Markets Pro and TradingView showed BTC/USD hitting $22,481 on Bitstamp, its highest since Aug. 19.

The pair had preserved existing gains over the weekend, with a declining U.S. dollar providing a catalyst for risk assets as the week began.

The S&P 500 and Nasdaq Composite Index both traded up 1.1% after the first two hours’ trading. By contrast, the U.S. dollar index (DXY) was down 0.7% on the day.


U.S. dollar index (DXY) 1-day candle chart. Source: TradingView
Analyzing the situation, popular trader Crypto Ed said that the time had now come to eye a corrective move on BTC/USD.

“I would say that all signs are there for some shorts,” he told viewers in his latest YouTube update.

Upside potential was likely limited to $23,000, he suggested, while to the downside, $20,800 was an area of interest.

A CME Bitcoin futures gap left over from the Sept. 10 close, meanwhile, added the area around $21,400 as a possible retracement target.

“I only would be looking for longs if we break $23,000, then for a move towards $28,000–$29,000,” Crypto Ed added.


CME Bitcoin futures 1-hour candle chart with gap highlighted. Source: TradingView
Equally expecting a trend change was Il Capo of Crypto, who on the day reinforced a conviction that the current price strength was simply a relief rally within an overall bear market.

“Most people getting bullish now. Remember that this is a short squeeze, a bounce that happens during a bear market to continue the downtrend afterwards,” he tweeted.

“I still expect a little bit higher ($22500–$23000), but soon I will turn full bearish again.”
Having sealed a weekly close above its realized price, BTC/USD now looked primed to see a daily candle close above the 100-day moving average (MA) for the first time since April.


BTC/USD 1-day candle chart (Bitstamp) with 100-day MA. Source: TradingView
Ethereum struggles on Merge countdown
Less inspiring, meanwhile, was price action on Ethere (ETH), which lost ground on the day despite ongoing hype around the Merge.

Related: The Fed, the Merge and $22K BTC — 5 things to know in Bitcoin this week


ETH/BTC 1-day candle chart (Binance). Source: TradingView
ETH/USD was down 2.2% at the time of writing, while ETH/BTC caught the attention of some market participants.


Bitcoin’s share of the overall cryptocurrency market cap thus saw a stiff rebound on the day after hitting just 38.9%, its lowest since January.', 'https://i.ibb.co/5vRcLvZ/image.png', 'Bitcoin', '2022-09-18 15:50:35.676927');
INSERT INTO public.news (id, platform_id, author_id, link, title, content, image, category, created_on) VALUES (5, 20, NULL, 'https://decrypt.co/105251/how-much-does-cost-mine-1-bitcoin', 'How Much Does It Cost to Mine 1 Bitcoin?', 'JPMorgan strategists may have just called Bitcoin’s bottom price. Others suggest there’s still more pain ahead.
Sujith Somraaj
By Sujith Somraaj
Jul 16, 2022
4 min read
Bitcoin "mining" refers to the activity of generating new BTC. Image: Shutterstock
Bitcoin "mining" refers to the activity of generating new BTC. Image: Shutterstock





In a recent report seen by Decrypt, investment bank JPMorgan estimates that the production cost to mine one Bitcoin has dropped from $24,000 at the start of June to just $13,000.

Bitcoin’s production cost is an estimate of the average cost for mining one Bitcoin per day. This cost depends primarily on the electricity costs incurred by miners for running their machines, but there are other variables.

So long as the price of Bitcoin holds above this cost, a mining operation remains profitable, and many market observers suggest that production costs also can serve “as the lower bound of Bitcoin’s price range in a bear market.”

According to the New York-based bank, Bitcoin’s bottom could very well be a lowly $13,000, marking a 45% drop from today’s prices.

“While clearly helping miners’ profitability and potentially reducing pressures on miners to sell Bitcoin holdings to raise liquidity or for deleveraging, the decline in the production cost might be perceived as negative for the Bitcoin price outlook going forward,” JPMorgan strategists, led by Nikolaos Panigirtzoglou, wrote.

A graph showing cost of production vs. price of Bitcoin.
They based their estimates primarily on the decrease in electricity use as miners deploy more power-efficient mining rigs.

Still, other metrics paint a slightly different picture for the leading cryptocurrency.

According to data pulled from MacroMicro, for instance, the production cost still hovers at a little over $17,700. “When mining costs are lower than Bitcoin’s market value, more miners will join. When mining costs are higher than miner’s revenue, number of miners will decrease,” the data provider’s site explains.

Both entities calculate Bitcoin’s production cost using Cambridge Bitcoin Electricity Consumption Index (CBECI) data. However, the data provided by CBECI depends on the average electricity costs of the miner, which can deviate widely and affect calculations.

Other costs, including infrastructure, hardware, and hiring employees to maintain mining farms, can also vary.

“The cost of production varies greatly based on the kind of rigs, and the cost of power, but also labor costs and facility maintenance,” Zach Bradford, CEO of Bitcoin mining firm CleanSpark, confirmed with Decrypt.

Bradford added that his team’s analysis puts the production cost even lower than JPMorgan’s.

“With the majority of public miners running latest [generation] rigs, and with strategic power management contracts in place, our internal research puts the number closer to $12,000 for public miners,” he said. “But even within a company, it will vary by facility. CleanSpark, for example, has facilities that are lower than that.”

That means that as long as Bitcoin stays above $12,000, public miners would still turn a profit.

Sam Bankman-Fried talks crypto bailouts, market trends, and the future of FTX.
Press play to hear SBF on gm from Decrypt - a new podcast sharing all the alpha from the biggest names in Web3.


Subscribe on Spotify or Apple Podcasts.

Bitcoin miners capitulate
Regardless of the differences in production costs, almost all miners have come under pressure following Bitcoin’s catastrophic plunge since November.

Glassnode has outlined this stress using something called the Puell Multiple. 

This mathematical model measures the overall income for Bitcoin miners; when the metric is especially low, miners are earning less on average and are more likely to either sell Bitcoin holdings or shutter some machines. These days, they’re certainly earning a lot less than in the past.

“Bitcoin miners are earning just 49% as much as the 12-month average. This implies miner income stress is a likely factor,” Glassnode wrote in a recent report. 

Events like the COVID crash, China’s crypto ban, and recent price action all correlate with a low Puell Multiple, as well as broader miner capitulation.

A chart showing what price of Bitcoin do its miners capitulate.
As the Puell Multiple (orange) drops, the risk of miner capitulation (yellow) rises as miners become less profitable and may be forced to sell their holdings. Image: Glassnode.
Recent headlines also confirm as much.

Last month, publicly traded Bitcoin miner Core Scientific Inc. sold nearly 7,000 Bitcoin at an average price of $23,000. Similarly, Algo Blockchain also sold roughly $15.6 million in the leading cryptocurrency to cover costs.', 'https://i.ibb.co/VJSWjqz/image.png', 'Bitcoin', '2022-09-18 15:50:35.68157');
INSERT INTO public.news (id, platform_id, author_id, link, title, content, image, category, created_on) VALUES (6, 1, NULL, 'https://www.fxstreet.com/cryptocurrencies/news/bitcoin-braces-for-us-inflation-data-as-cpi-nerves-halt-btc-price-gains-202208101032', 'Bitcoin braces for US inflation data as CPI nerves halt BTC price gains', 'Bitcoin (BTC) hit multi-day lows into Aug. 10 as crypto traders braced for impact with fresh United States inflation data. 

Chart

BTC/USD 1-hour candle chart (Bitstamp). Source: TradingView

Trader: Market "could get ugly" if CPI keeps rising
Data from Cointelegraph Markets Pro and TradingView showed BTC/USD dipping to $22,668 on Bitstamp at the most recent daily close — its lowest since Aug. 5.

Bullish momentum had evaporated during the day prior, and the mood among traders was firmly risk-off as markets awaited the latest Consumer Price Index (CPI) readout.

Covering July, the data was due at 8.30am Eastern time Aug. 10, with expectations demanding it show that U.S. inflation had already peaked.

“CPI prints have been pretty pitoval for BTC price action,” Blockware lead insights analyst William Clemente wrote in part of a tweet about the event, adding that CPI would form a “big day” for crypto.

An accompanying chart showed the impact of previous CPI readouts on BTC/USD.

Chart

BTC/USD annotated chart showing CPI events. Source: William Clemente/ Twitter

Trader and analyst Daan Crypto Trades meanwhile gave a CPI reading of 9.1 or above as “bearish” for price action against current expectations of 8.7.

“The market has been pumping on the idea of inflation having likely peaked the past month,” he wrote in a dedicated thread.

If it doesn’t get that confirmation today I think it could get ugly short term as the peak will likely be moved forward another 1-2 months. Which likely means a delayed Fed pivot as well.

Macro analyst Alex Krueger was more dismissive, meanwhile, calling CPI a “little number” while acknowledging its impact on risk asset trends.

BTC price still far from bullish pivot zone
BTC price action thus stayed wedged in a familiar range with classic support and resistance levels still in play.

Related: Bitcoin dominance hits 6-month lows as metric proclaims new ''alt season''

BTC/USD circled $23,000 at the time of writing after dropping more than $1,000 the day prior.

Daan Crypto Trades flagged $24,300 as a crucial level to break and hold for Bitcoin to “fly,” with $21,000 a potential target in the event of a breakdown.

On-chain monitoring resource Whalemap meanwhile continued its analysis of whale buy and sell levels.

“$BTC is back to the whale accumulation area,” the Whalemap team summarized on Aug. 9.

Prices where whales accumulate usually act as support or resistance for price action of Bitcoin. Question is, will we get a bounce again or go deeper.', 'https://i.ibb.co/6R9X7n0/image.png', 'Bitcoin', '2022-09-18 15:50:35.68324');
INSERT INTO public.news (id, platform_id, author_id, link, title, content, image, category, created_on) VALUES (7, 34, NULL, 'https://ambcrypto.com/bitcoin-price-prepares-for-a-sweep-of-29700-again-before/', 'Bitcoin price prepares for a sweep of $29,700 again before…', 'Bitcoin’s price is hovering inside a range that indicates that some sort of stability is back in the markets. However, this might not be for long as BTC is looking to sweep the lows on a macro time frame and on a lower time frame. Until these events transpire, the chances of an uptrend are highly unlikely.

Bitcoin price ready for a quick run-up
Bitcoin price on the 1-hour chart shows a range formation, extending from $29,700 to $32,652. This development indicates that the buyers and sellers are equally matched. Moreover, rangebound movements are easy to predict and trade.

The asset usually sweeps one of the extremes which is followed by a recovery above/below that range. After a successful recovery, the asset targets the range’s other extreme for a sweep.

With Bitcoin price, the range low at $29,700 is likely to be swept first, which will be followed by a rally toward the range high at $32,652.

Therefore, interested scalpers can take advantage of this incoming price move from BTC.


Source: TradingView, BTC/USDT 1-hour chart

Further supporting this uptrend is Bitcoin’s price action from a higher time of 1-day. BTC has set up two distinctive lower lows on 22 January and 11 May, while the relative strength index has created higher lows, revealing a divergence.

This technical formation is referred to as the bullish divergence and is often followed by a spike in the asset’s price. Therefore, interested investors have a double confirmation signal that the Bitcoin price is ready for a quick run-up.


Source: TradingView, BTC/USDT 1-day chart

While the technicals are printing a bullish signal without a doubt, this development comes at a time when the market and its participants are filled with massive uncertainty and fear. To add to their woes, the wallets holding between 10,000 and 100,000 BTC are also showing mixed signals.

From 2 May to 6 May, these market participants bought the dip and increased their numbers from 83 to 89. However, this number dwindled to 84 in the next five days, suggesting that these investors were unsure about their purchase.

To make things interesting, the same investors have bought the dip and pushed their number back to 88, where it currently stands.

Therefore, market participants trading BTC need to exercise the utmost caution due to the current conditions of the crypto ecosystem.', 'https://i.ibb.co/19wjtRb/image.png', 'Bitcoin', '2022-09-18 15:50:35.684881');
INSERT INTO public.news (id, platform_id, author_id, link, title, content, image, category, created_on) VALUES (8, 23, NULL, 'https://beincrypto.com/bitcoin-network-flexes-new-hashrate-highs/', 'Bitcoin Network Flexes New Hashrate Highs', 'The current hashrate and upcoming difficulty adjustment reveal the overall strength of the Bitcoin network.

The hashrate for Bitcoin has reached a new all-time-high at 129 million TH/s. The previous ATH was just under 127 million TH/s on July 28 of this year.

The hashrate saw a substantial decline after the last halving on May 11, dropping to just over 90 million TH/s. This rate, however, was rapidly reversed, as miners reentered the network.

Sponsored

Sponsored
The halving dropped the reward for mining a single block from 12.5 BTC to 6.25 BTC. The decline saw the hashrate drop, as miners who were using out of date equipment were forced to sell stocked bitcoins and close up shop.

BTC Hash Rate
Bitcoin Hashrate graph by Blockchain
These dramatic shifts in hashrate are not surprising. Mining is a costly business, and so decisions miners make can have lasting financial consequences. When the price of Bitcoin increases, the reward for mining a single block increases as well.

The increase in hashrate has triggered an increase in mining difficulty. Difficulty represents the complexity of the equation that must be solved in order to mine the next block.

Sponsored

Sponsored
As the price of Bitcoin increases, miners choose to risk finances in order to mine on the network. However, with increased miner activity, the built-in difficulty adjustment on the network must necessarily tick upwards as well.

The upcoming difficulty adjustment is estimated to be nearly 10%. Network difficulty adjustments have seen sizable shifts over the past months, with the largest increase since January of 2018 taking place this past June.

Bitcoin BTC Hash

Sponsored

Sponsored
These statistics, however, offer little information for predicting future market changes. Hashrate and difficulty cannot indicate what buyers are willing to pay for BTC.

However, these figures do reflect that miners are actively working on the network. This is good news because increased network activity reveals increases in adoption, which could produce future price growth as well.', 'https://i.ibb.co/xMHTyc8/image.png', 'Bitcoin', '2022-09-18 15:50:35.68647');
INSERT INTO public.news (id, platform_id, author_id, link, title, content, image, category, created_on) VALUES (9, 26, NULL, 'https://u.today/bitcoin-embraced-by-americas-oldest-bank-bny-mellon', 'Bitcoin Embraced by America’s Oldest Bank BNY Mellon', 'The Bank of New York Mellon Corp., the oldest banking institution in the U.S., is opening its doors to Bitcoin, according to a Feb. 11 report by The Wall Street Journal. The bank will be able to hold and transfer the world''s largest cryptocurrency as well as other digital assets later in 2021. It already has a team of executives that will focus on integrating virtual currencies into its business. Related Bank of Canada''s Lane Says Cryptocurrencies Like Bitcoin Are "Deeply Flawed" BNY Mellon claims that cryptocurrencies will be treated like any other asset class in spite of their nascency, a first for a major custody bank. Roman Regelman, the bank''s chief executive, is convinced that cryptocurrencies are now breaking into the mainstream. Digital assets are becoming part of the mainstream. As reported by U.Today, Visa recently launched an API pilot program in partnership with Anchorage to give its banking clients access to Bitcoin services.   
', 'https://i.ibb.co/KKwt018/image.png', 'Bitcoin', '2022-09-18 15:50:35.687876');
INSERT INTO public.news (id, platform_id, author_id, link, title, content, image, category, created_on) VALUES (24, 25, NULL, 'https://u.today/cardano-records-five-times-as-many-projects-building-in-months-details', 'Cardano Records Five Times as Many Projects Building in Months: Details', 'Cardano has seen an over fivefold increase in the number of projects building on the network since 2022. According to recent statistics by IOG, 1,093 projects are currently building on Cardano. Ninety-four projects have been launched on Cardano, while the number of Plutus scripts stood at 3,196. The Cardano network has now seen the minting of over six million native tokens across 61,314 minting policies. In late December 2021, U.Today reported the number of projects building on Cardano to be 178, with 13 projects having launched.  Fast-forward to January of this year, the number had jumped to 199, with Cardano creator, Charles Hoskinson, asking, "who wanted to be project 200?." Now, this number has grown, with more than a thousand projects building on the Cardano network. The Alonzo upgrade, which included smart contract capabilities, opened up a wide range of new opportunities for the creation of Cardano''s decentralized applications (DApps), decentralized exchanges (DEXs), and decentralized finance (DeFi) solutions.  Alonzo established a multi-functional environment that enabled the development of smart contracts utilizing Plutus scripts and the native tokens introduced in Mary, building on earlier upgrades (Shelley, Allegra, and Mary). 3204 stake pools on Cardano  Cardano runs 3,204 pools (4,604 unique relays), according to data from Cardano Explorer, which results in an estimated annual usage of 3.156 GWh, or 0.0031 TWh. On the other hand, the expected Bitcoin yearly consumption stands at 285,592 GWh or 285.592 TWh. Cardano is now 90,492 times more energy-efficient than Bitcoin in this comparison. Related Cardano Outperforms PayPal and Netflix with Lower Energy Consumption: Details However, despite the amazing increase seen in the number of projects, the ADA price has underperformed this year owing to the bearish market conditions. At the time of publication, ADA was trading up 1.14% at $0.51.
', 'https://i.ibb.co/8M1wMBw/image.png', 'Altcoins , Blockchain', '2022-09-18 15:50:35.733866');
INSERT INTO public.news (id, platform_id, author_id, link, title, content, image, category, created_on) VALUES (10, 24, NULL, 'https://cryptopotato.com/bitcoin-balance-on-exchange-sees-macro-decline/', 'Bitcoin Balance on Exchange Sees Macro Decline', 'New data suggest that Bitcoins are continuously leaving exchanges.

On-chain metrics reveal that Bitcoin balance on cryptocurrency exchanges continued its macro decline. The figures have reached 2.4 million BTC, which is around 12.6% of the circulating supply.

According to Glassnode, Bitcoin exchange balances witnessed a macro outflow of more than 4.6% of the circulating supply after reaching an all-time high on March 2020.
img1_glassnode
Source: Glassnode
The balance on exchanges shrunk considerably in the last few months.
This is a healthy sign of Bitcoin’s long-term performance and underscores a strong demand at lower price levels.
The reversal in the trend first started in April.
As the crypto winter deepens, some investors offloaded their wallets.
However, on a macro level, players are still holding onto their tokens, but not on the exchanges.
Instead, they are storing their coins offline in crypto wallets.
The crypto analytic firm had earlier stated:
“Bitcoin has seen a near complete expulsion of market tourists, leaving the resolve of HODLers as the last line standing”

The further decline comes in the wake of Bitcoin performing an impressive rally, increasing by over 15% over the past few days. At the time of this writing, the cryptocurrency trades at around $23,600.
Previous reports suggested that the holders of the world’s largest cryptocurrency were in an accumulation mode that subsequently did result in a short-term relief rally.
It will be interesting to see if Bitcoin manages to retain the present momentum.
Craig Johnson, chief market technician at Piper Sandler Companies had recently weighed in on the price action and said that only a close above $26,000 or $28,000 could finally put a stop to the downward slide that the crypto-asset has been on since April.', 'https://i.ibb.co/YLMTWGv/image.png', 'Bitcoin', '2022-09-18 15:50:35.691512');
INSERT INTO public.news (id, platform_id, author_id, link, title, content, image, category, created_on) VALUES (11, 24, NULL, 'https://bitcoinist.com/bitcoin-on-chain-activity-picks-up/', 'Bitcoin On-Chain Activity Picks Up Despite Downtrend', 'Bitcoin is currently trading below $19,000 after marking a new two-month low for the digital asset. The decline in price shows the lack of enthusiasm towards the digital asset despite being the largest in the space. However, despite the downtrend that has brought it to this level, on-chain metrics have lit up green. The recovery in some metrics shows a complete deviation from the price and the network activity.

Bitcoin Hashrate Makes For New ATH
The bitcoin hashrate had seen one of the largest recoveries in the last week. There had been some recline in the bitcoin hash rate last week, but it had quickly picked up this year. The Hash rate had broken above 225 EH/s, putting it incredibly close to breaking its current all-time high of 231 EH/s.



Block production rates had obviously surged with the increase in hash rate. At 6.64 blocks produced per hour for the prior week, the network had recorded its second-largest mining difficulty adjustment of the year at 9.3%. The adjustment brought down the block production rate to 6.2, close to the target of 6.

Bitcoin hashrate

Hashrate nears ATH | Source: Arcane Research
All of the hash rates added last week came as temperatures are beginning to normalize across regions in the United States. This has seen bitcoin miners who had previously taken their operations offline due to the energy crisis come back online and bring their hash rate with them.



The average transaction per block also saw an increase during this time. It went from 1,647 transactions the prior week to 1,868 transactions last week, accounting for a 2.37% increase.

A Sea Of Green
The bitcoin mining hashrate was not the only thing to see green for the week. Other metrics came out with even greater growth for the week. The largest growth was recorded in the fees per day, which has pushed up the percentage of miner revenues made up by fees. A 31.95% growth say fees per day grow from $209,577 to $276,538. This brought the revenue from fees up 0.46% from 1.01% the prior week to 1.47% last week. 



Bitcoin price chart from TradingView.com

BTC price trending at $18,900 | Source: BTCUSD on TradingView.com
Daily transaction volumes were up 23.32% last week, while average transaction values grew 20.47% from $11,422 to $13,760. Transactions per day were also green for the week, coming out to 251,018, up 2.37% from the prior week’s 245,211.

Despite the sea of green that was recorded for last week, though, bitcoin daily miner revenues were down. A -9.54% change had seen miner revenues decline back towards the $18 million level. The other metric that saw red this week was the number of blocks produced which fell 6.63%, from 6.64 to 6.2. ', 'https://i.ibb.co/fxBHLF5/image.png', 'Bitcoin', '2022-09-18 15:50:35.707219');
INSERT INTO public.news (id, platform_id, author_id, link, title, content, image, category, created_on) VALUES (12, 29, NULL, 'https://coincodex.com/article/15879/bitcoin-investors-realized-732-billion-in-losses-in-the-span-of-three-days-according-to-glassnode/', 'Bitcoin Investors Realized $7.32 Billion in Losses in the Span of Three Days, According to Glassnode', 'Key highlights:
Bitcoin investors "locked in" approximately $7.32 billion in losses in just three days, according to on-chain data firm Glassnode
Per the firm, this was the largest USD-denominated realized loss in Bitcoin history
BTC briefly fell below $18,000 before a recovery rally took it back above the $20,000 mark
Bitcoin investors have sold their coins at a loss for an estimated total of $7.32 billion in a span of three days, according to on-chain data firm Glassnode. Their “realised loss” metric uses data sourced from the Bitcoin blockchain to find coins that were sold at a price lower than the price they were bought at.

Per Glassnode’s data, around 555,000 BTC exchanged ownership on-chain while BTC was trading between $18,000 and $23,000. Interestingly enough, even long-term Bitcoin holders were selling off their coins during the recent market crash. Glassnode estimates that approximately 178,000 BTC was sold by long-term holders below $23,000. The company uses the long-term holder classification for BTC coins that are held for 155 days or more.

Another interesting development highlighted by Glassnode is a reduction in the BTC balances held by Bitcoin miners. Per the company’s data, miners spent around 9,000 BTC from their treasuries in the previous week. 

Bitcoin, which was trading around the $30,000 price level in the first 10 days of June, began dropping precipitously on June 12. The sell-off reached its climax on June 18, when the price of BTC briefly slipped below the $18,000 mark. After a modest recovery rally, Bitcoin is now changing hands at around $20,600.  

The downturn in the Bitcoin market has been heavily influenced by the negative momentum in equity markets, which has been driven by macroeconomic concerns. Last week, the U.S. Federal Reserve raised its benchmark interest rates by 0.75%, which is the largest rate hike since 1994. The tightening monetary policy has had an especially noticeable impact on riskier assets like tech stocks and cryptocurrency.

The recent price crash has revealed that many large players in the cryptocurrency markets were either overleveraged or had insufficient risk management practices. Cryptocurrency hedge fund Three Arrows Capital has reportedly failed to meet several margin calls, while crypto lender Celsius is currently not allowing its customers to withdraw funds. Babel Finance, another cryptocurrency lending firm, imposed a $1,500 per month limit on withdrawals as it struggles with liquidity. ', 'https://i.ibb.co/3yrQ6Wk/image.png', 'Bitcoin', '2022-09-18 15:50:35.711457');
INSERT INTO public.news (id, platform_id, author_id, link, title, content, image, category, created_on) VALUES (13, 38, NULL, 'https://coinpedia.org/opinion/cryptocurrency-market-have-reached-their-bottom-says-raoul-pal/', 'Bitcoin to Demonetize Gold – Michael Saylor Predicts the Future of Gold Investment', 'In an interview with Kitco, Michael Saylor information , the former CEO of Microstrategyinformation , predicted that Bitcoin would demonetise gold. “Gold was metallic money for the 19th century,” he said while adding that gold will not be adopted as money in the 21st century. 

Advertisement
He predicted that a spot-based Bitcoin exchange-trade fund might come in a year. He anticipates that the biggest cryptocurrency will develop into an asset of institutional investment grade that will be accepted by influential investors, lawmakers, and regulators.

Saylor claims that due to the volatile nature of the crypto market, conventional economists are sceptical about it.

“The volatility is the price you pay for the performance. If you can’t stomach the heat, you can’t be in the kitchen…I would rather win in a volatile fashion than lose slowly,” he said.

Saylor said that a “great deal of bad behaviour” has been flushed out while talking about broadening the aspects of the crypto market. There is still plenty of unregistered security, he mentioned. 

According to a report by coinpedia, the CEO stepping down from his position was a shocking move as it came after the company lost around $1 billion on its Bitcoin bet amid the rapidly falling crypto prices. 

Saylor has claimed that as an Executive Chairman would focus more on investing in the flagship cryptocurrency. In the interview, he claimed that it was “very clear” to shareholders that Phong Le, the new CEO, is the heir of the company now. “We don’t run the company based on Bitcoin Orginformation 
 volatility,” he added.', 'https://i.ibb.co/5FCCyr8/image.png', 'Bitcoin', '2022-09-18 15:50:35.712855');
INSERT INTO public.news (id, platform_id, author_id, link, title, content, image, category, created_on) VALUES (14, 14, NULL, 'https://cryptodaily.co.uk/2022/06/bitcoin-on-the-brink-what-is-to-follow', 'Bitcoin On The Brink - What Is To Follow?', 'With all the turmoil in crypto, and world markets, the crypto revolution has been put on pause. The flagship cryptocurrency that is bitcoin has approached to within a whisker of the last 2017 bull run high. Will the support hold, or is there yet another leg down for bitcoin and crypto?

Yesterday saw the number one cryptocurrency almost get down to touch the 19,500 support level as Fed chairman Powell delivered his keenly awaited 0.75% interest rate rise, and a promise that another such rise is on the cards next month should inflation remain unchecked.

Perhaps given that the extent of the raise had already been telegraphed to markets, and consequently had already been priced in, markets across the board rallied slightly and all appeared a tadge calmer.

Bitcoin also rallied up and toyed briefly with $23,000. However, today it appears that the rot has returned and bitcoin has fallen under $21,000, down over 6% on the day so far.

So what’s next for the wondrous crypto experiment?

With at least 2 more shoes ready to drop, as Celsius calls in the restructuring lawyers, and Three Arrows Capital potentially is about to go belly up, a lot more sell pressure could return to bitcoin, and obviously bring the rest of crypto down hard.

Mainstream media has made much of the crypto downturn, and has been full of negative reports, generally with a bottom line that investors should avoid crypto like the plague.

For now at least, the libertarian threat from crypto has been averted, and it generally looks like it will take the sector a fair while to recover, especially with potentially a lot more downside on the way.

So where does this leave the average investor, who is incredibly anxious to offset the loss to their purchasing power through rising inflation?

Banks and financial companies that offer less than 1% yield are obviously not going to attract any investor with the slightest bit of common sense.

Gold and silver are certainly options that might protect wealth, but where on earth can investors buy physical metal these days? Buying the paper variety is cheaper than physical, but in these uncertain times third party risk is becoming ever greater.

Equities have also been falling as rising interest rates have their effect. In addition, not all investors are able to evaluate the geopolitical and traditional financial system risks, but things are starting to look fairly desperate in this direction and a winter of discontent might well be approaching for many nations across the world.

When all is said and done, cryptocurrencies, and bitcoin are the long term answer to a world where the fiat currency system is desperately mismanaged, and the only answer to the problem is central bank digital currencies that would enslave us all.

Yes, it may be that crypto goes down a lot lower, but out of the ashes can rise the next world currency, whether that be bitcoin, or another cryptocurrency. Whether they can flourish, or be allowed to flourish is the big question.', 'https://i.ibb.co/p0mjNCs/image.png', 'Bitcoin', '2022-09-18 15:50:35.714075');
INSERT INTO public.news (id, platform_id, author_id, link, title, content, image, category, created_on) VALUES (34, 43, NULL, 'https://www.fxstreet.com/cryptocurrencies/news/tezos-price-prediction-double-bottom-pattern-inspires-15-move-in-xtz-price-202209091544', 'Tezos Price Prediction: Double bottom pattern inspires 15% move in XTZ price', 'A double bottom pattern guides Tezos price on a recovery journey eyeing $1.80.
Weighted social sentiment remains bearish as XTZ price climbs to $1.66.
The 100-day SMA stands in the way of Tezos price achieving its bullish potential to $1.80.
Tezos price is capitalizing on a relief Bitcoin price rally above $21,000 to activate a desired bullish outcome to $1.80. This end-of-the-week jump comes less than a week before the much-anticipated Ethereum Merge. Investors expect the second-largest cryptocurrency''s software upgrade to positively influence prices in the market.

XTZ price jumps after $1.42 support holds
Tezos price breached a significant support range between $1.50 and $1.60 twice in two weeks – forming a double bottom pattern. As crypto prices generally moved up on Friday, Tezos price confirmed the governing chart pattern by cracking through the pattern''s neckline.

A double bottom pattern usually signals a potentially massive trend reversal. The chart illustrates that XTZ price is projected to climb 15.41% to tag $1.80.

 XTZ/USD four-hour chart

XTZ/USD four-hour chart

The Moving Average Convergence Divergence’s (MACD) bullish position on the four-hour timeframe reinforces Tezos price’s bullish outlook. The move from support at $1.42 to the prevailing price at $1.66 ascribes to a buy signal sent when the 12-day Exponential Moving Average (EMA) crossed above the 26-day EMA.

 Tezos Social Weighted Sentiment

Tezos Social Weighted Sentiment

Santiment''s Social Weighted Sentiment (total) reveals that Tezos’s mood remains bearish, notwithstanding the upswing. Usually, the price moves opposite to the crowd''s expectation. With Tezos price sentiment at -1.18%, odds may favor an extended bullish move.

On the other hand, traders must wait for another uptrend confirmation at the 200-day Simple Moving Average (SMA) before going in on XTZ to avoid falling into bull traps. Conservative investors should consider exiting from their positions at the current price, but the most bullish can wait for the trend to mature at $1.80.', 'https://i.ibb.co/QYXhq7K/image.png', 'Altcoins', '2022-09-18 15:50:35.751663');
INSERT INTO public.news (id, platform_id, author_id, link, title, content, image, category, created_on) VALUES (15, 1, NULL, 'https://zycrypto.com/over-half-a-million-bitcoins-currently-held-on-corporate-balance-sheets/', 'Over Half A Million Bitcoins Currently Held On Corporate Balance Sheets', 'Bitcoin has continued to gain acceptance from the mainstream corporate environment. After several years of criticism, Bitcoin is going mainstream with many corporate organizations buying the asset. The latest of these investments is that of financial services company Square buying 4,709 Bitcoin.

This brings the total number of Bitcoins held on corporate balance sheets to at least 598,237. According to BitcoinTreasuries.org, Grayscale maintains its place as the highest corporate holder of Bitcoin with 449,596 BTC. This is followed by MicroStrategy which holds 38,250, and Galaxy Digital Holdings with 16,651. Others are Square which holds 4,709, HUT 8 Mining Corporation with 2,954, Riot Blockchain with 1,053, Cypherhunk holdings with 204, Argo Blockchain with 126, and more.

Bitcoin Treasuries in Publicly Traded Companies
Source: bitcointreasuries.org
The list is however said to be incomplete as members of the crypto Twitter community have been drawing attention to some other major holders of Bitcoin. One of such companies, Kinetic Portfolios through its different subsidiaries has a cumulative BTC holding well over 35,000. Also worthy of note is ARK Investment Management LLC which has 20,226 BTC and ARKW – ARK Next Generation Internet ETF with 17,136. 


Other individual investors such as Wall Street billionaire Paul Tudor Jones have also bought significant amounts of Bitcoin, which has increased the hope that the asset could soon see significant mainstream adoption. Morgan Creek Co-Founder Anthony Pompliano has said this will continue and every corporation will eventually buy Bitcoin as part of its investment. 

As more mainstream investors continue to buy Bitcoin, there is an increasing chance of the price surging in the future. This is because of the limited supply of 21 million coins out of which many have gone out of circulation and lost forever. Bitcoin supporters believe with these factors in place, the cryptocurrency’s price may go as high as $100,000 in the next few years. 

Bitcoin currently trades at $11,088, a price that it reached following the news of Square’s investment. Although a breakout was expected prior to the development, some analysts describe it as a fake breakout that may not stand. What happens next? Will the price crash back down or will the news be able to sustain this level?', 'https://i.ibb.co/gvrFSzW/image.png', 'Bitcoin', '2022-09-18 15:50:35.717044');
INSERT INTO public.news (id, platform_id, author_id, link, title, content, image, category, created_on) VALUES (16, 42, NULL, 'https://crypto.news/bitcoin-uses-0-5-percent-of-worlds-energy-supply-says-peer-reviewed-report/', 'Bitcoin Uses 0.5 Percent of World’s Energy Supply, Says Peer-Reviewed Report', 'Bitcoin’s energy usage has long been a subject of criticism since the issues first came to light. But, most of the revelations are limited to anecdotal evidence or weakly researched primary reports, with future predictions based on such data. To combat the epistemic crisis, a recent peer-reviewed research paper breaks the unresearched monotony, and the evaluated results are nothing short of shocking.

Power Your Home or Transact a Bitcoin?
On May 16, 2018, financial analyst and blockchain evangelist Alex de Vries published “Bitcoin’s Growing Energy Problem” on Joule, a research publication, to apprise the world of Bitcoin’s troubling energy usage.

Utilizing complex monetary models, de Vries combined his calculations with average power costs and publically available bitcoin-mining data. His primary aim was to release a foundational study for the world’s organizations and individuals on which to base their Bitcoin studies.

As per de Vries, the lowest prerequisite wattage to run a mining rig in 2018 is 2.55 gigawatts, which equals the overall power demand of the world’s 118th largest nation, Ireland. Likewise, the researcher states that this sum is equivalent to half a percent of the world’s aggregate power use.

Bitcoin Mining
(Source: Pinterest)

If Bitcoin mining goes on at the same rate, the report predicts its energy usage could measure up to that of the whole of Austria by the end of 2018, utilizing 7.7 gigawatts. Moreover, every Bitcoin transaction uses enough energy to power a home in the Netherlands for a month.

Can Bitcoin Cause Global Warming?
The enormous expenses related to Bitcoin mining, a procedure that performs complex computations per second, has been a critical subject for years. The expansion in the system’s size is directly proportional to its maintaining expenses, and can perhaps use five percent of the world’s energy at its peak. De Vries notes:

“You are generating numbers the whole time and the machines you’re using for that use electricity. But if you want to get a bigger slice of the pie, you need to increase your computing power. So there’s a big incentive for people to increase how much they’re spending on electricity and on machines.”

To ascertain his predictions, de Vries extrapolated the present data, accounting for factors such as inflation and the rise in energy and hardware costs, to the point of equilibrium – which would occur after all blocks are mined, and the system operates solely on transaction fees.

While critics note that the results could be slightly deceiving, the study is based on publicly available data. It is possible that mining organizations like Bitmain haven’t revealed the extent of their operations, and the conclusions could thus vary. But, de Vries remains sure of his predictions, saying:

“Sometimes the best information we’ve got is really shaky eyewitness accounts. That’s the stuff we have to work with.”', 'https://i.ibb.co/SJYSqWj/image.png', 'Bitcoin', '2022-09-18 15:50:35.719873');
INSERT INTO public.news (id, platform_id, author_id, link, title, content, image, category, created_on) VALUES (17, 14, NULL, 'https://www.cryptotimes.io/microstrategy-acquired-additional-7002-bitcoin-for-414-million/', 'Microstrategy Acquired Additional 7,002 Bitcoin for $414 Million', 'Microstrategy’s CEO revealed the purchase of an additional 7,002 BTC at the average price of $59,187 in the fourth quarter.

Microstrategy acquired additional 7,002 Bitcoin for $414 million
In Brief:
Michal Saylor announced the purchase of an additional 7,002 BTC with an average value of $59,187.
Microstrategy Bitcoin stake grows to 121,044 BTC with an average value of $29,044.
On Monday, Microstrategy founder and CEO Michael Saylor announced in a tweet about the purchase of an additional 7,002 Bitcoin (BTC) after spending $414.4 million in cash in the fourth quarter of this year. The average price of an individual Bitcoin is nearly $59,187.


The fund for the recent Bitcoin purchase was raised through selling Microstrategy’s 571,001 shares at a $732.16 price for each. 

With the buying of additional 7,002 shares, now Microstrategy is holding up 121,044 BTC at the time of writing, which total worth at current market value is $3.57 billion. Michal has revealed that the total average purchase of a single Bitcoin is around $29,534.


Last year, The company revealed that it would acquire Bitcoin for its treasury reserve asset citing its long-term return potential.

According to Phong Le, president, and chief financial officer of Microstrategy, the Bitcoin stakes are classified as “indefinite-lived intangible assets under applicable accounting rules”. In other words, when the Bitcoin market value goes below its book value, the company will need to identify impairment charges. These impairment charges can offset its corporate income tax liability. 

Last Year, many firms, individuals, and crypto whales had increased a Bitcoin stake after buying the dip. In this list, El Salvador also bought the dip. Currently, El Salvador holds 1220 BTC after the last buying of 100 Bitcoins.', 'https://i.ibb.co/LYzCLC0/image.png', 'Bitcoin', '2022-09-18 15:50:35.721387');
INSERT INTO public.news (id, platform_id, author_id, link, title, content, image, category, created_on) VALUES (18, 8, NULL, 'https://blockchainmagazine.net/top-4-reasons-to-invest-in-bitcoin-in-crypto-winter/', 'Top 4 Reasons To Invest In Bitcoin In Crypto Winter', 'While the market is collapsing and many are losing money, a staggering number of people constantly debate whether they should invest in Bitcoin or not. It is understandable, considering that not everyone can tolerate the dangers of any investment.

The truth about Bitcoin is that this is right now one of the best times to invest. However, many industry insiders say that Bitcoin has yet to hit its peak, even though the market currently offers opportunities for people to buy the asset.

Under the pseudonym “Satoshi Nakamoto,” a programmer or group launched the first cryptocurrency, Bitcoin, in late 2008. Unfortunately, the digital asset failed to gain much support or confidence from the general public during this period. Sadly, most of them are starting to second-guess their choices. Why? for no reason other than feeling they missed out on a once-in-a-lifetime opportunity.

It’s never too late to invest because there are still a lot of prices for Bitcoin to reach shortly. To clear up any misunderstandings, this article will examine why you should use the most well-liked digital asset while making a few predictions about the price of bitcoin.

It’s essential to remember that Bitcoin is very unpredictable, so if you’re willing to take a chance, make sure you understand what you’re investing in, have a basic understanding of how to acquire cryptocurrencies, and have a prediction of the Bitcoin price. It is possible to become ridiculously wealthy by investing in Bitcoin, but you risk losing everything. Although investing in cryptocurrency might be incredibly profitable, it is often dangerous. You can at least reduce your chances of losing money by being aware of how it works. Keep in mind that even the most seasoned individuals occasionally lose money.

Other significant cryptocurrencies also shared the majority of Bitcoin’s traits. All coins except bitcoin are referred to as alternative currencies (altcoins). Data indicates that there are currently over 20,000 alternative coins on the market. Some of them are;

Ethereum 
Tron
Dogecoin 
Binance Coin 
Polygon Matic, among others.
There are four good reasons to invest in Bitcoin.
Cryptocurrencies, like bitcoin, are digital assets with distinct differences from traditional money but with comparable functions. For instance, they employ P2P settlement strategies without paying transaction fees to the banks. A tangible version of the coins does not exist either. The following are the main reasons you should start investing in bitcoin.


The use of bitcoin is already widespread.

Bitcoin is being adopted at a rate higher than the internet in 1998, and millions of people currently own it. With millions of users worldwide in 2022, bitcoin is already widely considered the future currency, according to bitcoin price predictions. According to projections from booming topics, 108 million individuals will own Bitcoin in 2021. Similarly, there are currently 83 million wallet addresses, according to a statista.com graph, while some estimates claim there are 400,000 daily bitcoin users and 53 million traders.

These projections show that BTC will be widely used as a trading asset or a store of wealth. Importantly, El Salvador made Bitcoin legal tender in 2021, and the nation’s president still buys the help whenever he can. The country is also the first and only one to have BTC in its national treasury. President Nayib Bukele of El Salvador has not hidden his purchases since, and as of 2022, the country had 1,800 bitcoin. Since so many of these people use it and even a whole country has accepted it as legal tender, this proves that Bitcoin is here to stay and might be a wise investment.

The development of Bitcoin has only just begun.

Bitcoin and other cryptocurrencies are relatively young because new coins are constantly circulated. This innovation may create unpredictable price and volatility shifts that offer opportunities for significant rewards. The blockchain technology on which these coins are built can be used to develop NFTs and various decentralized finance systems, much like how it can create future efforts like a metaverse. Due to the tremendous opportunities, the metaverse offers, major firms like Facebook and Microsoft are also aggressively researching it.

Low availability

A commodity with a small supply must have a high price. Only 21 million bitcoins are currently in circulation, and no more can be produced in the future at a steady rate. There are currently more than 19 million in use. This, therefore, guarantees that there won’t be a surplus supply that would eventually affect or even crash its price.

The network is dispersed internationally among thousands of nodes (computers) and millions of users, so you don’t need responsible third parties. Additionally, because Bitcoin is open-source and transparent, anybody can contribute to its development by producing numerous Bitcoin software clients.

Opposition to inflation

In contrast to other global currencies whose governments have authority over them, Bitcoin is immune to inflation. Additionally, the blockchain system has no bounds, so you don’t have to worry about your bitcoins losing value. Inflation has recently been more of an ongoing than a fleeting phenomenon. Global economic markets are observing a slow rise in inflation rates, primarily due to the response of other countries to the pandemic.

The case for Bitcoin can be made as a more “inflation-resistant” asset. As the quickest and most well-known cryptocurrency, Bitcoin is generally seen as a secure inflation hedge by people worldwide. We might even consider it to be a fantastic gold hedge.

Also, read – Top 8 Finest Bitcoin Faucets That Will Be Industry Leaders In 2023

Closing remarks
Bitcoin is one of the best commodities you can buy right now. Although it is unlikely to displace significant centralized currencies, it has changed the financial industry since its introduction in 2009. Additionally, its infrastructure has facilitated significant breakthroughs in decentralized finance (Defi) and supports unbanked customers in remote, low-income locations.', 'https://i.ibb.co/34PZG3q/image.png', 'Bitcoin', '2022-09-18 15:50:35.722733');
INSERT INTO public.news (id, platform_id, author_id, link, title, content, image, category, created_on) VALUES (19, 37, NULL, 'https://cryptonews.net/news/bitcoin/7723825/', 'Who accepts Bitcoin as payment?', '1.Bitcoin as a payment method
Who accepts Bitcoin payments from their users and how to pay with digital coins.

Bitcoin (BTC) is by far the most popular crypto coin of all. More and more people are investing in digital currency, and it is rapidly becoming a widely accepted payment method. The payment technology is developing and companies are starting to accept Bitcoin. But, where can you use Bitcoin as a method of payment?

Although altcoins are expanding their growth, BTC is the most-used payment method for companies and small merchants. In this article, we walk you through the companies that accept Bitcoin and explain how to buy and spend your BTC as well.

2.
Companies that accept Bitcoin
This is a list of some of the biggest places that accept Bitcoin, such as Microsoft and Whole Foods.&nbsp;

First, we&rsquo;re going to take a look at businesses that accept Bitcoin. There are some early adopters, but most of them recently started to accept payments using this digital currency. These major companies are the ones where you can pay via Bitcoin:

Companies that accept Bitcoin as a payment method

Microsoft
Microsoft is one of the early adopters of BTC, as they started accepting payments with Bitcoin in 2014. Users could buy games and applications with digital currencies, but digital coins were far from usual back then, so Microsoft stopped accepting BTC in 2016 and once again in 2018 due to high volatility. We&rsquo;re eight years into the future, and now it&rsquo;s way more usual and trustworthy to pay with digital currencies, like Bitcoin.

Home Depot
Among the stores that accept Bitcoin is one of the largest hardware store chains in the United States, Home Depot. Customers can pay in the most well-known digital currency, but the currency gets converted into U.S. dollars immediately, as Home Depot only wants USD on their balance sheets. This means that you can build and rebuild your whole home as a customer while only spending Bitcoin.&nbsp;

Twitch
Streaming video platform Twitch also started accepting payments in Bitcoin in 2014, but they silently stopped in 2019. Although there are a lot of pros to using BTC as a payment method, it&rsquo;s not stable enough for everyone. One year later, they brought the payment option back. Next to Bitcoin, this platform also accepts Ether (ETH) and less popular digital currencies like PAX, USDP and Binance USD (BUSD).

Whole Foods
Supermarkt company Whole Foods made it possible for clients to pay with Bitcoin, just like Home Depot. The technology behind the store concept converts digital coins directly into USD, with the same technology as the other Amazon companies.

Whole Foods is not only accepting BTC as a payment method in their shop but also upgraded to the Spedn application so that users can buy food groceries by using Bitcoin and Litecoin (LTC), among others.&nbsp;

Gyft
Gift Card Company Gyft enables users to buy, send and redeem their online gift cards for retailers and platforms like Starbucks, Amazon and Sony Playstation. As a user, you can execute every transaction with Bitcoin and all of that without any additional fees.

When you&rsquo;re on the site, it&rsquo;s as easy as it gets. You choose the desired gift card, select BTC as the preferred payment method and then use your crypto wallet to send the payment.&nbsp;

Benfica
Popular sports brand Benfica, officially Sport Lisboa e Benfica, accepts Bitcoin payments from customers. Users can buy everything from merchandise to tickets for games and pay with their digital assets.&nbsp;

Fans can purchase their goods with BTC, Ether and the UTRUST token. By accepting cryptocurrencies as a payment method, they attract tech-savvy supporters and make it easy for them to buy sporting goods from abroad.&nbsp;

Save the children
Save the Children is the biggest and first international NGO that started accepting donations in Bitcoin and other cryptocurrencies in 2013. With the slogan &ldquo;HODLhope,&rdquo; they strive for the right for kids to be healthy, educated and protected.

Virgin Airlines
Richard Branson, founder of Virgin Airlines, has always been an innovator, so no surprise there. His companies, Virgin Airlines and Virgin Mobile, make it possible for users to pay in Bitcoin. Besides that, users could even pay for space travel with this cryptocurrency.&nbsp;

Bitcoin and other digital currencies are often described as the finance of the future. To team up with the future of travel only seems logical. For 16 BTC, you can buy yourself a trip with Virgin Galactic, which will take you to an altitude of more than 50 miles.&nbsp;

Overstock
Lastly, Overstock is one of the Bitcoin vendors that accepts the digital currency as a payment option and holds BTC. Overstock is a tech-driven online retailer that&rsquo;s visualizing dream homes for all.&nbsp;

It&rsquo;s the fifth year in a row that this big e-commerce player accepts not only Bitcoin but all cryptocurrencies including Ether, Litecoin, Dash (DASH) and Bitcoin Cash (BCH).&nbsp;

Wikipedia
Another early starter is Wikimedia, the company behind the famous open-source encyclopedia Wikipedia. They also started to accept Bitcoin in 2014 to allow people to pay for donations. This would have been number two on this list, but after May 2022, they no longer accept cryptocurrency donations.&nbsp;

Wikimedia has several arguments like concerns about the environment, the risk of scams and the fact that only 0.08% of the total amount of donations was received in crypto. The company announced that they stop the crypto donations option for now, but will follow developments closely. As security and stability increase, there is the possibility that BTC will once again become an accepted form of payment.

3.
How do you use Bitcoin?
Buying and selling Bitcoin is not that hard. It all depends on a good crypto exchange and your online security measures.

Now you know what stores accept Bitcoin. But, what you may not know is how to use Bitcoin to buy things. You can look up as many Bitcoin shops as you like, but if you don&rsquo;t know how to pay in Bitcoin, you&rsquo;re at the same place you&rsquo;ve started.&nbsp;

How to buy Bitcoin?
Cryptocurrencies are decentralized by nature. This means that you can&rsquo;t buy them at a traditional bank or investing firm. It&rsquo;s part of the upcoming regulation plan to make this possible, but users have to buy digital coins on a crypto exchange for now. Most well-known crypto exchanges are Coinbase, Binance, Crypto.com and Kraken.&nbsp;

If you want to exchange your U.S. dollars for a cryptocurrency like Bitcoin, you need to know a couple of things. Always think about your security online. Before you can buy, sell or hold cryptocurrencies, you need to set up an account. Most of the time, you need to provide some personal information like your passport and bank account. After that, you can fund your wallet.&nbsp;

This funding process is no more than sending another currency like USD to your online wallet. If you buy BTC, you need to keep it somewhere safe so it won&rsquo;t get stolen. Most-used Bitcoin wallets are Ledger, Exodus and Trezor. Now that your money is safe, it&rsquo;s time to exchange these U.S. dollars for crypto, so it&rsquo;s possible to place an order on an exchange of your choice. However, the process of buying and selling Bitcoin can differ depending on the exchange users go for.&nbsp;

How do you spend Bitcoin?
Now, after buying some crypto, it&rsquo;s time to find out if your favorite store, restaurant or company is a place where Bitcoin is accepted. In the list above, you will already find some popular places to spend your digital money in the list above.&nbsp;

Spending Bitcoin is becoming easier and easier with global merchants accepting it as a payment method. You read above how users could buy Bitcoin and that it&rsquo;s essential to keep digital coins in a wallet to be safe. But, what if users want to spend? Then you follow the steps backward, basically.&nbsp;

Choose the product or service of your choice and select Bitcoin or another cryptocurrency. You need to log in to your crypto wallet, confirm the transaction and send the payment. After that, the deal is complete, and you&rsquo;re ready to receive your order.

', 'https://i.ibb.co/sVQtBNH/image.png', 'Bitcoin', '2022-09-18 15:50:35.724381');
INSERT INTO public.news (id, platform_id, author_id, link, title, content, image, category, created_on) VALUES (20, 22, NULL, 'https://u.today/bitcoin-to-12000-heres-what-peter-brandt-has-to-say', 'Bitcoin to $12,000?
Here’s What Peter Brandt Has to Say', 'In a recent Twitter thread, cryptocurrency Peter Brandt said Bitcoin could be on track to record its fourth correction of up to 80% since 2011. Image by tradingview.com Brandt shared his assessment in response to a tweet posted by Cheds, a pseudonymous cryptocurrency trader and analyst, in which he predicts that the flagship cryptocurrency could end up dropping to $12,000. If that’s the case, this would be the first time a correction goes below the previous all-time high. After starting the week on a strong note, Bitcoin gave up most of its gains. The leading cryptocurrency is now on track to record its tenth consecutive week in the red after the bullish momentum fizzled out. Related Binance CEO Reveals $1.6 Billion Loss in Terra Investments Last month, Guggenheim Chief Investment Officer Scott Minerd predicted that the price of Bitcoin could end up falling to as low as $8,000. Mike McGlone, senior commodity strategist at Bloomberg Intelligence, sees the U.S. Federal Reserve’s hiking of interest rates as the main headwind for Bitcoin. The largest cryptocurrency is down 56.92% from the record high of $69,044 that was achieved seven months ago. #Peter Brandt #Bitcoin Price Prediction', 'https://i.ibb.co/NpYVtDR/image.png', 'Bitcoin', '2022-09-18 15:50:35.727674');
INSERT INTO public.news (id, platform_id, author_id, link, title, content, image, category, created_on) VALUES (21, 15, NULL, 'https://monitalks.xyz/en/news/DOGE-meme-coin-surges-23-percent', 'DOGE meme coin surges 23%. Let’s get the reason', 'Arguably the best-known meme coin DogeCoin wants to repeat its resurgence on the back of the firing of Shiba Inu.

As widely reported, Shiba Inu has been skyrocketing in price over the past week. This has put pressure on rival Dogecoin.
Also, as analysts and data science at Santiment observed, the whales have woken up amid the global and DOGE cryptocurrency market. Whales are considered to be transactions exceeding $100,000 in DOGE.
According to the latest data, whale activity in the other altcoin networks has increased sharply this week. Perhaps something is waiting to happen (or maybe not).
However, in the last hours, the bears have taken over, causing the price to fall by around 3%. Nevertheless, Dogecoin looked good, which created hype around itself.', 'https://i.ibb.co/Ws7Gx5P/image.png', 'Altcoins', '2022-09-18 15:50:35.729148');
INSERT INTO public.news (id, platform_id, author_id, link, title, content, image, category, created_on) VALUES (22, 25, NULL, 'https://finbold.com/eth-circulation-compared-to-market-cap-shows-most-bullish-divergence-since-may-2021/', 'ETH circulation compared to market cap shows most bullish divergence since May 2021
', 'The Ethereum (ETH) Merge upgrade is officially less than two days away as the second largest asset by market capitalization looks set to begin its transition to Proof-of-Stake (PoS) on September 15. 

In light of the interest around the DeFi asset, on-chain metrics are showing positive signs. The ratio between unique ETH being moved and the network’s current market cap is in its best state in 16 months, according to NVT circulation model data from behavior analysis platform Santiment on September 13.



Ethereum token circulation. Source: Santiment
Compared to its market capitalization, the circulation of Ethereum tokens is exhibiting the most bullish divergence it has seen since May 2021, a As traders get ready for the Merge, in turn, the circulation of ETH tokens has rebounded back to a bullish signal.

Nevertheless, there also might be an increase in circulation due to DeFi operations, and concerns about the potential for losing collateral following the Merge, amongst other things.

Merge upgrade has its pessimists
It’s worth mentioning that Marcus Sotiriou, an analyst at digital asset broker firm GlobalBlock acknowledged that the Merge presents several risks that might stand out during the initial stages of the upgrade in a note shared with Finbold on September 12. 

According to Sotiriou, after the transition, some of the challenges likely to emerge will be the inability of users to process the new chain since the software will still be new. 

“Also, some of the APIs could break in ways which many people cannot predict. Furthermore, there could be another delay which would frustrate investors who have been waiting years for this transition to occur,” he said. 

Meanwhile, a popular crypto trader also warned that Ethereum might undergo a pump and dump situation, especially with the distribution of tokens from the old Proof-of-Work (PoW) protocol. Regarding this topic, Kevin Murcko, CEO, and founder of Coinmetro told Finbold:

“Traders are seemingly exercising one of the oldest tricks in the book: ‘buy the rumour, sell the fact’. I would not be surprised to see a price drop in the second half of September. But that won’t stop retail investors, driven by FOMO, from filling their bags in the meantime. In the long-term however, the Merge will undoubtedly have a positive effect on Ethereum.”

He added:

“September is set to become another milestone in the history of cryptocurrencies, and that means an enormous scope for investment returns.”

Finally, Ethereum was trading at $1,720, down 1.37% in the last 24 hours but up 3.94% over the previous week at the time of publication, with a total market worth of $210 billion, according to CoinMarketCap.', 'https://i.ibb.co/Q6mRBb8/image.png', 'Altcoins', '2022-09-18 15:50:35.731161');
INSERT INTO public.news (id, platform_id, author_id, link, title, content, image, category, created_on) VALUES (23, 39, NULL, 'https://coinmarketcap.com/headlines/news/algorand-investments-crypto-lender-hodlnaut/', 'Algorand Revealed Investments Worth $35M In Troubled Crypto Lender Hodlnaut', 'The Algorand Foundation has disclosed that it has invested $35 million in USD coin (USDC) in the beleaguered crypto lender Hodlnaut.

The cryptocurrency lending firm had paused its withdrawals earlier last month.Algorand is a blockchain infrastructure which has embedded smart contract functionality.

The Foundation is a non-profit community organisation that has focused its efforts on the development of the Algorand ecosystem.

It supports the blockchain and also oversees its overall development.

According to a statement provided by Algorand on its website, it supposedly mentions that these funds make up less than 3% of its total assets.

Having said that, it clarified that the investment will not result in any “operational or liquidity crisis” for Algorand Foundation.', 'https://i.ibb.co/bRzhwZN/image.png', 'Altcoins , Blockchain', '2022-09-18 15:50:35.732627');
INSERT INTO public.news (id, platform_id, author_id, link, title, content, image, category, created_on) VALUES (41, 34, NULL, 'https://www.newsbtc.com/news/company/interoperability-in-the-blockchain-what-is-it-and-how-does-it-work/', 'Interoperability in the Blockchain — What Is It and How Does It Work?', 'We’ve all equated decentralization with the blockchain by now, which makes perfect sense as one of the main characteristics of blockchain technology is its decentralized nature.

However, with decentralization comes a lot of uncertainty. How can different blockchains connect? Can we find anything universal about them? It is clear that there are many dilemmas here, which is why blockchain interoperability has become a hot topic in the last few years.

This phenomenon is bound to have a profound impact on the crypto sphere and beyond and will undoubtedly lead to more innovation and growth. But what is it? How does it work? More importantly, what does it mean for you? Let’s find out!



Blockchain Interoperability Explained
Blockchain interoperability is a highly complex technology from a scientific point of view. However, what it does is simple — it allows different blockchains that operate independently to connect and communicate.

Thanks to interoperability, blockchains can share data, information, and more. In other words, regular users get to use different blockchains without worrying about compatibility issues.

For a better understanding, it’s best to consider emails. When you send an email to someone, you don’t have to worry about choosing the same provider the other person uses. They might have AOL, Outlook, Yahoo, or any other service, while you use Gmail or Zoho Mail. It doesn’t matter, as the email will reach the other address regardless of the provider. This interoperability of email technology is what made it so successful and widely adopted in the first place.

With blockchains, this isn’t true. Some blockchains are interoperable, and we have several pioneering this technology, like Polkadot, Cosmos, Cardano, and others. However, most aren’t, so you may not be able to use them all the time.

With blockchain interoperability, every blockchain would be able to interact and send data and messages to another.

Importance of Interoperability for Web3
As we all know, Web3 is on its way. We might not be able to predict how it’ll look, but various blockchains will certainly play a key role.



What’s more, decentralized finances will be one of the biggest parts of Web3, and it’s one of the main reasons why we’ll need to introduce true blockchain interoperability to make this a reality. People will want to manage their finances and make payments across the web and different blockchains without having to use different tokens and coins every time.

Furthermore, different blockchains have different functionalities, and a regular user will have to deal with many of them on a daily basis. This will need to be possible without worrying about interoperability. In essence, without interoperability, it would be as if we couldn’t use various websites and platforms on the web as easily and simultaneously as we do today.

So, if we want to have Web3, we’ll need a way of implementing the latest solutions on the new internet just as we do today. In other words, we’ll need blockchain interoperability.

Examples of Blockchain Interoperability Solutions
At the moment, we have many projects attempting to solve interoperability, each in its own way. Polkadot and Cardano are one of the most prominent blockchains on the web that are dealing with it.

Polkadot uses something called parachains. These work like individual Layer-1 blockchains and can function simultaneously on the Polkadot network. Each chain relies on the security of the main chain but still preserves its individuality.

On the other hand, Cardano focused on smart contracts from the start, which effectively led to interoperability.

Cardano and Polkadot aren’t the only projects trying to solve interoperability between blockchains. We also have a lot of other smaller initiatives that have gone further.

A good example is t3rn, a smart contract hosting platform that offers interoperable smart contract implementations with an added fail-safe mechanism that ensures the reversibility of transactions, another thing that’s currently not possible with most blockchains.

t3rn offers uniform standards for integrating transaction-based and smart contract-driven blockchains through unique gateways. In other words, multi-chain execution and interoperability are assured.

Bottom Line
Blockchain interoperability is a complex topic, and it certainly won’t be easy to implement one solution that will handle interoperability for the entire internet. However, it’s necessary and inevitable for Web3. It will be interesting to see how it is handled in the future, but we hope that you’re now aware of how important it is for the web of tomorrow.', 'https://i.ibb.co/dJyPxVH/Picture15-2.png', 'Blockchain', '2022-09-18 15:50:35.763717');
INSERT INTO public.news (id, platform_id, author_id, link, title, content, image, category, created_on) VALUES (25, 10, NULL, 'https://cointelegraph.com/news/avax-price-rebounds-15-after-crypto-leaks-sell-off-but-avalanche-could-still-bury-bulls', 'AVAX price rebounds 15% after Crypto Leaks sell-off, but Avalanche could still bury bulls', 'Avalanche (AVAX) bulls snubbed the sensational claims made by a self-proclaimed whistleblower website that the project''s parent firm, Ava Labs, paid lawyers to damage its competitors'' reputation.

Avalanche price recovers from serious allegations
AVAX''s price established an intraday high of $19.75 on Aug. 30, two days after bottoming out locally at $17.50, amounting to a 15% rise. The token''s modest recovery followed selloffs incurred by a sensational CryptoLeaks report.


AVAX''s price fell 3.5% on Aug. 26, the day on which CryptoLeaks released an unverified video showing Kyle Roche, the partner at Roche Freedman, saying that he could sue Solana, one of Avalanche''s top rivals, on behalf of Ava Labs.

Related: Ava Labs CEO denies CryptoLeaks'' claims as ''conspiracy theory nonsense''

The token fell by another 7.5% the next day after the whistleblower website released the full report, including another unverified video featuring Roche.


AVAX/USD daily price chart. Source: TradingView
In addition, Avalanche''s intraday losses aligned with similar negative moves across other top crypto assets.

AVAX can rise 55%
Avalanche''s fundamentals are strongly tied to the overall cryptocurrency market, which keeps it prone to undergoing additional downtrends.

Independent analyst PostyXBT noted that AVAX''s price could decline to the $13-$15 range next and to "keep BTC in mind" while placing a short position toward the area. 


Analyst BrechTP also anticipates the price to crash toward $14 based on a "head and shoulder" setup, as shown below.

Related: A sharp drop in TVL and DApp use preceded Avalanche’s (AVAX) 16% correction


AVAX/USD four-hour price chart. Source: BrechTP
Conversely, analyst TraderSZ sees AVAX''s price tcontinue its recovery trend in the coming days. His setup, as illustrated below, envisions the Avalanche token to reach approximately $30 in September.


AVAX/USDT two-hour price chart. Source: TraderSZ/TradingView
The upside target aligns with AVAX''s prevailing "symmetrical triangle" setup. Notably, the price has rebounded after testing the triangle''s lower trendline as support and now sees the structure''s upper trendline as its interim upside target.  

The upper trendline is near the TraderSZ''s price target of $30, as shown below.


AVAX/USD weekly price chart. Source: TradingView
In other words, AVAX could rally by over 55% from its current price levels.', 'https://i.ibb.co/bQ6ckyr/image.png', 'Altcoins', '2022-09-18 15:50:35.735175');
INSERT INTO public.news (id, platform_id, author_id, link, title, content, image, category, created_on) VALUES (26, 31, NULL, 'https://www.bsc.news/post/bnb-chain-announces-the-testnet-launch-of-zkbnb', 'BNB Chain Announces the Testnet Launch of zkBNB', 'Designed to ensure scalability, zkBNB launched on the BNB Chain testnet on Sept. 2 ahead of the official release scheduled for November.

Meet zkBNB on BNB Chain
Leading blockchain BNB Chain announced the launch of zkBNB. Built to solve problems associated with blockchain scaling, zkBNB launched on the testnet on Sept. 2 to allow developers to interact with the code, which has been made open source ahead of the official release scheduled for November.

According to the blog post, zkBNB is designed to ensure scalability on BNB Chain. By leveraging the network security offered by the chain, zkBNB is able to roll up sidechain transactions into a single transaction. This single transaction then generates a cryptographic proof, commonly referred to as a Succinct Non-interactive ARgument of Knowledge (SNARK).

Built to handle a lot of transactions within a short period of time, zkBNB is able to handle transactions from 100 million addresses and process 5,000 to 10,000 transactions per second, according to BNB Chain.

Tool for Web3 Developers
zkBNB exists the serve the varying needs of developers within the Web3 ecosystem. Builders of NFT dApps, for example, can deploy zkBNB’s built-in NFT marketplace and API services. According to BNB Chain, this will “allow teams to construct an ‘out-of-the-box’ marketplace for crypto collectibles and NFTs.”

Also, blockchain gaming and social media projects can be enhanced with zkBNB. The scaling solution will limit long delays relating to on-chain resolutions. With support for a no-hassle tokens operation, developers can easily transfer BNB and BEP20, BEP721, and BEP1155 tokens between BNB Chain and zkBNB.

Lastly, with improved REST APIs, zkBNB can be deployed by blockchain game developers and other content projects to launch faster and more seamlessly.', 'https://i.ibb.co/XX65sVM/image.png', 'Altcoins , Blockchain', '2022-09-18 15:50:35.737858');
INSERT INTO public.news (id, platform_id, author_id, link, title, content, image, category, created_on) VALUES (27, 36, NULL, 'https://finbold.com/xrp-gains-10-in-a-week-as-short-term-technicals-point-at-potential-price-bottom/', 'XRP gains 10% in a week as short-term technicals point at potential price bottom', 'XRP has recorded short-term gains in recent days alongside the general cryptocurrency market, at a point investors are looking for signs of a bottom. The asset is also attempting to put behind the three weeks of sustained weak price action. 

In particular, XRP, Ripple’s native token, was trading at $0.35 by press time, recording gains of almost 10% in the last seven days. During the period, the XRP price peaked at $0.36 on September 10. Amid the rally, the main focus is whether the asset will sustain the gains. 



XRP 7-day price chart. Source: CoinMarketCap
At the same time, the uptick in XRP’s value has emerged from sustained buying pressure over the seven days. Notably, as of September 11, the token had a market cap of $17.73 billion, a growth of 8.5% from the $16.34 billion recorded on September 4. 



XRP 7-day market cap. Source: CoinMarketCap
Ripple’s technicals point to a bottom 
Overall, XRP is showing signs of strength, with the asset’s gauges on TradingView pointing to a possible bottom based on both moving averages and summary. In this case, the summary shows neutrality, while the moving average indicates a ‘buy‘ for the token. 



XRP technical analysis. Source: TradingView
Currently, the price of XRP is expressing bullish sentiments aligning with a projection of a CoinMarketCap crypto community. As reported by Finbold, the community projects that XRP will trade at an average value of $0.49 by the end of September, representing a growth of about 40% from the current price. 

Besides the general cryptocurrency sector price movement, the prospects of XRP have significantly been tied to the ongoing lawsuit between Ripple and the Securities Exchange Commission (SEC). Analysts believe that the case has dragged on for a long time. 

Ripple’s lawsuit with SEC conclusion 
In the case, the SEC is accusing Ripple and its executives of raising over $1.3 billion through an unregistered securities offering. After running for almost two years, the United States-based legal counsel and XRP proponent Jeremy Hogan believe a settlement is about to be made, noting that both parties have laid down their case. 

In a tweet on September 5, Hogan stated that the settlement would likely occur by latest November this year.

If the lawsuit is settled in favor of Ripple, XRP will likely spike in value. At the same time, if the court rules XRP is a security, the price might be impacted, possibly to the downside. However, the ruling will potentially alleviate the ambiguity in regulations, especially in classifying crypto assets as securities. 

It is also worth noting that amid the legal troubles facing Ripple, the number of new accounts created on the XRP Ledger appears to be slowing down. This has emerged despite Ripple’s ongoing inroads to market the XRP Ledger to different players globally. 



XRP Ledger metrics – Number of new accounts activated. Source: xrpscan.com
Although the lawsuit outcome will subject Ripple to either positive or negative reinforcements, the value of XRP is bound to potentially benefit from the company’s ongoing partnerships to facilitate cross-border payments.

The company continues to record partnerships, the latest being with Travelex Bank, launching its cryptocurrency on-demand liquidity (ODL) service in Brazil. ', 'https://i.ibb.co/b5cXpcX/image.png', 'Altcoins', '2022-09-18 15:50:35.739187');
INSERT INTO public.news (id, platform_id, author_id, link, title, content, image, category, created_on) VALUES (28, 13, NULL, 'https://blockchain.news/news/singapores-dbs-acquires-land-in-the-sandbox-metaverse', 'Singapore''s DBS Acquires Land in The Sandbox Metaverse', 'The Development Bank of Singapore (DBS), a multinational financial institution based in Marina Bay Singapore has proposed to secure land in The Sandbox metaverse which is an arm of Animoca Brands, a blockchain virtual, and investment firm.


DBS is set to acquire a 3x3 LAND piece in The Sandbox metaverse, a type of virtual property to experience a better and more sustainable world according to a report.

DBS asserts that it is both the first Singaporean business to collaborate with The Sandbox and the first regional bank to engage with the metaverse. The bank declared that it will also purchase carbon offsets to make its metaverse carbon neutral.

"As we stretch the limits of what the metaverse can do, our cooperation with The Sandbox and Animoca Brands represents the beginning of a thrilling collaboration," said Piyush Gupta, CEO of DBS, "We also look forward to using it as an extra cutting-edge platform to raise awareness of crucial ESG (environmental, social, and governance) concerns and to highlight partners and communities doing admirable work to solve them’’.

DBS Emerging as a Frontier in the Digital Space

DBS’s acquisition of The Sandbox’s property comes after the launch of its crypto exchange for Bitcoin (BTC), Ripple (XRP), Ethereum (ETH), and other altcoins in 2020. According to Gupta, the DBS exchange appears to be the first cryptocurrency exchange that would be backed by a traditional bank.

The multinational bank claimed that despite a significant global decline in the value of digital assets, its purchases of Bitcoin accounted for 90% of all crypto trading activities. The bank has witnessed a high amount of digital exchange which caters to family exchange and institutional investors.

Animoca Brands earlier received new money worth $110 million through the sale of convertible notes according. The Convertible Notes, which were issued at a price of AU$4.5 ($3) and have a three-year expiration date, do not alter the company''s valuation from its previous investment round as stated by the firm.', 'https://i.ibb.co/LDKvMNn/image.png', 'Altcoins', '2022-09-18 15:50:35.741833');
INSERT INTO public.news (id, platform_id, author_id, link, title, content, image, category, created_on) VALUES (29, 4, NULL, 'https://ambcrypto.com/how-uniswap-uni-landed-at-this-same-spot-is-no-mystery-heres-the-catch/', 'How Uniswap [UNI] landed at this same spot is no mystery – Here’s the catch', 'Automated liquidity protocol Uniswap [UNI] steered its way to where it was two weeks back, despite many of its counterparts recording good gains. Despite making huge waves a week ago, it was surprising to see UNI’s price at the exact zone it was during the crypto-market’s capitulation. 

At press time, UNI was trading at $6.54. The crypto’s price performance was particularly underwhelming as it failed to share both Bitcoin [BTC] and Ethereum’s [ETH] uptick on the charts. On the contrary, Curve Finance [CRV], for example, recorded an 11% hike in the last seven days.

Nearing the drop
Not only has UNI underperformed price-wise, its position per the Total Value Locked (TVL) has been threatened too. According to DeFiLlama, Uniswap’s TVL lost 13.63%of its worth in the last thirty days. Also, despite the fact that the TVL was $6.29 billion on 10 August, the project’s chains seemed unprepared to face the hurdle of maintaining its fourth position on the rankings.

At press time, Uniswap’s TVL was $5.65 billion.


Source: DeFiLlama

Now, while other top DeFi protocols were also down per TVL, Uniswap registered the most significant decline. Using Curve as a point of reference, the latter only lost less than 10% of its TVL value. 

Where next – Hinder or boost?
The prevailing momentum may be of disturbance to investors. Hence, it would be wise to assess where exactly UNI stands. On-chain data platform Santiment recently revealed that UNI’s Market Value to Realized Value (MVRV) was not in the best of states. With the value at -6.04, it was obvious that the realized value was more than the market value. In this instance, UNI has not made sufficient profits for investors to sell. 

As for its volume, the initial uptick to 152.1 million looks to have taken a step back. However, concluding that UNI’s doom in the short term is inevitable would be wrong.


Source: Santiment

A look at the altcoin’s price charts seemed to underline the same.

Based on the crypto’s Relative Strength Index (RSI), for instance, UNI was just acting in line after a former overnight level led to a reversal.

However, the RSI had not completely turned bearish. In fact, a look at the On-Balance-Volume (OBV) revealed that UNI was really down per liquidity pumped into its ecosystem. The OBV, at press time, was 201.08 million— A point lower than its levels earlier in the week. ', 'https://i.ibb.co/BjL99Vh/image.png', 'Altcoins', '2022-09-18 15:50:35.743238');
INSERT INTO public.news (id, platform_id, author_id, link, title, content, image, category, created_on) VALUES (42, 7, NULL, 'https://cointelegraph.com/news/sept-22-is-the-date-for-cardano-s-vasil-hard-fork-launch-3-months-after-target-date', 'Sept. 22 is the date for Cardano’s Vasil hard fork launch, 3 months after target date', 'Cardano has set Sept. 22 as the date for its Vasil mainnet upgrade, founder of the blockchain Charles Hoskinson announced on his YouTube vlog Friday. The hard fork was originally scheduled for June of this year and rescheduled twice.

According to Cardano-associated R&D company Input Output Hong Kong (IOHK), which worked on the update, three necessary critical mass indicators have been reached:

“1. 75% of mainnet blocks being created by the final Vasil node candidate (1.35.3)  2. approximately 25 exchanges upgraded (representing 80% of ada liquidity)  3. top 10 DApps by TVL confirming they have upgraded to 1.35.3 on PreProduction and are ready for mainnet.”
IOHK wrote that ou of the top 12 crypto exchanges, MEXC and Bitrue are “ready” for the upgrade, while Binance is “nearly there” and Upbit, Coinbase, WhiteBit, BKEX and HitBTC are “in progress.”


Developers have promised greater scalability and lower fees from the hard fork, which will incorporate the first major upgrade to the Plutus script — the programming language used for smart contracts on the Cardano blockchain. Plutus was introduced in the previous upgrade, named Alonzo, which took place in September of last year.

Related: Cardano gets listed on Robinhood but ADA bulls are running out of steam, risking 40% drop

“If we’ve all done our job right, we will wake up on Sept. 22, and it will be just another day,” Hoskinson said on his YouTube vlog. Later, he added:

“We started and knew that, over time, we could get to what Ethereum has done, but we understood a road map to get there. […] There’s a lot of things on the horizon, especially in 2023.”
The fork is named in honor of Vasil Dabov, a Bulgarian member of the Cardano community who died in 2021. Cardano’s ADA is priced at $0.454 on Friday, up 0.98% over the last week.', 'https://i.ibb.co/s9Z8xF6/image.png', 'Blockchain', '2022-09-18 15:50:35.766454');
INSERT INTO public.news (id, platform_id, author_id, link, title, content, image, category, created_on) VALUES (30, 37, NULL, 'https://coingape.com/markets/litecoin-price-winning-streak-may-break-65-barrier-but-theres-a-catch/', 'Litecoin Price Winning Streak May Break $65 Barrier, But There’s A Catch.', 'A bull cycle within a rising parallel channel pattern strikes the monthly resistance of $65. This horizontal level has limited the bullish growth for the past three months, indicating a high possibility of price reversal. However, even if the Litecoin price breach resistance, the bullish path is filled with more significant obstacles. 
Key points from Litecoin price analysis: 
The LTC price responded to a parallel channel pattern
The LTC price shows supply pressure at the $65 resistance
The intraday trading volume in the Litecoin coin is $605.1 Million, indicating a 3.67% loss.
Litecoin price chartSource- Tradingview

Over the past few weeks, the crypto market witnessed some significant correction which plunged bitcoin and even major altcoin near their 2022 low. Though the Litecoin price went through a similar retracement phase, the coin buyers managed to sustain above the $52.5 support zone.

Thus, after multiple retests to this support, the replenished bullish momentum reverted the prices on September 7th. The bullish reversal also assisted buyers in maintaining a rising parallel channel pattern, which has been carrying the current recovery rally for three months.

The Litecoin price is rising for the fifth consecutive day, registering a 20.2% growth. However, the bullish rally hits the monthly resistance of $65 and struggles to rise above. A bearish reversal from this horizontal level will plunge the price back to support the trendline.

Nevertheless, if the coin buyers manage to breach the overhead resistance, the price could surge 6.5% higher before hitting the pattern’s trendline. Thus, in response to this pattern, the Litecoin price could turn down from this resistance to trigger a new bear cycle.

In addition, the rising channel patterns themselves tend to resume prevailing downtrends. As a result, the LTC price is poised to breach this support trendline, which could intensify the bearish trend.

Therefore, until the prices don’t break the resistance trendline, the altcoin will be under correction threat.

Technical indicator
EMAs: the 20-and-50-day EMA moving sideways accentuates the prior bear trend is fading. Moreover, a crossover between these slopes gives an additional boost for $65 resistance.

Relative strength index: the daily-RSI slope is rising higher into the bullish territory, indicating growing confidence for market participants for the current recovery.

Resistance Levels: $65 and $69.2
Support Levels: $58.8 and $52.6', 'https://i.ibb.co/p0DL71x/image.png', 'Altcoins', '2022-09-18 15:50:35.744696');
INSERT INTO public.news (id, platform_id, author_id, link, title, content, image, category, created_on) VALUES (31, 9, NULL, 'https://beincrypto.com/tether-treasury-has-issued-over-2-2-billion-usdt-on-tron/', 'Tether Treasury Has Issued Over 2.2 Billion USDT on TRON', 'The Tether Treasury has been issuing USDT in record numbers for the past few months. Much of this USDT has gone to TRON (TRX) which now has over 2.2 billion USDT on its network.

TRON’s controversial CEO, Justin Sun, recently touted the milestone on Twitter. 
Tether is now the third-largest cryptocurrency with a market capitalization surpassing Ripple’s XRP. Recently, BeInCrypto reported that 1,850 USDT addresses are being created every hour.

TRON has been known for being led by one of the most notorious sensationalists in the cryptocurrency space. Sun has used every opportunity from Kobe Bryant’s death to the coronavirus outbreak to boost TRON’s profile, often with mixed results.

Now that more than two billion USDT has found a home on TRON, it seems unlikely that the controversial altcoin is going away anytime soon.', 'https://i.ibb.co/235Y5x3/image.png', 'Altcoins , Blockchain', '2022-09-18 15:50:35.747557');
INSERT INTO public.news (id, platform_id, author_id, link, title, content, image, category, created_on) VALUES (32, 40, NULL, 'https://decrypt.co/109561/ethereum-fork-ethereumpow-announces-date-of-mainnet-launch', 'Ethereum Fork EthereumPoW Announces Post-Merge Launch Plans', 'Despite a rocky few weeks since its announcement, the team behind EthereumPoW (ETHW), a proof-of-work splinter from the Ethereum Blockchain, has finally announced plans to launch its hardfork soon after the Ethereum Merge on September 15.

“ETHW mainnet will happen within 24 hours after the Merge,” the @EthereumPow Twitter account posted. “The exact time will be announced 1 hour before launch with a countdown timer, and everything including final code, binaries, config files, nodes info, RPC, explorer, etc. will be made public when the time’s up.”


The Ethereum merge later this week will switch the second largest blockchain by market capitalization to a proof-of-stake consensus mechanism, removing the need for energy-intensive mining operations. This move has caused a rift in the Ethereum ecosystem as miners—unwilling to give up their revenue stream—proposed forking Ethereum or starting to mine other blockchains.

Several exchanges have expressed interest in or have already listed the forked ETHW, including Poloniex, Bitfinex, and Coinbase. ETHW has fallen 49% from its all-time high of $141.36 on August 8 to a current trading value of $29.52, according to CoinMarketCap.

According to the @EthereumPoW account, the mainnet will start 2,048 empty blocks beyond the Merge block, adding padding to ensure that the chainID—a unique identifier to differentiate among blockchains—switches successfully, and that the chain is the longest chain of ETHW.

This offset will also prevent duplicate blocks on both ETH and ETHW.

“Therefore, the Merge block + 2049 will be the 1st block on ETHW that may contain any transactions,” the account says.

EthereumPoW is the brainchild of Chinese crypto miner Chandler Guo, who announced the proof-of-work hardfork on Twitter on July 27, 2022.


ETHW critics, including Ethereum Classic developer Igor Artamonov, took issue with the plan to launch the EthereumPoW mainnet after the merge. “It''s like losing 90% of momentum just on launch," he wrote. "And no one would take it seriously if it''s not a continuous / non-stop chain."

Artamonov also questioned the stated motives of the hardfork.

“The main sell point could be ''PoW is more secure,''" he tweeted. “But they sell it under ''miners need to earn money.'' Why??? That''s stupid. That''s not why people would use a blockchain. ''Safety'' would be a better reason."', 'https://i.ibb.co/cby1rtL/image.png', 'Altcoins , Blockchain', '2022-09-18 15:50:35.748952');
INSERT INTO public.news (id, platform_id, author_id, link, title, content, image, category, created_on) VALUES (33, 31, NULL, 'https://ambcrypto.com/elrond-a-year-to-date-look-into-the-performance-of-egld/', 'Elrond: A year-to-date look into the performance of EGLD', 'In its newly published weekly ecosystem report, Elrond, the scalable smart contract blockchain network, informed users of the developments within its network in the last week. 

With a total address of 1,852,288, Elrond registered a 1% growth in the index of addresses on the network last week. Within the same period, transactions completed on the blockchain grew by 1%. As for EGLD staking on the network, an increment of 0.14% was recorded. 

As of this writing, a total of 13,442,146 EGLD coins were staked on Elrond. This represents a 20% growth in EGLD staking rate on the blockchain on a year-to-date (YTD) basis.


Source: Elrond Explorer

With consistent growth in EGLD staking on Elrond, has there been an all-around growth on the blockchain? Let’s have a look.

A YTD look at Elrond 
According to Elrond Explorer, 56,940,493 transactions have been completed on the network from launch to date. The year so far has been marked by a decline in daily transactions on Elrond. With 71,436 at the time of press, daily transactions on the network have declined by 117% since 1 January.


Source: Elrond Explorer

With a consistent fall in daily transactions on Elrond, data from Token Terminal revealed a consequential decline in daily revenue on the network since March.

As of 11 September, the blockchain network saw a daily revenue of $1,437. According to Token Terminal, in the last 180 days, Elrond’s daily revenue had dropped by 82%, 71% in the last 90 days, and 20% in the last month.


Source: Token Terminal

Interestingly, despite the decline in transactions and daily revenue on the network, users continue to flock to Elrond.

This, however, suggests that the growth in addresses on Elrond has failed to translate into more transactions on the network. Total addresses on Elrond stood at 1,852,372, having grown by 36% since the year started.


Source: Elrond Explorer

What about EGLD? 
Although EGLD staking on Elrond has grown by 20% since the year started, the price of EGLD has failed to see similar growth.

At $53.51 during press time, the price per EGLD coin has gone down by 78% since the year started.

According to data from CoinMarketCap, EGLD traded at $243 at the beginning of the year. With a steep decline in the price per EGLD, daily trading volume for the coin has also dropped over time.

So far this month, the asset’s price has gone up by just 1%.', 'https://i.ibb.co/BBMY0Nq/image.png', 'Altcoins , Blockchain', '2022-09-18 15:50:35.750337');
INSERT INTO public.news (id, platform_id, author_id, link, title, content, image, category, created_on) VALUES (87, 34, NULL, 'https://cointelegraph.com/news/nft-nyc-2022-a-look-inside-a-massive-nft-conference', 'NFT NYC 2022: A look inside a massive NFT conference', 'Cointelegraph senior reporter Rachel Wolfson spent a day exploring NFT NYC 2022 to learn about emerging nonfungible token (NFT) projects and how the sector may advance. A recent market report published by Verified Market Research (VMR) predicts that the NFT market could reach a value of $230 billion by 2030. NFT NYC 2022 certainly demonstrated the potential of the NFT sector, highlighting some of the most promising use cases and industry experts. 

For instance, Camila Russo, founder of The Defiant and author of The Infinite Machine, told Cointelegraph that NFT products should advance to bring value to holders, whether that comes in the form of community building or funding for new projects.

Cointelegraph also visited offsite houses hosted by Ripple and Doodles. David Schwartz, chief technology officer of Ripple, told Cointelegraph about the advantages and disadvantages of NFT projects, while Julian Holguin, CEO of Doodles, explained the importance of a physical NFT minting experience. Cryptocurrency influencers “Girl Gone Crypto” and “Tech Con Catalina” also shared their thoughts on the advancing NFT ecosystem.', 'https://i.ibb.co/GJfjf6c/image.png', 'NFT', '2022-09-18 15:50:35.868999');
INSERT INTO public.news (id, platform_id, author_id, link, title, content, image, category, created_on) VALUES (88, 6, NULL, 'https://decrypt.co/109086/solana-nft-startup-dust-labs-y00ts', 'Solana NFT Startup Dust Labs Raises $7M as y00ts Tops NFT Charts', 'In brief Solana NFT project y00ts launched Monday night, and has yielded over $6 million worth of secondary sales so far.
Dust Labs, the NFT startup tied to y00ts and DeGods, announced on Monday that it has raised $7 million in seed funding.
Solana NFT project y00ts is off to a hot start since launching last night, topping secondary markets as the NFTs sell for a significant premium over the mint price. And amid the hype over the rollout, the Web3 tech company tied to the project has raised a seed round from some notable investors.

Dust Labs, a tech startup linked to both y00ts and the popular DeGods NFT project, has raised $7 million in funding from an array of venture capital firms. Participants in the round include FTX Ventures and Solana Ventures, as well as top Solana NFT marketplace Magic Eden, Solana NFT protocol maker Metaplex, and firms Foundation Capital and Jump.

The startup spawned out of the success of DeGods, currently the most valuable NFT profile picture (PFP) project on the Solana blockchain. It was founded by the creator of DeGods, who goes simply by Frank, but has its own CEO (who goes by Kevin) and is focused on “building software that helps NFT communities bring more value to their holders,” per the website.


Frank told Decrypt in a Twitter DM today that Dust Labs is a “tech company spun off” from the DeGods project, rather than a parent company in the vein of Yuga Labs and the Bored Ape Yacht Club. Dust Labs is credited as having built the y00ts minting website, for example.

Dust Labs’ DUST utility token initially launched as a reward for DeGods holders, and is the only token that buyers can use to mint a y00ts NFT in the primary sale. The token will also be accepted by Magic Eden as it integrates Solana-based tokens from various NFT projects.

An NFT is a blockchain token that can represent ownership in an item, including digital goods like PFPs, artwork, collectibles, and video game items. Solana is the second-largest NFT ecosystem behind Ethereum.

DeGods is a popular Solana NFT project. Image: DeGods
 NFT Revolution
Solana
DeGods Have Ascended: Solana NFT Project Soars Ahead of Buzzy y00ts Launch
As buzz builds around this week’s launch of the y00ts NFT project on Solana—which has attracted celebrities and crypto influencers alike—prices for the team’s current NFT collection, DeGods, s...

News
NFTs
4 min read
Andrew Hayward
Aug 29, 2022
y00ts debuted late Sunday with 15,000 total Solana-based collectibles. The NFTs were available to purchase by DeGods holders, as well as those accepted to an exclusive whitelist in recent weeks—including celebrities like soccer legend Wayne Rooney and comedian Howie Mandel.

Each NFT from the mint is called a “t00b,” and it can be burned (or permanently destroyed) in exchange for the actual y00ts NFT, which is a profile picture. That process is slated to begin on September 9, although it’s unclear whether delays to the initial NFT mint will impact that timing.

Want to be a crypto expert? Get the best of Decrypt straight to your inbox.
Your Email
you@emailaddress.com

Get it!
Minting a t00b NFT costs 375 DUST, which was worth about $875 at the start of the mint last night, but now is worth about $915 as of this writing. Anyone on the y00tlist can mint until 5 p.m. ET today—for 19 hours in total—although the creators said they may extend the window due to technical issues last night. DeGods owners can mint a y00ts NFT at any time, although the mint price is slated to gradually increase over time.

According to data from NFT marketplace aggregator Hyperspace—also a Dust Labs investor—y00ts has already generated more than $6 million worth of secondary sales. The floor price, or cost of the cheapest-available NFT listed on a marketplace, is currently 139 SOL or about $4,400. Some 96% of secondary sales have taken place on Magic Eden.


Last night, y00ts supplanted Ethereum Name Service as the top-selling NFT project across secondary markets, per data from OpenSea, the leading marketplace across all blockchain networks. y00ts is not only the top-selling NFT project of the last 24 hours now, but also over the last week, according to OpenSea’s rankings.

Originally, the y00ts launch was planned to take place on September 2, but was delayed following recent hitches—temporary bans of the y00ts and DeGods accounts on Twitter last week, plus a late “blocker bug” on Sunday prior to the planned deployment. Issues that emerged during the mint were apparently tied to the project’s own tech, not the Solana network—which, prior to recent upgrades, had crashed during high-profile NFT launches.', 'https://i.ibb.co/yYpKsBN/image.png', 'NFT', '2022-09-18 15:50:35.870171');
INSERT INTO public.news (id, platform_id, author_id, link, title, content, image, category, created_on) VALUES (35, 43, NULL, 'https://bitcoinist.com/fantom-foundation-responds-to-conjes-departure/', 'Fantom Foundation Responds To Andre Conje’s Departure', 'Fantom Foundation has responded to the news of Andre Conje exiting crypto. The announcement which came early on Sunday saw Anton Nell and Andre Conje announce their departure from crypto and decentralized finance (DeFi) and any contribution thereof. This had sent shocked the community as it came seemingly out of nowhere, leaving many questioning the fate of the blockchain.

Fantom Foundation had been quick to respond and address these concerns, assuring the community that the departure would not adversely harm the development of the project in any way. The foundation explained that Conje’s contribution to crypto had been immense but that Fantom was not a “one-man team” meaning that the exit of a single dev would not derail the project in any way.
Furthermore, Fantom Foundation added that Conje was not a “core dev”. The project will continue along in its development as there are more than 40 others who continue to work tirelessly towards the success of the network. In addition to hundreds of developers and 100K+ unique addresses that continue to carry out transactions on the network daily.

The foundation referred to Conje as a “big picture guy” who had worked closely with the CEO, but noted that his decision to leave the crypto world would have no impact on the network. Development will carry on as scheduled, the foundation explains, and are still on track to ship notable upgrades expected in the short term.
Why Is Andre Conje Leaving Fantom?
Conje had been a notable figure in the Fantom community going as far back as 2018 given his involvement and contribution to the development of the network. He further went on to spearhead popular projects like Yearn Finance (YFI) and Keep3r Network, alongside others, further solidifying his role as a key player on the Fantom network. This is why the dev’s exit has come as a shock.


Related Reading | Ethereum Gains Edge Over Stock Market, What’s the Key to Fresh Rally
In an announcement that was posted on Twitter, Anton Nell explained that he and Conje had made the decision to leave crypto and DeFi. Explaining the reasoning behind this, Nell said that it was “not a knee-jerk reaction to the hate received from releasing a project, but a decision that has been coming for a while now.” This means that they have been planning the departure for a while.

Following the announcement, the prices of projects Conje was involved with had taken a plunge. Fantom’s FTM token had fallen 8% from above $1.5 to $1.39 and YFI had seen $3k wiped off its value as it plunged from $20K to $17K. These tokens have since begun to find balance after this but continue to suffer effects from the news.', 'https://i.ibb.co/pXrv7h3/image.png', 'Altcoins , Blockchain', '2022-09-18 15:50:35.753014');
INSERT INTO public.news (id, platform_id, author_id, link, title, content, image, category, created_on) VALUES (36, 30, NULL, 'https://cryptopotato.com/tether-launches-usdt-stablecoin-on-near-protocol/', 'Tether Launches USDT Stablecoin on NEAR Protocol', 'NEAR becomes the latest network to onboard the largest stablecoin by market capitalization – USDT.

Tether will be launching its stablecoin (USDT) on NEAR Protocol. With this, the cryptocurrency will be circulating on a total of twelve different blockchains.

According to a press release shared with CryptoPotato, NEAR Protocol will be the next to adopt the leading stablecoin by means of total market capitalization – USDT.

Commenting on the matter was Paolo Ardoino, the CTO of Tether, who said:
We’re excited to launch USDT on NEAR, offering its community access to the first, most stable, and trusted stablecoin in the digital token space. […] The NEAR ecosystem has witnessed historical growth this year and we believe Tether will be essential in helping it continue to thrive.

It’s also worth noting that this particular announcement comes amid a major milestone for NEAR. According to a post on its official Twitter page, the protocol is now home to more than 700 projects.
As mentioned above, with this integration, USDT will be circulating on a total of 12 different networks. Besides NEAR, these include Polygon, Kusama, Ethereum, Solana, Algorand, EOS, Liquid Network, Omni, Tron, and Bitcoin Cash’s Standard Ledger Protocol.
According to Tether’s Transparency page, the current USDT in the company amounts to a whopping $67.7 billion.
Most of it presently circulates on Tron’s network – about $33 billion.
Second in line is Ethereum – $32.3 billion USDT circulates on the network.
SPECIAL OFFER (Sponsored)
Binance Free $100 (Exclusive): Use this link to register and receive $100 free and 10% off fees on Binance Futures first month (terms).

PrimeXBT Special Offer: Use this link to register & enter POTATO50 code to receive up to $7,000 on your deposits.', 'https://i.ibb.co/87mgM4B/image.png', 'Altcoins', '2022-09-18 15:50:35.755954');
INSERT INTO public.news (id, platform_id, author_id, link, title, content, image, category, created_on) VALUES (37, 41, NULL, 'https://coingape.com/near-breaks-5-as-prices-skyrocket-how-much-more-can-it-rally/', 'NEAR Breaks $5 As Prices Skyrocket, How Much More Can It Rally', 'NEAR price is skyrocketing. The token has increased by more than 10% in the last 24 hours. It has also increased by more than 25% in the last 7 days. It is currently trading at $5.18. The token rallied today as news broke that the NEAR Foundation has announced the launch of a $100 million venture capital and venture lab. 

The new launch will aim to broaden the scope of Web3. The launch is in partnership with Caerus Ventures. Just today, NEAR’s market cap increased by 9% in response to the accomplishments of the NEAR protocol.

The venture fund will initially have $50 million, with hopes of an extension to $100 million in Series A funding.

What Is NEAR?
$NEAR is the token of the NEAR protocol, a group that wants to expand the Web 3.0 ecosystem. It also builds tools for Web 3.0 developers, to help code them in JavaScript and Rust for blockchain. Moreover, it also has a scalable blockchain. 

It also introduced its sharding technology to increase the scalability of Web 3.0 apps. Sharding is a technology where transactions are divided into smaller groups for execution and then combined to improve scalability. NEAR’s nightshade sharding technology aims to onboard a billion users on its apps.

Near also has its wallet and staking product. The NEAR wallet is non-custodial. A non-custodial wallet allows a user to be the sole owner of their private key. Non-custodial wallets do not have a potential conflict of interest issues due to centralization.

How Much More Can It Rally
The venture fund announcement by NEAR is not its only accomplishment. It announced that now over 800 Web 3.0 projects are deployed on its protocol. It is also conducting NEARCON in Portugal.

If NEARCON goes well, the price of the token continues to rally. However, investors must be careful of the hawkish stance of the Fed.', 'https://i.ibb.co/dW4047X/image.png', 'Altcoins , Blockchain', '2022-09-18 15:50:35.757425');
INSERT INTO public.news (id, platform_id, author_id, link, title, content, image, category, created_on) VALUES (38, 19, NULL, 'https://blockchainmagazine.net/could-near-cryptocurrency-be-the-next-avax/', 'Could NEAR Cryptocurrency be the Next AVAX?', 'Not long ago, the world viewed cryptocurrency as a word with fishy undertones or some form of underworld banking system where evasive people transact. Still, recently, there has been a wholesome paradigm shift, and more people and countries have become receptive to the crypto world. The world has seen cryptocurrency as more reliable than the fiat system, which is often unable to withstand a recession or a pandemic.

These days, digital currencies are gaining momentum and are standing firm against all forms of monetary storms. Popular cryptocurrencies are leading the area, which include Bitcoin, Ethereum, and recently NEAR. The entire cryptocurrency space is decentralized and is built on the blockchain algorithm.

 

NEAR protocol, Raising Eyebrow 
Although NEAR does not boast of the same popularity as Bitcoin, following the widespread growth and attention of Solana, AVAX, and Luna, NEAR looks sure to be the next big thing. NEAR protocol is the brainchild of famous developers Alex Skidanov and Illia Polosukhin, both of whom have extensive experience in programming.

 

NEAR Protocol has NEAR as its native token and is used to pay for transaction fees and storage. The protocol was created primarily as an Infrastructure for Innovation for hosting decentralized applications (dapps). It is no surprise that it is being mentioned compared to other big giants like Ethereum and the likes. The potential of a new ecosystem championed by the NEAR protocol is being unlocked as silos are removed from the network, allowing quick, secure, and low-cost payment gateways to be realized. 

 

The NEAR Advantage
Projects are being built on the NEAR ecosystem, and consumer demands are growing. Being a system hinged on economic fairness, the NEAR protocol has significantly eroded the role of intermediaries by bringing all financial solutions into a decentralized infrastructure.

 

Investors are already signing up for the NEAR coin, which has many offerings and is fast, reliable, and cost-efficient. The NEAR protocol is user-friendly and incorporates features like human-readable account names instead of only cryptographic wallet addresses. Also, it has a different approach to scalability through sharding. It has helped provide solutions by communicating and validating transactions to other nodes. Check out this tweet to see how a project on the NEAR ecosystem is faring.

 

The NEAR Boom!
Although the crypto space is volatile and difficult to predict, some top experts predict that the NEAR price to be on a long-term increase. For example, wallet investors predicted the future NEAR price forecast for 2026 as $17.32. With a 5-year investment, the revenue is expected to be around +359.28%.

The growth tendency of the NEAR protocol led the Digital Coin Price to predict that the coin might hit its next resistance level of $5.52 by the end of this year. 

Source: Twitter – The insane APR on Ref Finance (A project on NEAR)

With the optimistic predictions and analysis, experts have noted that adding a NEAR token to your portfolio is advisable as it holds long-term earning potential and may offer a good return on investment. Thus, NEAR seems to be an excellent long-term investment even in the face of risk.

Twitter influencers like Oddgems are up on the wave and future of the NEAR protocol. Without a doubt, the NEAR protocol is out as the next big thing in the crypto space. To know more about the NEAR protocol, click here.', 'https://i.ibb.co/kKYQ9gb/image.png', 'Altcoins', '2022-09-18 15:50:35.759143');
INSERT INTO public.news (id, platform_id, author_id, link, title, content, image, category, created_on) VALUES (39, 5, NULL, 'https://www.cryptotimes.io/stellar-review/', 'Stellar (XLM) Review: Features and Pros of Cryptocurrency', 'When compared to their predecessors, all of the burgeoning blockchain systems are counting on three winning combinations: greater transaction speed, scalability, and lower transaction costs. Stellar blockchain is in the same league with its own cryptocurrency XLM. 

Stellar enables users to easily store and transfer value with low fees and no risk of chargeback. It also makes international payments faster and easier. 

Let’s see what more Stellar XLM has to offer.

What is Stellar?
It is sometimes referred to as Stellar Lumens and is an open-source, decentralized protocol that enables cross-border transactions between any two currencies by enabling low-cost digital currency to fiat money transfers. It provides a low-cost, secure, and high-speed platform for moving money around the world.

The network uses a consensus mechanism to verify and regulate the movement of money. The consensus mechanism ensures the elimination of double-spending and the permanent audit of all transactions on the network. 


The consensus process is achieved through a process of “trustworthy nodes” conducting operations in “fair”, “adhering to the rules”, and “trusted” mode. 

Stellar was developed by a group of finance and technology experts with the mission of making money more accessible to people all over the world. It is designed to be used as a digital currency and a platform for distributed apps.

Benefits of buying Stellar (XLM)
Bearish opinions regarding Stellar (XLM) are prevalent on several crypto finance websites, although most of the analysts are positive about it. The above enlisted cryptocurrency overview provides a look at the benefits of XLM to determine if it is a good investment:

After riding in nearly 4 million users tag for almost a year, Stellar’s total accounts grew in its first quarter report. The increase was significant in several areas. The number of payments rose 160.49%, while the usage of Stellar’s DEX increased 196.26%.
There are a lot of exchanges that list XLM as a cryptocurrency, so it’s fortunate that it is fairly well recognized. XLM can be found on eToro, Huobi Global, CoinTiger, FTX, OKEx, and even Binance.
Many novice investors overlook trading volume as a technical indicator. When the market increases, it is commonly accompanied by an increase in trading volume, and Stellar Lumens (XLM) has experienced an increase in trading volume recently.
Benefits of using Stellar
Here are the benefits of using Stellar: 

Excellent reputation – The Stellar team has been in the business for years and has a tremendous track record of delivering services and promises to the satisfaction of the users.
Flexibility – The platform is very flexible, allowing users to set up accounts for different purposes, such as a savings account, a loan repayment account, or even a business account.
Ease of use – The platform makes it super easy to set up an account and send money. Perhaps it’s so easy that you don’t even need to understand how to sign a transaction.
Low Fees – Even though the network is decentralized, low fees are charged for sending or receiving money. This is unlike many of the other cryptocurrencies, where you may be significantly charged for sending money or for accepting a transaction.
Also Read: Top 10 Blockchain Platforms to Look out for in 2022

How to buy Stellar (XLM)
Now that you know what Stellar is and what it can do, let’s look at how and where you can purchase it. Buying Stellar Lumens with a trading platform is the simplest method. It’s critical to distinguish between platforms that enable you to hold on to your own Lumens, and those that enable you to make money on price changes but are less friendly towards withdrawing the tokens. The Changelly digital assets’ exchanger, for example, is a popular choice for advanced users to buy or exchange cryptocurrency. 

Conclusion

The value of cryptocurrencies is only going to rise in the coming months and years. The question is, what should you buy when you first start investing in cryptocurrencies? At the moment, most of the attention is on Bitcoin and Ethereum. However, Stellar is a promising cryptocurrency that offers many advantages over other digital currencies. It is easy to use and offers low fees, making it a good option for small and large transactions. Buying cryptocurrency and holding this coin can give you long-term benefits, as it is a great investment for the future of the cryptocurrency market. ', 'https://i.ibb.co/1bhBKDL/image.png', 'Altcoins , Blockchain', '2022-09-18 15:50:35.760738');
INSERT INTO public.news (id, platform_id, author_id, link, title, content, image, category, created_on) VALUES (40, 29, NULL, 'https://ambcrypto.com/the-graph-can-this-development-push-grt-to-achieve-new-highs-in-the-long-term/', 'The Graph: Can this development push GRT to achieve new highs in the long-term', 'The Graph [GRT] appears to be having a rough time making a comeback after the slap down it received last week. Its attempts at a rally at the start of August demonstrated some promise for the bulls. However, its current performance suggests that it might close the month at a lower price than its price at the start of August.

GRT did manage a 10% recovery as compared to its price of 26 August of $0.11, from its conclusion last week at $0.099. A dismal recovery compared to the 32% margin by which it fell in the previous week. This outcome paints a not so favorable picture for GRT bulls in the short term.


Source: TradingView

The cryptocurrency has already started experiencing some outflows according to the Money Flow Index (MFI). This is after encountering friction at the 50-day moving average.

GRT’s uninspiring performance goes hand-in-hand with the lack of growth in the number of active addresses. The Graph average active addresses in the last four weeks was around 645. There was very minimal deviation from this average during the month and a notable drop below the same average in the last six days.


Source: Santiment

The relatively low growth in the number of active addresses reflects the lack of incentive. An unsurprising outcome considering that The Graph’s network growth has slowed down and is currently at its lowest levels in the last four weeks. It underscores the investor hesitation to buy back even at a discount from last week’s highs. GRT’s volatility index has also taken a hit in the last five days, thus enforcing the same narrative.


Source: Santiment

The silver lining
There is some good news despite GRT’s dampened short-term sentiment. The Graph just unveiled its plans in preparation for the next phase of growth. The blockchain network just rolled out a new program called the Migration Infrastructure Providers (MIP) program.

The Graph Network is growing to support new chains 🛸

Announcing the launch of MIPs, a new incentivized program to welcome the multi-chain future! 🧑‍🚀

The first chain after Ethereum to be indexed?

✨ @gnosischain ✨https://t.co/faPwdWSjUp

— The Graph (@graphprotocol) August 25, 2022

According to the official announcement, the program will facilitate the creation of new chains and subgraphs. The advantage is that it might pave way for more liquidity into the Graph protocol and support more utility. A positive outcome would be increased demand for GRT in the future, thus boosting its long-term outlook.', 'https://i.ibb.co/WGS664g/image.png', 'Altcoins', '2022-09-18 15:50:35.762233');
INSERT INTO public.news (id, platform_id, author_id, link, title, content, image, category, created_on) VALUES (43, 20, NULL, 'https://coingape.com/ethpow-hardfork-gaining-traction-bitmex/', 'ETHPoW Hard Fork Gains Traction After BitMex Announcement', 'The ETHPoW hard fork appears to be garnering more publicity than expected. As the Ethereum community moves closer to The Merge, ETH miners are looking to fork the chain to retain mining revenue.


Some crypto entities have indicated support for this ambition, most notably Tron’s Justin Sun. However, the most recent endorsement move appears to be coming from BitMex.

BitMex will allow margin trading for ETHPoW with up to 2x leverage
Seychelles-based cryptocurrency exchange, BitMex, recently announced that it would be launching margin trading options for the expected ETHPoW fork. The announcement was made on August 8 on the platform’s official page.

According to BitMex, when the margin contract goes live, users will have access to up to 2x leverage trading against USDT-ERC20. Users can already explore the trading opportunity on BitMex’s testnet platform.

BitMex admitted that the asset which would have the ticker ETHPOWZ22, is highly speculative, and it might never exist. Hence, the exchange modified a few leverage trading items including marking method, fees, and price limits, among others.

Buterin does not see the fork as a threat to Ethereum
BitMex had earlier addressed the reality of the ETHPoW fork. On August 1, the exchange noted that the fork could garner interest from notable entities in the space.

“Although there are many technical challenges that ETHPoW faces, as long as the chain survives, it looks likely that there could be positive narratives around the coin and leading centralized exchanges are likely to list it,”

BitMex noted in the publication.

As earlier reported, Chinese miner Chandler Guo last month indicated an interest in forking the ETH chain to preserve ETH mining. This move aims to help miners retain mining revenue which would otherwise be nonexistent in a PoS ETH chain.

As The Merge brings the coalescence of The Beacon Chain and the Ethereum Mainnet, the transition to PoS would make miners obsolete. Guo and other miners do not particularly want this. Since making his intentions known, Guo has received support from certain crypto entities, including Justin Sun.

However, most Ethereum proponents have shown contempt for the fork, noting that anyone supporting it is doing so for selfish reasons. Ethereum co-founder, Vitalik Buterin said the fork does not threaten Ethereum. Buterin also added that the people endorsing it are only looking to make “a quick buck.”', 'https://i.ibb.co/4tBsr5m/image.png', 'Blockchain ', '2022-09-18 15:50:35.767752');
INSERT INTO public.news (id, platform_id, author_id, link, title, content, image, category, created_on) VALUES (44, 2, NULL, 'https://bitcoinist.com/blockchain-industry-workforce-grows-80/', 'Blockchain Industry Workforce Grows 80% This Year, Study Shows', 'Blockchain technology is one of the trendiest developments in business, finance, and numerous other industries. Following the surge in popularity of cryptocurrencies, their entry to the public has produced new investment strategies and opportunities.

There has been a surge in the number of people who have found employment in this burgeoning technological sector as a result of the increasing popularity of blockchain and cryptocurrencies.
According to the conclusions of a survey conducted by the professional networking site Linkedin and the cryptocurrency trading app OKX, the number of individuals working in the blockchain sector “increased by 76% annually as of June 2022.”
Blockchain Space Expanding At Faster Rate
Since its beginning a little more than a decade ago, the blockchain sector has experienced tremendous expansion, but the rate of development has accelerated significantly in recent years.

While the industry and its growth are frequently evaluated based on market capitalization, trading volume, and other financial criteria, the firms comprising this sector are led and managed by people with a wide range of skills.
The United States, India, and China are the top three nations in terms of talent availability in the blockchain business, according to the research.
India ranks second in terms of the number of competent professionals in various types of such applications, including cryptography and financial applications.
In terms of blockchain talent, India trailed the United States, while China ranked third overall. India, on the other hand, was identified as the fastest growing nation in terms of the availability and growth of competent specialists, with a 122% annual growth rate of its talent pool.

Canada follows with a growth rate of 106%, followed by Singapore with a growth rate of 92%.

Nigeria has the fourth-highest worldwide and African rate of talent development, at 81%. China has the lowest growth rate among the top 10 nations in the world for blockchain talent, at 12%.

Global Blockchain Market To Gain $20 Billion Revenue
The global expenditure on blockchain solutions is anticipated to reach $11.7 billion this year. By 2024, it is anticipated that the worldwide blockchain technology market would generate $20 billion in revenue. The number of registered wallets exceeded 70 million in the second quarter of 2021.

Regarding the mix of talent in the industry, the Linkedin/OKX survey concluded that the share of finance talent is the highest, at nearly 20%.

Meanwhile, at 16%, engineering talent represents the second biggest proportion. Talents in business development, information technology, and sales round out the top five with 6% apiece.', 'https://i.ibb.co/GWfFXY2/image.png', 'Blockchain', '2022-09-18 15:50:35.770308');
INSERT INTO public.news (id, platform_id, author_id, link, title, content, image, category, created_on) VALUES (45, 39, NULL, 'https://cryptopotato.com/monero-bug-may-impact-transaction-privacy-team-reveals/', 'Monero Bug May Impact Transaction Privacy: Team Reveals', 'A software developer recently found a bug in the Decoy algorithm of XMR, with some implications in regard to its privacy.

Developer’s of the privacy token Monero (XMR) have found a bug that breaks its transaction privacy, according to recent tweets on Monday.

The official Monero Twitter account warned users of a “rather significant bug” in the Decoy system. The bug was at first discovered by software developer Justin Berman when he found out that if a user spends their XMR tokens after 20 minutes of receiving them (two blocks time), it’s likely that their transaction will be identified as the true transaction, breaking users privacy.


“Today, if a user spends an output right in the block that it unlocks, and the output was originally created in a block that has fewer than 100 outputs total in it, their real output would be clearly identifiable in the ring,” Said Berman.

XMR Community Concerned with Privacy Issues
Despite Monero trying to calm down its community, the announcement had quite an effect on them. Most users on the Twitter thread were worried about their privacy and being exposed to attackers.

However, developers said that users shouldn’t be worried as this bug doesn’t reveal the amount sent or the address and that funds are not at risk of being stolen. It only affects funds sent within 20 minutes of receiving them, which is two-blocks time.

Wait an Hour to Send your XMR
Monero developers said they’re working on fixing the bug in a future wallet software update, and that a hard fork won’t be required to do so. Users should wait at least an hour to send their coins.

Berman also said that Monero currently has a yearly average of around 63 outputs per block, meaning users have been exposed if they sent their coins immediately after receiving them, as transactions are “likely identifiable in rings today.”', 'https://i.ibb.co/gTNjmnk/image.png', 'Blockchain', '2022-09-18 15:50:35.771868');
INSERT INTO public.news (id, platform_id, author_id, link, title, content, image, category, created_on) VALUES (46, 25, NULL, 'https://cryptopotato.com/solana-network-suffers-another-reported-ddos-attack/', 'Solana Network Suffers Another Reported DDoS Attack', 'The Solana blockchain has reportedly suffered another distributed denial-of-service (DDoS) attack in the wee hours of Tuesday morning.

Solana’s blockchain reportedly suffered another DDoS attack earlier today, but the network seems to be back in good standing as of now. This appears to be the third similar incident in the past several months.

Solana’s Tryst With DDoS
According to the prominent Chinese journalist Colin Wu, Solana went down on January 4th. The attacker was suspected of leveraging spam to carry on the distributed denial-of-service attack. The network was back online after approximately four hours. A DDoS attack typically overwhelms or clogs the network by sending multiple requests to the victim’s web resource and hinders the platform from running correctly.


While no official details confirming the event were divulged by the Solana foundation, this incident is the third in the past six months. Additionally, several accounts on Twitter asserted that Solana suffered a “huge slowdown” instead of an outage. Members of the r/CryptoCurrency subreddit also reported the matter and claimed that the “vulnerability of the system” is a “death knell for serious traders.” The post also reads:

“Blaming it on attackers is just dishonesty. A well-designed blockchain is not supposed to have attackers, it is supposed to keep producing blocks based on the parameters of the network, not take a break because someone spammed transactions.”

Solana’s Technical Woes
As mentioned above, this isn’t the first such instance where Solana was hit by a DDoS attack. The Solana Status reported that the network suffered intermittent instability over 45 minutes in September last year.

During this time, Solana validators were gearing up for a new release before being hit by a 17-hour-outage due to the mass botting activity for an IDO on Solana-based DEX, Raydium. While no funds were lost and Solana returned to full functionality, the entire fiasco attracted some serious criticisms when the developers resorted to restarting the network.

Three months later, the network was reportedly hit by a second DDoS attack even as it remained online throughout. Despite suffering from heavy congestion, co-founder Raj Gokal clarified that there was no DDoS attack. It was the NFT game SolChicks that revealed its Chicks NFT were responsible for the performance issues on the Solana blockchain.', 'https://i.ibb.co/x5bWnDP/image.png', 'Blockchain', '2022-09-18 15:50:35.773109');
INSERT INTO public.news (id, platform_id, author_id, link, title, content, image, category, created_on) VALUES (89, 12, NULL, 'https://www.fxstreet.com/cryptocurrencies/news/nft-flipping-not-so-profitable-for-more-than-half-of-buyers-survey-202206131008', 'NFT flipping not so profitable for more than half of buyers: Survey', 'With the surging popularity of nonfungible tokens (NFTs), many have taken to “flipping” these assets as a trading strategy. Around 64% of people in a recent survey said their top reason for buying an NFT was “to make money.”

Blockchain monitoring software company DEXterlab polled more than 1,300 people on Twitter about their NFT buying habits from late May to early June. Despite a majority looking to gain from NFT trading, less than 42% have made a profit so far, according to the results.

The second most cited reason for buying an NFT saw around 15% respond that it was to be part of a community and “to flex.”

“People are highly social creatures, so the desire to be a part of a community and show off isn’t really surprising,” DEXterlab wrote.

The team highlighted the success of the Bored Ape Yacht Club (BAYC), which has celebrities among its ranks along with exclusive perks like access to holder-only events or new popular NFT drops.

Though some NFT collections, such as those of the BAYC, can often see floor prices in the tens or hundreds of thousands, almost half of respondents said they were only comfortable paying a modest price of between $50 to $500 for an NFT.

Surprisingly, the second most popular answer had a quarter of respondents saying they are ready to spend in the upper limits of the poll, more than $2,000 per NFT.

Over the past 30 days, some of the largest “blue chip” NFT collections such as CryptoPunks, Mutant Ape Yacht Club (MAYC), BAYC and Moonbirds have seen their floor prices or market caps halve. In spite of this, these collections have continued to top the charts for the top NFT sales over the same period.

Though NFT prices have fallen across the board, there are still examples of NFTs that have defied the prevailing bear market.

Recently, a free-to-mint collection with no utility or roadmap called Goblintown topped the charts and has since remained in third place over 30 days seeing nearly $70 million in volume.

Currently, the collection has a floor price of 3 Ether (ETH), or around $4,000 at the time of writing, and the most expensive one sold netted 77.7 ETH on June 1, worth nearly $151,000 at the time.

Other signs point to a healthy market for those still holding out to profit from their NFT buys. Sales volumes for NFTs came in at $3.7 billion last month despite the market conditions, according to a recent DappRadar report.

The report also revealed that Solana NFTs posted their best trading month in the network’s history, generating $335 million in volume across all marketplaces — a 13% growth from April.

NFTs continue to create a robust market for themselves and widespread mainstream adoption looms. According to a CoinGecko report, the NFT market is projected to transact more than $800 billion over the next two years, though hodlers will need to wait a little longer to realize their profits. ', 'https://i.ibb.co/DLqc1kn/image.png', 'NFT', '2022-09-18 15:50:35.873202');
INSERT INTO public.news (id, platform_id, author_id, link, title, content, image, category, created_on) VALUES (47, 10, NULL, 'https://insidebitcoins.com/news/near-protocol-alerts-users-of-a-recent-bug-in-its-network?utm_source=coincodex&utm_medium=referral', 'Near Protocol Alerts Users Of A Recent Bug In Its Network', 'Join Our Telegram channel to stay up to date on breaking news coverage

Layer 1 blockchain platform Near Protocol has provided new security directives after discovering a vulnerability that allows a third party to gain sensitive information. The protocol informed users via a blog post on August 4. It also stated that the vulnerability has been fixed.

Near Protocol Says, No Data Was Compromised
According to the platform, the code change led to the gathering of sensitive data from some users who had applied SMS or email recovered on their wallets. The vulnerability was discovered on time by blockchain security firm Hacxyl, who quickly reported to the company. Hacxyl has also rewarded a bounty for its efforts, although the amount was not disclosed.

Near Protocol stated that its wallet team, after receiving information about the bug, went into action immediately. The team scrubbed “all sensitive data” and identified those who might have had access to it.
Join Our Telegram channel to stay up to date on breaking news coverage

Layer 1 blockchain platform Near Protocol has provided new security directives after discovering a vulnerability that allows a third party to gain sensitive information. The protocol informed users via a blog post on August 4. It also stated that the vulnerability has been fixed.

Near Protocol Says, No Data Was Compromised
According to the platform, the code change led to the gathering of sensitive data from some users who had applied SMS or email recovered on their wallets. The vulnerability was discovered on time by blockchain security firm Hacxyl, who quickly reported to the company. Hacxyl has also rewarded a bounty for its efforts, although the amount was not disclosed.

Near Protocol stated that its wallet team, after receiving information about the bug, went into action immediately. The team scrubbed “all sensitive data” and identified those who might have had access to it.

Buy Crypto Now

Your capital is at risk.

Punt Crypto Casino Banner
The quick action taken by the team ensured that users’ data are safe and secured. The team stated that there have been no indications that there has been an attack or compromise related to data theft. It also does not have any reason to believe that the data is available elsewhere.

Cyber Attacks Now Common In The Crypto Industry
The growing popularity and adoption of crypto assets have made them targets of scammers and hackers. The crypto industry has suffered several attacks this year. This August, Nomad Bridge was the victim of a $190 million crypto heist.

Also, an attack that lasted for four hours saw thousands of Solana wallets wiped clean, causing the wallet owners more than $4 million in crypto funds. And not long ago, Celsius announced that users’ data was breached by threat actors. The attack occurred after an employee of its messaging partner, Customer.io, was exposed.

Following these series of attacks, Near Protocol says it wants to share its experience to inform users and other platforms to be more careful to prevent exploits.', 'https://i.ibb.co/SBL6Hhd/image.png', 'Blockchain', '2022-09-18 15:50:35.774603');
INSERT INTO public.news (id, platform_id, author_id, link, title, content, image, category, created_on) VALUES (48, 23, NULL, 'https://www.cryptoknowmics.com/news/avalanche-native-token-avax-listed-on-ftx-japan?utm_source=rss&utm_medium=rss&utm_medium=referral&utm_campaign=avalanche-native-token-avax-listed-on-ftx-japan', 'Avalanche Native Token AVAX Listed On FTX Japan', 'The AVAX markets on FTX Japan went live this week. The currency pairings AVAX/JPY and AVAX/USD and AVAX perpetual futures are now available to customers in Japan. AVAX, the native token of the Avalanche network, is raising awareness of Avalanche in a sizable worldwide market thanks to FTX Japan''s willingness to trade for it.
Avalanche - Secure Platform

AVAX is the Avalanche native token. It is an integral unit of account between the Avalanche Subnets and is a hard-capped, rare asset used to pay fees, secure the platform through staking, and pay for other costs. Avalanche is the blockchain industry''s swiftest platform for smart contracts in terms of time-to-finality. Of all Proof-of-Stake protocols, it also boasts the most significant number of validators protecting its activities. Avalanche is quick, cheap, and environmentally friendly. Any smart contract-enabled application can outperform its competitors by being deployed on Avalanche.

FTX Japan To Serve The Japanese Market

FTX Trading Ltd., an infamous regulated worldwide cryptocurrency exchange, opened FTX Japan in June to serve Japanese customers. Operated through FTX Japan K.K. ("FTX Japan") is a Type 1 Financial Instruments Business license holder and a licensed supplier of crypto-asset exchange services in Japan. FTX Japan K.K., formerly known as Quoine Corporation, was given a new name after FTX purchased its parent firm, Liquid Group Inc., earlier this year.

With the establishment of FTX Japan, FTX can now provide the Japanese crypto community products and services at the forefront of their industries, including spot trading and perpetual for various digital assets, including BTC, ETH, SOL, FTT, and others. Local consumers can quickly deposit and withdraw Japanese Yen using FTX Japan.', 'https://i.ibb.co/f9J7wBh/image.png', 'Blockchain, Altcoins', '2022-09-18 15:50:35.778494');
INSERT INTO public.news (id, platform_id, author_id, link, title, content, image, category, created_on) VALUES (49, 15, NULL, 'https://ambcrypto.com/cosmos-remains-afloat-since-bear-market-turmoil-heres-why/?utm_source=coincodex&utm_medium=referral', 'Cosmos remains afloat since bear market turmoil- Here’s why', 'Cosmos is starting to gain the attention of the crypto community again. The ATOM token has been surging highly on the price chart in the past week.

In fact, it has recovered from a dip in the past 24 hours to ensure upward pressure. According to CoinMarketCap, at press time, ATOM was trading at $16.21 after seeing a 2.75% rise in prices over the last day. ATOM’s weekly gains stood at 28.4% at press time.

Analytics platform Messari has thrown light on the token which has been up only since cycle low. The tweet stated, “many assets hit cycle lows over the course of the bear market. According to our asset screener, 120 assets have been ‘up only’ since those cycle lows.”

Well, one of them is Cosmos which continues to show big promises for investors.


Source: Messari

Feeling cosmic
Things also looked good on the on-chain activity side of Cosmos with some metrics reaching their respective milestones.

Transaction Volume for the ATOM token reached its highest point since the Luna crash as it jumped to 1.23 billion on 10 September.

This dramatic increase in activity was seen in the price movement of ATOM.


Source: Santiment

Well, Cosmos developers have also been busy recently with the development activity metric showing a clockwork increase in the past months.

This was also shared in a Medium blog update by Cosmos recently. The Cosmos SDK released the latest version 0.46 which includes upgrades on the existing ‘Groups module’ and the ‘Governance module’ as well.


Source: Santiment

Another upgrade allowed chains to create addresses on other chains and execute transactions on the native platform.

According to the blog,

“This allows composability between applications similar to how smart contracts on a monolithic chain like Ethereum can interact with each other.”

Despite the meteoric rise of Cosmos, there are still pressing concerns on the network. One issue here is if ATOM is actually rallying independently or following the latest crypto market recovery led by Bitcoin [BTC]. It remains to be seen where Cosmos is headed now after completing a week to remember.', 'https://i.ibb.co/bd7HTYM/image.png', 'Blockchain', '2022-09-18 15:50:35.780142');
INSERT INTO public.news (id, platform_id, author_id, link, title, content, image, category, created_on) VALUES (50, 2, NULL, 'https://zycrypto.com/matic-poised-for-huge-boost-as-robinhood-enables-polygon-for-its-over-20-million-users/?utm_source=coincodex&utm_medium=referral', 'MATIC Poised For Huge Boost As Robinhood Enables Polygon For Its Over 20 Million Users', 'Top American brokerage firm Robinhood is actively expanding its cryptocurrency support of late. Amidst a crypto-asset listing spree, the broker has recently extended support for MATIC deposits and withdrawals.

Robinhood users can now send and receive MATIC on Polygon
Robinhood announced on Wednesday that it had added support for MATIC deposits and withdrawals on the Polygon network. This inclusion complements the Ethereum network already supported. Clients will now have the opportunity to send and receive MATIC via the Polygon blockchain.

Robinhood added that customers should expect more of this in the future, as it will support more cryptocurrencies on more networks soon. Robinhood listed MATIC on its platform sometime in April alongside SHIB, COMP and others. Nonetheless, the platform limited MATIC transactions to the Ethereum network until now.

Polygon acknowledged the development on its official blog site. “The move is set to bring all of the benefits of Ethereum’s Layer-2 (L2) solutions to Robinhood users for the first time, including faster transactions and lower fees as compared to Ethereum,” the blog post said. 

MATIC has gained by over 9% since the announcement
Robinhood boasts of over 20 million monthly active users. Clients flock to the Polygon network for MATIC transactions, which could significantly boost the network’s growth. Per data from Santiment, barely two days after the announcement, MATIC saw a sharp increase in transaction volume in the past 24 hours.

    
Since the announcement, MATIC has gained by over 9%. Reports of the development came at a time when the asset recovered from its dip to $0.78 on Tuesday. The announcement contributed momentum to an already established rally from MATIC. MATIC currently trades at $0.89 at the time of reporting, with a gain of 6.51% in the past 24 hours.

Shortly after this announcement, Robinhood noted that it had listed Cardano. The support comes a few weeks before the Cardano Vasil upgrade. Following an extensive period of snubbing cryptocurrencies, Robinhood has set its eyes on the crypto sector. The persistent Crypto Winter has also done little to discourage the broker.', 'https://i.ibb.co/fxGPKgf/image.png', 'Blockchain', '2022-09-18 15:50:35.781632');
INSERT INTO public.news (id, platform_id, author_id, link, title, content, image, category, created_on) VALUES (51, 18, NULL, 'https://www.cryptoknowmics.com/news/polygon-raises-50m-for-emerging-markets-focused-web3-venture-fund?utm_source=rss&utm_medium=rss&utm_medium=referral&utm_campaign=polygon-raises-50m-for-emerging-markets-focused-web3-venture-fund', 'Polygon Raises $50M for Emerging Markets-Focused Web3 Venture Fund', 'Sandeep Nailwal, the founder of Polygon and a cryptocurrency entrepreneur, has received $50 million for a new startup fund aimed at Web3 companies, demonstrating venture capital''s rising interest in the internet powered by blockchain.
Polygon Receives Support From Crypto Exchanges

According to Symbolic Capital, Nailwal''s venture firm received support from crypto exchanges, protocols, and auditing companies specializing in cryptocurrencies. Three blockchain-focused gaming firms, BlinkMoon, Planet Mojo, and Community Gaming, have already received funding from Symbolic''s fund but kept these startups'' early funding sources secret.

According to reports from last week, Shima Capital''s private cryptocurrency fund raised around $200 million, prompting the move. Former presidential candidate Andrew Yang, hedge fund billionaire Bill Ackman, and the cryptocurrency-focused venture company Dragonfly Capital are among the company''s limited partners.

CoinFund Raised $300 Million Funds

In the same week, CoinFund, a company specializing in digital assets, raised $300 million for its newest venture vehicle, using the money to fund future investment rounds. Since 2015, venture capitalist David Pakman''s CoinFund has invested almost $1 billion in seed-stage businesses. The fact that the firms have started amid the "crypto winter," as market participants have termed it, suggests a growing interest in opportunistic methods since both the private and liquid digital asset markets have offered deep-pocketed investors good deals.

Crunchbase data shows that venture capitalists invested $9.3 billion in crypto startups in the first half of 2022, a decrease from $12.5 billion during the same period in 2017.', 'https://i.ibb.co/ZYw3Xpj/image.png', 'Blockchain', '2022-09-18 15:50:35.783039');
INSERT INTO public.news (id, platform_id, author_id, link, title, content, image, category, created_on) VALUES (52, 13, NULL, 'https://cryptodaily.co.uk/2022/09/near-launching-100m-vc-fund-for-web3?utm_source=coincodex&utm_medium=referral', 'NEAR Launching $100M VC Fund For Web3', 'The NEAR Foundation will be launching a $100 million venture capital fund to support web3 developments and entertainment. 

Venture Lab Initiative
The project includes a venture capital fund and a venture lab. The NEAR Foundation is partnering with Caerus Ventures, which will be one of the seed round investors of this fund. The VC fund alone has an initial closing of $50 million, with a target of raising $100 million in its seed series A round. The venture lab will function as a platform to support the work of creators, talent, and franchise owners towards generating the next generation of platforms. It will receive the first lot of the investments. 

According to Near Foundation CEO Marieke Flament, the choice to work with Caerus was due to the similarity of values. Flament said, 

“We are both trying to reinvent what it means to be a creator. They have a uniquely differentiated proposition and robust investment thesis predicated on the tokenisation of entertainment.”

Partnered With New Investment Firm
Caerus Ventures is a newly established Swiss-based investment firm that is hoping to catalye innovation in Web3 by supporting sport, music, film, fashion, and artistic ventures in that direction. The firm is led by IMG executive Nathan Pillai, who shared his thoughts on the project, saying, 

“I believe talent and intellectual property (IP) creators need to have a more equitable share of value that is created, and for this, to be then shared amongst consumers and fans. We want to focus on how to deepen engagement and reward the people who spend a lot of time and money consuming entertainment.” Pillai said, adding that the company is currently looking at investing in a music streaming service that allows users to invest in the success of an artist.”

Latest In NEAR
The NEAR Protocol has had a very eventful year. The ‘NEARCON’ event is being held in Lisbon in the coming week. Most recently, the NearPay app successfully launched its virtual crypto cards and wallet apps to further bridge the divide between fiat and crypto. 

However, throughout August, the protocol was on the verge of several attacks from malicious actors. At the beginning of the month, the team worked on a tip from security firm Hacxyk to resolve a bug in its wallet similar to that of Solana, where over 5000 wallets were compromised. A few weeks later, the NEAR rainbow bridge was targeted by a hacking attempt, which was fended off successfully by security protocols, keeping user funds quite safe. ', 'https://i.ibb.co/XpVDWyc/image.png', 'Blockchain', '2022-09-18 15:50:35.784322');
INSERT INTO public.news (id, platform_id, author_id, link, title, content, image, category, created_on) VALUES (53, 2, NULL, 'https://dailyhodl.com/2022/09/09/cardano-ada-developer-iog-partners-with-stanford-university-to-launch-blockchain-research-hub/', 'Cardano (ADA) Developer IOG Partners With Stanford University To Launch Blockchain Research Hub', 'Stanford University could soon come up with cutting-edge blockchain innovation through a new $4.5 million partnership with Cardano (ADA) developer Input Output Global (IOG).

The company will fund a so-called Blockchain Research Hub at the university over three years, with an eight-person steering committee, comprised of six Stanford professors and two IOG officials, determining the workload.


Proposals are open to faculty, undergraduate and graduate students.

Charles Hoskinson, IOG CEO, says that the investment will quicken the evolution of blockchain technology.

“We’ve been dedicated to vigorous research since the inception of the business and our work forms the foundations on which Cardano has been built. Working with leading academic institutions like Stanford to set up these blockchain research hubs is key to our vision. With the Research Hub, blockchain development can grow even faster, based on the new learnings that will emerge, and the hub will add a new layer of validity to our sector that we haven’t always been afforded.”

The steering committee is being chaired by Stanford engineering professor David Tse.

“The Research Hub will be a significant boost to enhance the interest in both fundamental and applied blockchain research at Stanford.”

The first round of proposals for funding are due by November.', 'https://i.ibb.co/WfytHQN/image.png', 'Blockchain', '2022-09-18 15:50:35.787277');
INSERT INTO public.news (id, platform_id, author_id, link, title, content, image, category, created_on) VALUES (54, 9, NULL, 'https://coingape.com/cardano-ada-team-believes-its-pos-mechnism-is-most-promising-heres-why/', 'Cardano (ADA) Team Believes Its PoS Mechnism Is Most Promising; Here’s Why', 'Proof-of-work (PoW) and proof-of-stake (PoS), the two predominant consensus models among blockchains, often get compared based on energy consumption. But according to the team behind Cardano, one of the largest PoS blockchains, PoS consensus mechanism trumps PoW in many more ways.
Cardano says the benefits of its PoS go “far beyond” energy efficiency 
Frederik Gregaard outlined these advantages in a recent blog post jointly published by the Cardano Foundation and CV Labs. The Cardano Foundation CEO stated that the blockchain’s implementation of PoS, called Ouroboros, can benefit enterprises, dApps, and token holders beyond low energy consumption.

For one, Cardano’s PoS consensus greatly reduces the entry barrier to engaging in running the network. Gregaard highlighted that almost anyone can get involved in running a stake pool or node on Cardano as it requires only basic hardware, minimal server administration and development skills, and ADA. 

Cardano’s PoS also has more than one way in which it makes the blockchain secure. The more ADA is delegated in stakepools, the more secure the network is. Additionally, Ouroboros’ algorithm plays into the security of the network. 

Ouroboros uses an “almost impossible to predict” algorithm to appoint an anonymous block producer, making the network less vulnerable to attack. In contrast, PoW blockchains allow the first miner that solves the block puzzle to earn the block reward. The PoW mostly favors miners with much computational power. 

Similarly, the Ouroboros protocol also makes unique decentralized governance and voting opportunities possible on Cardano and handles rewards distribution on the blockchain. Gregaard surmised that Cardano is highly proud of its PoS consensus. 

 Cardano is proud to be a front-runner in ensuring the future of blockchain is inclusive, secure, and transparent,  he wrote. 

PoS adoption catching on among blockchains
Bitcoin, the very first blockchain, uses a PoW consensus mechanism. However, PoW has been widely criticized for its high energy consumption. At present, many alternative consensus mechanisms exist among blockchains, but PoS is one of the most popular alternatives. 

Asides from Cardano, other proof of stake blockchains include Avalanche, Polkadot, Solana, TRON, EOS, and Algorand and Tezos. These all have their novel approaches to solving the double-spend problem using the  PoS consensus mechanism. 

Ethereum, the second-largest cryptocurrency by market cap and arguably one of the most widely adopted blockchains, is also eyeing a move to becoming a PoS blockchain. Ethereum is working on migrating to PoS later this year', 'https://i.ibb.co/8m56J7x/image.png', 'Blockchain', '2022-09-18 15:50:35.788606');
INSERT INTO public.news (id, platform_id, author_id, link, title, content, image, category, created_on) VALUES (55, 27, NULL, 'https://www.fxstreet.com/cryptocurrencies/news/terra-projects-band-together-in-migration-to-polygon-ecosystem-202207110653', 'Terra projects band together in migration to Polygon ecosystem', 'More than 48 different crypto projects formerly based on the failed Terra ecosystem have found a resurgence by migrating over to Polygon. 

Polygon Studios CEO Ryan Wyatt expressed delight at his network’s ability to onboard many projects to the ecosystem in a July 9 tweet. He hinted that Polygon’s multimillion-dollar Terra Developer Fund has been effective in attracting the talent that was unexpectedly flung into limbo when Terra collapsed in May.

Polygon (MATIC) is a network that serves as a layer-two scaling solution for the Ethereum network.

Among the higher-profile projects to move to Polygon are the Lunaverse (LUV) Metaverse platform, the OnePlanet NFT marketplace, and the Derby Stars play-to-earn (P2E) game.

OnePlanet has been instrumental in helping other nonfungible Token (NFT) projects migrate to Polygon. It has become a platform dedicated to assisting NFT projects from Terra with its Ark*One initiative.

OnePlant’s July 9 blog post outlines how Ark*One has helped “A total of 48 NFT projects, encompassing 90 NFT collections” port over to Polygon.

This represents a large proportion of Terra projects, including some that did not launch on One Planet before the cataclysmic de-peg event.

Since June 15, Ark*One has reduced the support it provides to aspiring projects, but the team says it will “still provide technical support for projects who want to migrate from Terra” and allow projects to launch on Polygon using its launchpad.

Polygon appears to have been more successful at attracting Terra projects than the VeChain (VET) ecosystem. So far, it does not appear that many Terra projects have made the move to the layer-1 ecosystem despite VeChain openly welcoming Terra developers to apply for a grant.

The Terra ecosystem suffered a monumental collapse in May when its TerraUSD (UST) stablecoin lost its peg, forcing its native token LUNA to crash nearly 100% in value from over $60 to fractions of a cent. The network has been renamed Terra Classic, and its native token now has the LUNC ticker, while a new iteration has adopted the Terra name and LUNA ticker.

It has yet to gain much traction or confidence as the crypto bear market deepens.', 'https://i.ibb.co/tJ9ckFh/image.png', 'Blockchain , Altcoins', '2022-09-18 15:50:35.791899');
INSERT INTO public.news (id, platform_id, author_id, link, title, content, image, category, created_on) VALUES (56, 22, NULL, 'https://beincrypto.com/binance-fund-dydx-derivatives-exchange-rival-deri-bsc/', 'Binance to Fund dYdX Derivatives Exchange Rival Deri on BSC', 'The world’s largest centralized crypto exchange, Binance, has big ambitions to power what could become the largest decentralized derivatives exchange as evidenced by its latest funding efforts.

Decentralized derivatives exchange Deri Protocol has secured investment under Binance Smart Chain’s $1 billion DeFi Growth Fund.

The fund was established by Binance to help DeFi projects that run on BSC to scale for mainstream adoption. It also aims to expand the BSC ecosystem as it only supports projects that run on the network.
In an announcement on Nov 9, Binance stated that the funding will come directly from its billion-dollar fund designed to incubate blockchain and crypto startups. Investment Director at the BSC Accelerator Fund, Gwendolyn Regina, said:

“BSC’s $1B Growth Fund solely focuses on projects with high utilization and scalability. Deri protocol with its cross-chain derivative features tops the list.”

DEX competition rising
BSC-based Deri Protocol offers decentralized derivatives trading and is a competitor to the dYdX derivatives exchange and potentially FTX, though the latter is centralized.

Deri is the first decentralized exchange (DEX) that provides both everlasting options and perpetual futures on BSC. Users can hedge, speculate, and arbitrage their portfolios, Binance stated.
Deri co-founder and CEO going by the pseudonym 0xAlpha said that with BSC’s support, “we aim to scale Deri for mass adoption.”

Deri trading positions are tokenized as NFTs which can be held, transferred, or imported into any other compatible DeFi projects. The protocol also runs on Polygon in addition to BSC.

Deri is currently a small fry compared to the major derivatives exchanges according to DefiLlama, TVL is just $24 million. The current 24 hours volume is just over $200 million according to the platform’s dashboard.  
Comparatively, the dYdX derivatives DEX has just over $1 billion in total value locked with $3 billion in daily volume according to its stats dashboard.

Binance has secured its position as the world’s leading CEX at the moment, but it is clearly aiming to channel funding to support DEXs and DeFi protocols running on its own blockchain.

BSC ecosystem outlook
There is currently $21.5 billion in total value locked (TVL) across the entire BSC ecosystem according to DefiLlama. The PancakeSwap DEX has the largest market share with just under $7 billion in TVL or around 32% of the total.

The Venus lending and borrowing platform is in second place with a TVL of $2.8 billion, or 13% of the total. Deri accounts for just 1.1% of all the TVL on BSC.

BSC TVL has grown by 78% over the past three months and represents almost 8% of the $272 billion in TVL for the entire sector.', 'https://i.ibb.co/zRYb8kS/image.png', 'Blockchain , Altcoins', '2022-09-18 15:50:35.793284');
INSERT INTO public.news (id, platform_id, author_id, link, title, content, image, category, created_on) VALUES (57, 41, NULL, 'https://cointelegraph.com/news/atom-price-is-reaching-for-the-cosmos-but-why', 'ATOM price is reaching for the Cosmos, but why?', 'Like all altcoins, ATOM price fell as $550 million of BTC, ETH and altcoin positions were liquidated last week, which is exactly why its 35% rebound is raising eyebrows.
As a market crash takes place, assets become oversold and typically there’s an “oversold bounce,” “return to mean,” “mean reversion,” or some price snapback to the bottom of the pre-crash range. 

Afterward, the asset under study either consolidates, continues the downtrend, or returns to the bullish uptrend if the downside catalyst was not significant enough to break the market structure. That’s all basic trading 101.

This week Cosmos (ATOM) price appears to be following this path, and the altcoin is showing a bit of strength with a 35% gain since Aug. 22. But why?

Depending on how you look at it, and technical analysis is by all means a subjective process, ATOM price is either in an ascending channel, or one could say a rounding bottom pattern is present with price close to breaking above the neckline.


ATOM daily chart. Source: Tradingview
Resistance above $13 (the horizontal black line in the bottom chart) is currently close to being tested, and with sufficient volume and “stability” from the wider crypto market, the price could be en route to the 200-day moving average at $17.20.

Of course, if Bitcoin goes belly up at the daily close, or hawkish talk starts to leak out of Jackson Hole, the whole bullish structure for ATOM is likely kaput. So, if one is trading, prepare and size accordingly.

If price manages to reach the $17 zone, without skipping a beat, your favorite technical analysts will then say something along the lines of:

“If ATOM price manages to flip the 200-MA to support, continuation to the $27 level could occur.”

Surely you’ve seen that on Crypto Twitter lately, but let me find an example.


So, it’s only up, sir?
What traders need to find out is whether ATOM’s upside momentum is simply the result of a “stable” market and Bitcoin and Ether trading in a relatively predictable range, or if there is some Cosmos-related set of fundamentals that validate the current move and warrant opening a swing long.

Apparently, the analysts at VanEck, a multibillion-dollar asset management fund, think ATOM price will do a 160x move by 2030.

Hard to believe, isn’t it? The prediction is perhaps a little bit far fetched, but see for yourself. Here’s what they said:

“Based on our discounted cash flow analysis of potential Cosmos ecosystem value in 2030, we arrived at a $140 price target for the ATOM token, with downside to $1. With ATOM’s price at $10 as of 8/2/2022, we like the 14-1 odds presented and believe this is a buying opportunity for the token.”
Let’s take a brief look at their rationale for $140 ATOM.

Product-to-market fit and a secure cross-chain bridge could thrive post Merge
VanEck analysts Patrick Bush and Matthew Sigel cite Cosmos’ Inter-Blockchain Communication Protocol (IBC) as a bullish catalyst primarily because “separate Cosmos SDK blockchains can open up communication channels to exchange data, messages, tokens and other digital assets.”

According to the analysts, “IBC architecture then enables each blockchain to perform activities on another blockchain without relying upon a trusted third party.” They continued:

“The permissionless and trustless communication technology of IBC solves many of the issues presented by trusted bridging solutions that have led to over $1B in funds stolen through bridge hacks.”
The analysts also cite the Cosmos SDK, clear product-to-market fit and strong token value accrual being partially influenced by staking and a soon-to-launch “interchain security” mechanism by the Cosmos Hub as reasons for their long-term bullish perspective.

What’s happening on the development side and roadmap?
ATOM is set to become a primary collateral asset in three new stablecoins that will launch within the Cosmos ecosystem.


Minting stablecoins will require the “lock,” or depositing, of ATOM tokens and, according to the Cosmos Hub 2.0 roadmap, liquid staking is also expected to roll out in H2 2022.


ATOM roadmap details. Source: Cosmos Hub
During DeFi Summer and the post-summer revival, stablecoin issuance and liquid staking were two phenomena that boosted TVL for DeFi-oriented blockchains and, while questionable and somewhat Ponzi-esque, liquid staking adds buy pressure to a protocol’s native token, while also equipping it with utility within various aspects of the lending, borrowing and leveraging wings of decentralized finance.


Staked percentage of ATOM''s circulating supply. Source: Staking Rewards
Current data from Staking Rewards shows that 65.84% of issued ATOM tokens are staked for a minimum yield of 17.85%, and additional data from the analytics provider shows a near 189% rise in the number of ATOM stakers over the past 30 days.


30-day increase in ATOM stakers. Source: Staking Rewards
The above appears to align with the thesis that liquid staking and stablecoin minting will soon launch. Despite the confluence of these bullish indicators, it’s important to remember that asset prices do not exist in a vacuum. While there may be a handful of bullish signals flashing from ATOM, the wider cryptocurrency market (including BTC) hangs at a precipice.

No one is sure that the elusive “bottom” is in and cryptocurrencies are risk-off assets that exist in a macroeconomic climate where most institutional and retail investors are opposed to risk. The value accrual propositions for ATOM are strong, and staking, stablecoin minting and liquid staking proved to be powerful bullish catalysts for DeFi tokens and altcoins in the past. But everything works until it doesn''t, right?

Remember Waves, Terra (LUNA) and Celsius (CEL)? All experimented with liquid staking, lending, asset collateralization and stablecoins, and yet today they’re belly up from a value perspective.

Of course, Cosmos isn’t LUNA, Waves or CEL. It’s a wide-ranging, cross-chain equipped ecosystem with a $12.6 billion market capitalization, according to data from CoinGecko.', 'https://i.ibb.co/TPyRB1Q/image.png', 'Blockchain , Altcoins', '2022-09-18 15:50:35.794495');
INSERT INTO public.news (id, platform_id, author_id, link, title, content, image, category, created_on) VALUES (58, 14, NULL, 'https://cryptodaily.co.uk/2022/08/ronin-adds-new-validators-as-security-measure', 'Ronin Adds New Validators As Security Measure', 'The Ronin sidechain has added three new validators to the project, increasing the total number of validators to 17. 

Ronin Adds Three Validators
The Ronin development team recently announced in a blog post that they had increased the number of validators securing the chain from 14 to 17. The addition of the three extra validators is a part of the security measures being adopted by the developers to ensure higher levels of verification following the $600 million hack in March. Furthermore, the team has revealed that it will not stop at 17 and plans to establish a total of 21 independent validators. 

Plans Of 21 Validators
The Ronin sidechain is an Ethereum-powered platform that hosts the Axie Infinity game and is funded by the blockchain gaming company Sky Mavis. The new validators will add an additional layer of verification for transactions occurring on the sidechain. According to the team, the new validators are Efficient Frontier, Community Gaming, and Nansen. The first validator, Efficient Frontier, is a digital asset algorithmic trading firm that has worked with the Ronin Network as a market maker and to ensure token liquidity. 

The second validator is the global earnings platform and competitive organizer Community Gaming, which has recently partnered with Sky Mavis as an official operations partner. 

Finally, the third validator is the blockchain analytics platform Nansen.ai, which already provides in-depth information about Ronin Network data.

Security Measures By Ronin
The addition of the new validators is promising for the sidechain, as the massive exploit in March happened when the North Korean hacker group Lazarus took control over five of the nine validator nodes on Ronin and siphoned away 173,600 ETH and 25.5 million USDC, amounting to over $600 million in crypto assets. The Ronin team had to scramble in the aftermath of the attack, somehow raising $150 million from investors like Binance, a16z, and Paradigm, to reimburse lost user funds. However, soon after the hack, in April, the team decided to impose higher levels of verifications by increasing the number of validators.

Since the Ronin sidechain is based on a proof-of-stake algorithm, transaction verifications happen based on the majority consensus or agreement of the validators. Therefore, the more validators that are on the system, the more secure the network is. As of today, the network requires 70% of the current validators to approve a proposal.

Disclaimer: This article is provided for informational purposes only. It is not offered or intended to be used as legal, tax, investment, financial, or other advice.', 'https://i.ibb.co/JFfffvP/image.png', 'Blockchain', '2022-09-18 15:50:35.796158');
INSERT INTO public.news (id, platform_id, author_id, link, title, content, image, category, created_on) VALUES (59, 39, NULL, 'https://cointelegraph.com/news/celo-network-back-online-after-almost-24-hour-outage', 'Celo network back online after almost 24-hour outage', 'Proof-of-stake- (PoS)-based blockchain Celo has been suffering from an on-and-off network outage lasting 24 hours, though the blockchain appears to be up and running again. 

Celo is an open-source blockchain that enables users with phone numbers to make payments with crypto by using their phone numbers as a proxy for public keys.

Celo updated its Twitter followers after the network came back online, noting it was the network’s first outage since the mainnet launch on April 22, 2020, and that it has begun a “thorough and expedited technical analysis” to get to the bottom of the issue.

The protocol made the initial announcement that the network had stalled on Thursday at 12:04 am UTC at block 14,035,019, assuring that “all funds are safe.”

It resumed around nine hours later for several minutes before pausing again at block 14,035,045.

At the time of writing, the network appears to be up and running again following an upgrade of its validator nodes to version 1.5.8, according to a Celo block explorer.


On the protocol’s Discord channel, one of the network’s validators with the username “Dee” said they saw the latest outage as “part of the growing pains” of the network but that they remained confident in the fundamentals as it was the first network halt in over two years:

“Even Visa had some network outage over the past two years despite being a market leader in payments for over 60 years.”
The Celo protocol’s white paper claims that it enables users to send payments “as easy as sending a text message.” The network touts an average block time of five seconds, is Ethereum Virtual Machine compatible and supports smart contracts and decentralized applications.

Related: Celo Foundation proposes to deploy Uniswap v3 on its native blockchain

The Celo network is also the protocol behind three stablecoins — Celo Dollars (cUSD), Celo Euros (cEUR) and Celo Reals (cREAL), as well as its native token Celo (CELO).

Earlier this week, the Helium network suffered a four-hour outage due to validator outages from a software update, causing delayed transaction finality.

On June 1, the Solana network suffered yet another outage, causing block production to halt for four and a half hours. It was one of seven network outages over the last 12 months.', 'https://i.ibb.co/w0bh8yC/image.png', 'Blockchain', '2022-09-18 15:50:35.799276');
INSERT INTO public.news (id, platform_id, author_id, link, title, content, image, category, created_on) VALUES (60, 8, NULL, 'https://cryptodaily.co.uk/2022/04/monero-network-reaches-community-consensus-for-july-hard-fork', 'Monero Network Reaches Community Consensus For July Hard Fork', 'Developers of the Monero Network have announced that the privacy-focused blockchain protocol has reached a community consensus in which a mainnet hard fork will be implemented at block height 2,668,888.

The update to Monero’s mainnet will see an increase to the chain’s ring size, going from 11 to 16, while also adding view tags for outputs that would result in a drastic reduction to its wallet scanning time. The hard fork will also introduce full implementation of the protocol’s bulletproofs, or short non-interactive zero-knowledge proofs that require no trusted setup, as well as changes to the network’s fee structure.

Monero ($XMR) is rapidly increasing in its number of users, as the crypto and blockchain space also grows by comparison. Privacy and security among crypto protocols has been a hot topic, ever since the proliferation of hacks, especially in the decentralized finance sector. Concerns about Monero’s status as a “safe haven” for criminals, however, has prompted some to criticize the network’s design.

According to the Monero network developers, the hard fork is aimed at improving the base protocol, but will not in fact create a new coin out of the fork, a major contention among blockchain protocols that have been forced to split because of hard forks, like Bitcoin and Bitcoin Cash/BSV.

The Monero blockchain community’s decision to raise the number of ring signatures will result in larger and more effective anonymity sets for transactions, essentially hardening the network’s security by complexifying the sources of a transaction. Monero’s core developers have pointed out that view tags would effectively reduce network scanning time by up to 40%, a measure that would downsize the time for deriving the output public key for every anonymous transaction. The changes, and the fee values by extension, have been approved to a growth rate of 14x per year, in place of previous proposals for 32x per year, in order to accommodate the growth’s scale and avoid imbalance in the network.

Monero’s Bulletproofs zero-knowledge proofs system will also later be implemented as the hard fork is released, and will then be used for range proofs, providing faster encryption and verification processes on Monero’s privacy-first blockchain.', 'https://i.ibb.co/rp0JwNJ/image.png', 'Blockchain', '2022-09-18 15:50:35.800655');
INSERT INTO public.news (id, platform_id, author_id, link, title, content, image, category, created_on) VALUES (61, 19, NULL, 'https://coincodex.com/article/17129/liquidity-providers-can-count-on-defi-real-estate-amid-the-bear-market/', 'Liquidity Providers Can Count on DeFi & Real Estate Amid the Bear Market', 'As an exemplification of the impacts of the bear market, Bitcoin lost nearly 56 percent of its value in the second quarter of 2022, leading a broad market selloff that included practically every type of digital asset. In traditional markets, stocks and bonds are down while inflation and interest rates are up. For liquidity providers (LPs) looking to generate a stable source of yield in the midst of the market downturn, finding compelling opportunities can be challenging. However, DeFi LPs can look to decentralized real estate lending as a stable source of yield. Here’s why:

Real Estate & Crypto Converge 
Cryptocurrency, a distinctly digital asset, is increasingly relevant to our most valuable physical possession: real estate. 

The two markets converged in 2019 when the former child actor Brock Pierce used Bitcoin to buy a home in Amsterdam, becoming the first person to buy real estate with virtual currency. Today, a handful of real estate developers and mortgage lenders accept payments in cryptocurrency. 

There are now several crypto lending platforms that allow people to apply for a crypto-backed loan for purchasing US real estate. This opportunity is especially appealing to individuals or families that have accumulated significant crypto wealth but may be unwilling or unable to convert those assets to attain a traditional mortgage. 

Meanwhile, other platforms allow people to use crypto as collateral or to make direct crypto transfers from buyer to seller. Non-fungible tokens (NFTs) also allow buyers and sellers to facilitate transactions, making it more possible than ever before to leverage virtual currencies to secure real-world assets. 

This trend is accelerated by recent market declines, prompting savvy crypto investors to consider parlaying their digital holdings into real-world assets. To be sure, using crypto to attain or service a mortgage is still a niche endeavor, but its growing popularity makes it a compelling opportunity for DeFi LPs in this rapidly changing economic environment. 


2022 is Different Than 2008
As DeFi LPs consider the risks and opportunities associated with the crypto and real estate market, many are worried that today’s housing market resembles the risk-abundant period that preceeded the Great Recession. 

The 2009 Great Recession was caused in significant part by an unsustainable housing market where supply significantly outstripped demand and lenders overextended risky financial products. 

In the years after the housing crash, the market recovered and then some. According to LendingTree, an online real estate marketplace, the average median home value has increased by $50,000 since 2009, helping support continually rising prices and valuations. 

These higher valuations, fervent demand, and an impending economic recession have many people worried that history is repeating itself in the worst way. However, the parallels stop there. 

Borrowers are better prepared to manage their debt while “tappable equity,” the amount of cash a borrower can retrieve from a home while maintaining 20 percent equity, is at an all-time high. Collectively, it’s estimated that total mortgage debt in the US is less than 43 percent of current home values, the lowest number in history. 

In contrast, the housing market collapse of 2008 originated from high-risk mortgages being treated as low-risk. Today, the opposite is true. We''re seeing "a flight to quality," with rising interest rates creating favorable conditions for real estate lenders and a winnowing of borrowers to those who can pay.

This means there will be a greater number of high-quality mortgages and corresponding yield opportunities for lenders, with real estate comprising one of the most stable markets for LPs in DeFi during the bear market.

Challenges 
For many people, homeownership is a top priority. According to a survey released by Bankrate, 75 percent of Americans consider it more important to their sense of prosperity than career, family, or academic accomplishments. 

Real estate is traditionally understood to be a stable investment. People value their homes, and maintaining their mortgage is both a responsibility and a point of pride, giving LPs in DeFi a reliable investment opportunity in an otherwise tumultuous economic environment. 

Though digital and traditional assets may be depressed, there is shelter from the storm as LPs benefit from a flight to quality in real estate. This time around, they can count on DeFi and real estate amid the bear market to produce reliable yields that promote growth and advancement. ', 'https://i.ibb.co/SvZvSP7/image.png', 'Defi', '2022-09-18 15:50:35.802057');
INSERT INTO public.news (id, platform_id, author_id, link, title, content, image, category, created_on) VALUES (62, 43, NULL, 'https://www.theblock.co/post/161551/uniswap-labs-alum-propose-creating-uniswap-foundation-to-boost-exchange', 'Uniswap Labs alum proposes Uniswap Foundation to boost exchange', 'QUICK TAKE The Uniswap Foundation proposal calls for the entity to be given a $74 million budget to cover the first three years of its operations.
The proposal also asked for 2.5 million UNI tokens for the Foundation to participate in governance votes.
Two Uniswap community members have submitted a governance proposal to create the Uniswap Foundation, an entity tasked with growing the decentralized crypto exchange’s ecosystem.

The Uniswap Foundation will be a Delaware-based corporation founded by Devin Walsh and Ken Ng, according to the proposal document published on Thursday. Walsh will serve as the executive director while Ng will helm the foundation’s operations.

Uniswap is the largest decentralized exchange (DEX) in the crypto space. The platform accounts for almost two-thirds of the entire DEX market volume, based on figures from The Block’s Data Dashboard. The Uniswap DAO also holds the largest treasury of any decentralized autonomous organization in the crypto space with $3.9 billion in its reserves, according to DeepDAO.

The Uniswap Foundation will be given a $74 million budget to drive growth, if the proposal is approved. It will award grants to development teams and work to support other ecosystem stakeholders, the proposal document said.
This budget will be split into two: $60 million for an expanded grants program and $14 million to cover operational overheads. The proposal requested that the funds be supplied in two instalments, with the first payment being $20 million and the remaining $54 million delivered later. This budget is expected to provide a three-year runway for the foundation.

Apart from the $74 million, the proposal also calls for the Uniswap Foundation to be given 2.5 million UNI tokens — the minimum number of tokens required to call for an on-chain vote. UNI is Uniswap’s native token and this allocation will ensure that the foundation can participate in the platform’s governance process.', 'https://i.ibb.co/cXhtVfk/image.png', 'Defi', '2022-09-18 15:50:35.803526');
INSERT INTO public.news (id, platform_id, author_id, link, title, content, image, category, created_on) VALUES (63, 34, NULL, 'https://blockchain.news/news/defi-lending-protocol-compound-launched-its-compound-iii-version', 'DeFi Lending Protocol Compound Launched its Compound III Version', 'Compound III is an EVM-compatible protocol that enables supplying crypto assets as collateral to borrow the base asset.

Unlike in the past, this new version only supports one "underlying asset" for lending. It provides other encrypted assets as collateral, getting rid of the "mixed risk model that users can borrow any asset".

Currently, ETH, WBTC, LINK, UNI, and COMP have been used as collateral to lend the underlying asset USDC.

Since Compound V2 uses the pool risk model as the way most loan agreements like Aave currently work, users can borrow any digital asset, but poorly performing assets can threaten other assets in the Compound lending protocol, resulting in the insecurity of investors'' funds.

Therefore, this upgrade allows users to limit the size of individual collateral assets within the market to limit risk.

This improved security comes at a price. The collateral provided will no longer earn interest.

Compound founder Robert Leshner said that although users can no longer earn interest through collateral, they can borrow more, improve capital utilization, reduce liquidation risk, and spend less on Gas Fees.

Users can earn interest by providing lower-risk underlying assets. With this upgrade, Compound III''s main competitor was no longer Aave, but MakerDAO.

Official data shows that Compound III has accumulated about $1.03 million in assets and lent 56,000 USDC within 24 hours of its launch.', 'https://i.ibb.co/8mJt6vH/image.png', 'Defi ', '2022-09-18 15:50:35.805048');
INSERT INTO public.news (id, platform_id, author_id, link, title, content, image, category, created_on) VALUES (64, 12, NULL, 'https://decrypt.co/108757/lending-platform-damm-brings-transparency-to-institutional-defi', 'Lending Platform dAMM Brings Transparency to Institutional DeFi', 'On-chain lending platform dAMM Finance launches today, bringing capital efficient, transparent decentralized lending and borrowing to institutional investors.

The decentralized finance (DeFi) platform was born out of frustration with the existing options available to investors, dAMM Finance CEO Josh Baker told Decrypt. “dAMM is the protocol that we wish existed,” he said. 

dAMM is an uncollateralized lending platform for any token, with algorithmically determined interest rates. It enables market makers and investors to borrow on dAMM from any token with a liquidity pool on the platform, allowing them to trade across both centralized and decentralized trading venues. 

It aims to provide a no-fee decentralized borrowing and lending platform for non-stable crypto assets that’s both capital efficient and accessible for multiple token issues.

To ensure transparency and stability, only trusted institutions are able to participate as borrowers, while the platform offers high, sustainable interest rates on the liquidity/lending side. Interest rates are algorithmically determined by supply and demand, while loans on the protocol can be instantly claimed and borrowed for long periods, eliminating fixed-term deals with determined interest rates.


''A perfect solution''
Baker told Decrypt that dAMM is “a perfect solution for two problems we had,” as the founder of market neutral market maker System 9.

Firstly, he explained, the majority of existing on-chain institutional lending platforms only lend stablecoins. dAMM, by contrast, aims to enable institutions to borrow and lend as many tokens as possible. “A huge edge we have is that we’re listing 25 tokens on day one, and our goal is 200 within the first year,” he said. “We’re not just launching on Ethereum, we’re launching on Polygon, Arbitrum, Optimism, Avalanche—every EVM-compatible chain possible.”

The second challenge is risk mitigation, one that dAMM is addressing by only lending to market neutral market makers. “For the last five years in crypto, there hasn’t been a single market maker default on a public platform or an institutional lending platform,” Baker said. “The only defaults were people that were lending to directional trading firms like Three Arrows Capital.”


To ensure that lenders on dAMM know who their counterparties are, the platform ensures that all addresses are labeled and subject to know-your-customer (KYC) and know-your-business (KYB) checks. “We''re going to start out publishing all the addresses of every market banker that borrows on our docs,” Baker said. “You''ll be able to see every single transaction they make, every single loan they take, where they''re moving all of your assets. You can see in every pool exactly who your borrowers are, who your counterparty is.”

That provides lenders with insight into what strategies market makers are pursuing; whether they’re moving funds to exchanges, performing yield farming or centralized to decentralized arbitrage strategies. Users can also see how much market makers are allowed to borrow, enabling them to gauge the risk level that the dAMM Foundation and pool delegates are prepared to accept for each borrower. 

Bringing security to DeFi
The result, Baker explains, is a kind of “hybrid centralized-decentralized” model that addresses some of DeFi’s shortcomings. “Things like Three Arrows Capital don’t happen anymore in TradFi, because TradFi has prime brokers that basically monitor your risk 24/7,” Baker said. “If you ever get close to losing their leverage, they liquidate you in one second. Nothing like that exists in crypto.”

Want to be a crypto expert? Get the best of Decrypt straight to your inbox.
Your Email
you@emailaddress.com

Get it!
He added that it’s unlikely that lenders could give directional trading firms leverage in crypto “until there''s a proper prime brokerage built.” That, in turn, means the only people that can be lent to undercollateralized with any degree of security are market neutral market makers; something that dAMM aims to accomplish while widening the scope of assets that can be lent to them.

Future plans include risk management tools that enable users to specify what percentage of their loans will go to undercollateralized versus overcollateralized lending. “I think what''s going to be a huge advance in crypto is the ability to actually choose your risk parameters like that,” said Baker, who added that he hopes that it’ll help dAMM Finance become “the biggest lending platform in crypto.”

dAMM is an institutional lending platform for any token with algorithmically determined interest rates. Token issuers with a liquidity pool on dAMM Finance’s platform, market makers, and investors can borrow on the platform to provide liquidity and trade across all centralized and decentralized trading venues.', 'https://i.ibb.co/ydf2ypW/image.png', 'Defi', '2022-09-18 15:50:35.808501');
INSERT INTO public.news (id, platform_id, author_id, link, title, content, image, category, created_on) VALUES (65, 19, NULL, 'https://www.newsbtc.com/news/defi/yearn-finance-creator-to-launch-new-amm-what-its-all-about/', 'Yearn Finance Creator To Launch New AMM, What It’s All About?', 'Famous for his motto “I test in prod”, Andre Cronje, inventor of Yearn Finance and other DeFi protocols, will launch a new platform. Called ve(3,3) it has been designed as an Automated Market Maker (AMM) to operate with a “protocol for protocols” architecture.
In other words, this new AMM will be easy to integrate with other platforms to incentivize their own liquidity and without tradeoffs. The protocols that decide to add ve(3,3) won’t lose fees, volumes, or liquidity, as the creator of Yearn Finance explained in an official post.
Cronje believes AMMs utility has undergone a change, from primarily serving as a tool for liquidity providers to serving as an addition to projects. Thus, ve(3,3) seeks to meet the demand of AMM’s new users; other protocols.

His new project, ve(3,3), will remove friction from the process of adding token incentives to a protocol’s liquidity, will make it simpler for projects to accrue fees from incentives, and will operate as a permissionless platform. The Yearn Finance developer said:

With the above in place, any protocol or project can easily incentivize their own liquidity, be it for their token, their stable coin, or even other derivatives, and while doing so, they fully accrue fees.

Cronje’s new protocol will have multiple features, including the capacity to natively support swaps between closely correlated assets, and uncorrelated assets, Uniswap v2 compatibility which will let projects deploy its interface, the possibility to permissionless create pools, gauges, and bribes.
In addition, the protocol will operate with a 0.01% fee to be paid in base assets. Cronje’s protocol for protocols will let other platforms support delegation, increase “holdings proportional to emission”, and conduct locks with capital efficiency, amongst many other features.

Yearn Finance Inventor To Take AMM Utility To Its Next Phase?
As an additional incentive for projects to implement Cronje’s protocol, the platform will reward them with ve(3,3) tokens. Those projects that occupy the top 20 by total value locked (TVL) will receive these rewards two weeks after the protocol launches.

The launch could take place next week, as Cronje announced via Twitter. By the end of next week, the platform will take a snapshot to determine the projects that will receive a percentage of the 2,000,000 ve(3,3) available for rewards. Cronje added:
It is up to them (the selected projects) to decide what they will incentivize, be it their own token, stable coin, or other liquidity. The timeline for this will thus be 2 weeks post protocol launch until distribution starts.

Final commit sent off for peer reviews, audits, and third party reviews.

Target of TVL snapshot end of next week.

One week for voting (and bribes), and then emission starts.

Website will be up next week.

Launching on 👻

— Andre Cronje 👻🐸 (@AndreCronjeTech) January 11, 2022

As of press time, Yearn Finance native token YFI trades at $32,139 with a 2.7% profit in 24-hours.
', 'https://i.ibb.co/vH83WcK/image.png', 'Defi ', '2022-09-18 15:50:35.811716');
INSERT INTO public.news (id, platform_id, author_id, link, title, content, image, category, created_on) VALUES (66, 24, NULL, 'https://blockchain.news/news/tether-launches-usdt-stablecoin-on-near-network-to-unlock-new-defi-products', 'Tether Launches USDT Stablecoin on Near Network to Unlock New DeFi Products', 'Tether Operations Limited, the company behind USDT stablecoin, announced on Monday that it has launched Tether (USDT) stablecoin on the Near Network, a proof of stake (PoS) blockchain, as part of efforts to continue expanding integrations with diverse blockchain networks.

Tether USDT is now live on the Near Network, a smart contract-enabled blockchain platform designed to host decentralized applications (dApps), and strives to compete with Ethereum and other major smart contract-enabled blockchains like EOS and Polkadot.

The integration of Tether USDT into the Near blockchain is a major milestone in the company’s commitment to increasing the presence of the stablecoin in decentralized finance (DeFi) ecosystems.

Paolo Ardoino, Tether Chief Technical Officer, said:

“The launch of USDT on Near blockchain will undoubtedly unlock new DeFi products and impact on volume growth of the Near DeFi ecosystem to be remarkable. The NEAR ecosystem has witnessed historical growth this year and we believe Tether will be essential in helping it continue to thrive.”

Ardoino added that trading Tether on the NEAR protocol would help alleviate the potential adverse effects associated with market volatility and accelerate scalability for its (NEAR) users.

With the addition of the Near Network, Tether USDT is now available on 13 various networks. The stablecoin is now live on blockchains such as Polygon, Kusama, Ethereum, Tezos, Solana, Algorand, EOS, Liquid Network, Omni, Tron, and Bitcoin Cash’s Standard Ledger Protocol.

In June, Tether expanded the list of blockchain networks supporting its flagship stablecoin USDT to Tezos, a proof-of-stake (Pos) platform for creating smart contracts and decentralized applications (dApps).

Tether was launched in 2014 and issued on the Bitcoin (BTC) blockchain via the Omni Layer protocol, a solution used for building and trading digital assets on top of Bitcoin.

Responding to Market Dynamics  

The use of stablecoins on public blockchains like Ethereum has grown significantly, making them integral to DeFi operations.

Many market stakeholders consider that the upcoming Ethereum Merge could affect the stability of stablecoins as it hosts most DeFi applications. The Merge, which is expected to happen on September 15, will see the Ethereum blockchain move from its Proof-of-work (POW) consensus mechanism to Proof-of-Stake (POS) consensus method.

Major stablecoin issuers like Tether (USDT) and Circle (USDC) have already announced plans to support the outcome of the Merge.

In June, Tether launched a British stablecoin version to capitalize on the UK government’s desire to make Britain a global crypto hub.

Like its US dollar counterpart, of which $67 billion is actively traded on crypto markets, the UK stablecoin is built on the Ethereum blockchain, and its value is set at £1.

The launch of the GBPT token comes at a time when the crypto market is being tested with the recent huge price plunge. The industry as a whole has contracted from almost $3 trillion of trading tokens to less than $ 1 trillion, and the leading cryptocurrency, Bitcoin, has declined from a high of $69,000 to around $20,000.

Tether’s largest token, the USDT stablecoin Tether, fell by more than $8 billion in just over a week as investors rushed to cash out into safer assets, and the total value circulating dropped by almost $20 billion since the peak.

Despite the falls, Tether said its business has never been more stable and pointed out the speed with which the billions were withdrawn as evidence showing the company''s strength.

In early June, Tether faced redemption requests for $10 billion of USD₮ redemptions within a single week and could easily fulfil all requests.

Despite the crypto crash, the UK government continued to support the sector and singled out stablecoins as an area that needs regulatory encouragement.', 'https://i.ibb.co/hfvcBjP/image.png', 'Defi , Altcoins, Blockchain', '2022-09-18 15:50:35.814781');
INSERT INTO public.news (id, platform_id, author_id, link, title, content, image, category, created_on) VALUES (67, 42, NULL, 'https://ambcrypto.com/defi-tvl-drops-by-10-in-august-ethereum-leads-with-most-losses/', 'DeFi TVL drops by 10% in August; Ethereum leads with most losses', 'DappRadar, in a new report, found that the overall total value locked (TVL) within the decentralized finance ecosystem (DeFi) declined by 10.47% in August. The total TVL now stood at $58.4 billion. 

According to the data from DefiLlama, DeFi TVL sat at $250 billion less than eight months ago. With only $58.4 billion, total TVL today stood at its April 2021 level when the DeFi ecosystem began gaining momentum. Furthermore, the total DeFi TVL has dropped by 55% as compared to 2021.

In August, the fall in the DeFi TVL caused the market to lose about $8.7 billion. According to DappRadar, this decline was attributable to the 8 August announcement by the Office of Foreign Assets Control (OFAC) barring U.S. residents from using Tornado Cash.

However, despite this decline in TVL, DeFi-based activity went up by 3.7% in August. 

Ethereum suffered the most
With a total TVL of $34.69 billion by projects housed within Ethereum [ETH], the network controls 68% of the total market share. However, according to DappRadar, the network’s market share declined by 11% in August and has declined by 56.63% in the last year.

The top DeFi protocols on Ethereum, MakerDAO, Lido Finance, and Uniswap also registered declines in the last month. At press time, MAakerDAO’s TVL stood at $8.37 billion, having declined by 6% in August and by over 25% since August 2021. 

Interestingly, despite the upcoming Merge and leading the campaign for liquid staking of Ethereum, TVL on Lido Finance dropped 7% in August. Also, Uniswap ’s TVL was $5.58 billion as of this writing. It declined by 12% in August. 

DappRadar found further that the TVL of protocols built on BNB Chain declined by 6.44% in August and has so dropped by 75.67% since August 2021. As for Solana [SOL], the attack suffered by the chain at the beginning of the month caused its TVL to drop by 27% in the first four days.

It then proceeded to fall by 6% “for the remainder of the month and is now valued at $2.11 billion, a loss of about $1 billion,” DappRadar found.

In addition, Tron network saw its TVL fall by 2.90% in August, although the same has gone up by about 68% in the last year. Also, while its TVL declined by 17.20% in August, Avalanche’s TVL has risen by almost 11% since August 2021. ', 'https://i.ibb.co/ns0VDSN/image.png', 'Defi , Blockchain', '2022-09-18 15:50:35.816289');
INSERT INTO public.news (id, platform_id, author_id, link, title, content, image, category, created_on) VALUES (68, 25, NULL, 'https://cryptoslate.com/usdd-is-fueling-trons-defi-tvl-rise-draws-comparison-with-terras-ust/', 'USDD is fueling Tron’s DeFi TVL rise, draws comparison with Terra’s UST', 'Tron''s TVL rose to over $6 billion within the last 30 days, placing it behind BNB Chain with $8.8 billion and Ethereum with $71.3 billion TVL.

Xeggex
Tron has become the third-largest network by total value locked (TVL) in DeFi protocols a month after launching its algorithmic stablecoin, USSD.

The Justin Sun-led protocol saw its TVL rise to over $6 billion within the last 30 days, placing it behind BNB Chain with $8.8 billion and Ethereum with $71.3 billion TVL. 

CoinGecko, a crypto data aggregator, identified the launch of its algorithmic stablecoin, USDD, as one of the reasons behind the massive rise in its TVL. USDD was launched on May 5, and its market cap is currently above $621 million.
This rapid growth has led to some drawing a parallel between it and the TerraUSD, which imploded last month. Before UST’s collapse, the stablecoin had reached over a $30 billion market cap.

Many believe the similarities between Tron’s USDD and Terra UST are evident as both are algorithmic stablecoins relying on market arbitrage to maintain their value.

Tron-based protocols also offer significant returns similar to what Anchor protocol offered on Terra’s ecosystem. JustLend, which holds most of the TVL, offers an APY of 23%, far above the 19.5% that Anchor offered.

Another protocol, SunSwap, offers users up to 64% when they stake USDD-TRX liquidity tokens. These high annualized returns have drawn users to these protocols. JustLend’s TVL went from $1.79 billion on May 1 to $2.98 billion on June 1.

Already, some critics have said that USDD will fail just like UST, with some saying it doesn’t qualify as an algorithmic token. 


Xeggex
Tron has become the third-largest network by total value locked (TVL) in DeFi protocols a month after launching its algorithmic stablecoin, USSD.

The Justin Sun-led protocol saw its TVL rise to over $6 billion within the last 30 days, placing it behind BNB Chain with $8.8 billion and Ethereum with $71.3 billion TVL. 

CoinGecko, a crypto data aggregator, identified the launch of its algorithmic stablecoin, USDD, as one of the reasons behind the massive rise in its TVL. USDD was launched on May 5, and its market cap is currently above $621 million.


This rapid growth has led to some drawing a parallel between it and the TerraUSD, which imploded last month. Before UST’s collapse, the stablecoin had reached over a $30 billion market cap.

Many believe the similarities between Tron’s USDD and Terra UST are evident as both are algorithmic stablecoins relying on market arbitrage to maintain their value.

Tron-based protocols also offer significant returns similar to what Anchor protocol offered on Terra’s ecosystem. JustLend, which holds most of the TVL, offers an APY of 23%, far above the 19.5% that Anchor offered.

Another protocol, SunSwap, offers users up to 64% when they stake USDD-TRX liquidity tokens. These high annualized returns have drawn users to these protocols. JustLend’s TVL went from $1.79 billion on May 1 to $2.98 billion on June 1.

Already, some critics have said that USDD will fail just like UST, with some saying it doesn’t qualify as an algorithmic token. 


Meanwhile, Tron’s native token TRX has seen its value rise in tandem with the TVL. According to CryptoSlate data, TRX is trading for $0.08 after rising by over 24% within the last 30 days.

Justin Sun insists USDD can survive
In a recently published blog post, Justin Sun revealed that USDD would be learning from the epic fall of Terra’s UST. 

According to the post, USDD would always be over-collateralized by low volatile assets like USDT, USDC, Bitcoin, and other digital assets.

Sun continued that USDD’s supply would be sustained in phases. In the first phase, those who stake the algorithmic stablecoin will receive a fixed 30% APR, and it would be capped at 2B USDD.

In the second phase, those who choose to lock their USDD liquidity for a year would continue to receive high APR, while those who lock theirs for a shorter period would receive lower rates.

He concluded that USDD would expand to other blockchains as the industry grows. Presently, the stablecoin is active on Tron, BNB Chain, and Ethereum.

', 'https://i.ibb.co/2M8Kyvy/image.png', 'Defi , Blockchain', '2022-09-18 15:50:35.817599');
INSERT INTO public.news (id, platform_id, author_id, link, title, content, image, category, created_on) VALUES (69, 42, NULL, 'https://cointelegraph.com/news/decentralized-finance-faces-multiple-barriers-to-mainstream-adoption', 'Decentralized finance faces multiple barriers to mainstream adoption', 'Decentralized finance (DeFi) is a growing market popular with experienced crypto users. However, there are some roadblocks regarding mass adoption when it comes to the average non-technical investor. 

DeFi is a blockchain-based approach to delivering financial services that don’t rely on centralized intermediaries but instead use automated programs. These automated programs are known as smart contracts, enabling users to automatically trade and move assets on the blockchain.

Protocols in the DeFi space include decentralized exchanges (DEXs), lending and borrowing platforms and yield farms. Since there are no centralized intermediaries, it’s easier for users to get involved in the DeFi ecosystem, but there are also increased risks. These risks include vulnerabilities in a protocol’s codebase, hacking attempts and malicious protocols. Combined with the high volatility of the crypto market in general, these risks can make it harder for DeFi to reach wide adoption with average users.

However, workarounds and advancements in the blockchain space can address these concerns.

Regulatory concerns with DeFi
Regulation can benefit the DeFi space, but it also conflicts with the core principles of decentralization. Decentralization means a protocol, organization or application has no central authority or owner. Instead, a protocol is built with smart contracts executing its main functions while multiple users interact with the protocol.

For example, smart contracts take care of the staking and swaps with a DEX, while users provide liquidity for the trading pairs. What can regulators do to prevent an anonymous team from pumping up a token’s value before withdrawing liquidity from DEXs, otherwise known as rug-pulling? Due to the decentralized nature of the DeFi ecosystem, regulators will face challenges when trying to maintain a certain level of control within the space.

Despite the challenges, regulation isn’t completely out of the picture regarding decentralized finance. In Q4 2021, the Financial Action Task Force released an updated version of their guidance to virtual assets document. The update outlined how developers of DeFi protocols could be held accountable in a crisis. While the protocol may be automated and decentralized, the founders and developers could be called virtual asset service providers (VASPs). According to the state where they are based, they may also need to be regulated.

Regarding regulation within DeFi, platforms can also build protocols that comply with regulatory requirements. For example, Phree is a platform that builds decentralized protocols while considering regulatory concerns where possible. One of the ways they do this is by working with traditional finance entities to build DeFi protocols that meet standard regulation requirements. This would entail adding processes like Know Your Customer and Anti-Money Laundering checks to DeFi platforms like DEXs and lending or borrowing platforms. In addition, making traditional finance (TradFi) compatible with the DeFi ecosystem would help to spread its adoption due to the dominance of organizations in the TradFi space.

Ajay Dhingra, head of research at smart exchange Unizen, told Cointelegraph, “Incompatibility with traditional finance ecosystem is one of the major challenges. There is a need to connect the CeFi regulatory framework with on-chain identities and real-time regulatory reporting so that DeFi becomes accessible to financial institutions that deal in trillions.”

Recent: Education and aesthetics: Bringing more women into the Metaverse

Central bank digital currencies (CBDC) have been suggested as an answer to stablecoins after the Terra algorithmic stablecoin collapse earlier this year. Swiss National Bank executive Thomas Moser previously told Cointelegraph regulators might favor centralized stablecoins over decentralized ones. However, he also mentioned that it would likely take time and that current financial regulations could make the DeFi ecosystem obsolete due to conflicting principles.

Security concerns within the DeFi ecosystem
Security issues are a major concern within the DeFi sector, with malicious actors in the space taking advantage of vulnerabilities within bridging protocols and decentralized applications (DApps). 

Adam Simmons, chief strategy officer of RDX Works — builders of the Radix protocol — told Cointelegraph, “The dirty secret of DeFi right now is that the entire public ledger technology stack has a huge number of known security issues, as demonstrated with the billions of dollars lost in hacks and exploits in the last few years.”

Vulnerability exploits are still taking place in the DeFi space. Recently the Nomad token bridge was drained of $160 million worth of funds. It is also estimated that $1.6 billion worth of funds has been stolen from DeFi protocols this year alone. Lack of security within the DeFi space makes it less likely for new users to get involved while discouraging people who have fallen victim to protocol exploits.

In order to combat this problem, there needs to be a greater emphasis on vetting protocols within the space to discover vulnerabilities before hackers can take advantage. There are already platforms like CertiK that carry out audits on blockchain-based protocols by checking the smart contract code, so that’s a good start. However, the industry needs to see increased auditing of DApps before they go live to protect users in the crypto space.

User experience issues
User experience (UX) is another potential roadblock for users who want to get involved in the DeFi ecosystem. The way investors interact with wallets, exchanges and protocols isn’t a straightforward intuitive process, leading to some users losing their funds due to human error. For example, in November 2020, a trader spent $9,500 in fees to execute a $120 trade on Uniswap after getting the “gas limit” and “gas price” input boxes confused.

In another example, a rock nonfungible token (NFT) worth $1.2 million was sold for less than a cent when a user listed it for sale at 444 wei instead of 444 Ether (ETH). These examples are known as fat finger errors, where users lose money due to mistakes they make when inputting values for prices or transaction fees. For DeFi to be widely adopted by the masses, the process must be simple for regular, everyday people.

However, that is currently not the case. In order to use a DeFi application, users need to own a noncustodial wallet, or a wallet where they control the private keys. They also need to back up the recovery phrase and keep it in a safe place. When interacting with a DApp, users need to connect their wallet, which can sometimes be complicated, especially when using a mobile wallet.

Recent: Lido’s market dominance and Ethereum decentralization post-Merge

In addition, when sending or receiving payments, users need to copy the addresses involved in the transactions, and in some cases, they need to input the amount of gas they want to spend on a transaction. If a user doesn’t understand this process, they could use a low gas setting and end up waiting hours for their transaction to be sent since the gas fee is so low.

The process gets even more complex when dealing with tokens built on networks such as the ERC-20 and BEP-20 standards. When you transfer these tokens, you need to pay for the transaction with the cryptocurrency of the network it belongs to. For example, if you want to send an ER-20 token, for example, USD Coin (USDC), you’ll need to hold ETH in your wallet to pay for the gas, which adds more complexity to the transaction.

Developers in the DeFi space need to make the ecosystem more user-friendly for beginners and regular non-technical users in the space. Building wallets and DApps that prevent fat finger errors (by auto-inputting values, for example) is a good start. This is already the case with centralized exchanges, but it needs to be brought into decentralized platforms and noncustodial wallets for the DeFi sector to grow.', 'https://i.ibb.co/TByJ3Y8/image.png', 'Defi', '2022-09-18 15:50:35.820519');
INSERT INTO public.news (id, platform_id, author_id, link, title, content, image, category, created_on) VALUES (70, 5, NULL, 'https://ambcrypto.com/is-aave-set-to-maintain-its-lead-in-defi-race-of-the-future/', 'Is AAVE set to maintain its lead in DeFi race of the future', 'AAVE has so far maintained a healthy lead as the top DeFi borrowing and lending protocol by market cap. But does it still maintain its position now that more competition is flowing into the segment?

Well, AAVE currently holds the top spot as the largest decentralized lending and borrowing market by market cap.

It has the first mover advantage over its competition and this means it had more time to develop and execute.

Although this advantage was critical to its success, the competition continues to intensify as newer players enter the segment.


AAVE’s competitive advantage may come from other areas especially now that DeFi is in its exponential growth phase.

There have been major challenges along the way despite the fast-paced growth.

DeFi attacks have been the biggest challenge for the DeFi space. According to a Messari report, smart contract hacks on DeFi bridges had the lion’s share of DeFi hacks.


Remaining ahead of the curve
AAVE has already been working towards overcoming the aforementioned challenge.

The DeFi lending protocol plan for overcoming those challenges is going through Config, a new tool for smart contract development. However, this tool will be available for all DeFi protocols as part of a plan to fortify the entire segment.


AAVE needs to boost growth in order to stay ahead of the curve. Its growth metrics indicate that it slowed down in the last six weeks. This performance reflects the woes that befell the DeFi segment in May and June.


Source: Santiment

Both the network growth and the number of active addresses metrics entered a decline phase after 18 July. In fact, AAVE is attempting to make its DeFi lending platform more interesting through the GHO stablecoin.

This part of its plan will provide comprehensive solutions that will also lower costs for users.

Although it is the oldest DeFi lending protocol, AAVE remains relevant and competitive. It has already proved popular among users and developers continue to innovate and address challenges that they face along the way.

This is a recipe that many DeFi users look for, and it will be interesting to see how the AAVE protocol will innovate in order to remain on top of its game', 'https://i.ibb.co/zhdRbzr/image.png', 'Defi ', '2022-09-18 15:50:35.822174');
INSERT INTO public.news (id, platform_id, author_id, link, title, content, image, category, created_on) VALUES (71, 14, NULL, 'https://thedefiant.io/real-yield-defi', '‘Real Yield’ Emerges As A New DeFi Trend', 'Protocols Like Redacted, Umami and GMX Share Revenue In ETH and Stablecoins
Whether it’s DeFi 2.0 or ultrasound money, crypto loves its narratives. 

The latest one is “real yield,” which, like the DeFi trends before it, is being touted in both substantive and vaporous ways. 

Real yield is a share of a protocol’s revenue, denominated in a mainstream asset like ETH or USDC, which holders of a protocol’s governance tokens can access by staking or locking them. If this sounds like a dividend, you’re not far off. 

For many DeFi users left holding governance tokens down 80% or more off all-time highs, cash flow in ETH or stablecoins is a welcome change. 

The concept of real yield contrasts with the ponzi-esque APYs of 2021, when people barely batted an eye at four-digit yields. Those returns were broadly fueled by projects’ native tokens, which would be distributed at unsustainable rates in order to attract users’ deposits. 

DeFi users were hopping from project to project, depositing assets for the token rewards, and trying to dump them before everyone else did. This is what’s known as yield farming, and the practice proved extremely lucrative in 2020 and 2021. 

Now, influencers are lauding projects for their real yield — Redacted Cartel, Umami Finance, Gains Network, GMX, and Synthetix are among those garnering praise for passing revenue on to their users. 

Marketing Ploy
As the concept gains traction, however, some are concerned that “real yield” will become a signalling metric, rather than one which demonstrates the financial health of a protocol.

0xSami, the co-founder of Redacted Cartel, which is actually among the real yield protocols, is one such skeptic. He published an article on Aug. 7 entitled wolf in sheep’s clothing underscoring the dangers of projects optimizing for real yield. 

“I think in the same way that TVL (total value locked) is a flawed metric, we should not use the ETH APY as the real metric,” he told The Defiant. TVL encompasses the total value of assets locked in a protocol’s smart contracts. The metric is great to signal a protocol’s size, but it can be easily gamed by offering outsized token incentives for user deposits. TVL also doesn’t address how efficiently the capital is being used.

To 0xSami, optimizing for real yield, even if the APY is in the somewhat reasonable, low two-digit range, runs two main risks. One is that projects can still emit tokens to attract revenue-generating capital. Projects can then tout their ETH or USDC-denominated real yield, even though users are accessing that yield by staking a rapidly inflating governance token. 

Delaying token emissions while also requiring users to lock tokens up can be a particularly insidious combination. In this scenario, projects can point to a low emissions-to-revenue ratio as evidence of a protocol’s business viability. 

Then, six months down the line, for example, emissions can be set to skyrocket. This devalues users’ still-locked tokens, perhaps much more so than the so-called real yield that users earned, leaving them holding the governance token bag yet again.

Alex O’Donnell, CEO of Umami Labs, the company behind Umami Finance, generally agrees with 0xSami’s concerns. Still, Umami is leaning into the real yield narrative, referencing it in their documentation and using the hashtag on their Twitter profile. 


Not Just A Meme
O’Donnell emphasized to The Defiant that while token emissions aren’t necessarily bad, emitting them to directly incentivize financial activity and then calling some of that activity “real yield”, runs counter to the movement. 

“Real yield is not just a meme, but it’s not something that exists in isolation,” the Umami CEO said. This echoes memories of TVL, which isn’t useless but is far from a magic bullet for evaluating DeFi protocols. 

Umami generates yield for UMAMI depositors by taking a portion of the yield from the protocol’s USDC vault, a yield-generating strategy that uses both GMX, a perpetuals exchange, and Tracer, another derivatives platform.

“Once something is positioned as desirable, everyone wants to say they have it, and the definition is at risk of getting diluted,” O’Donnell said. 

Investing In Growth
0xSami’s second concern about real yield is that as the metric gains momentum, projects will be forced to optimize for the metric in order to attract and retain users. This will likely happen at a time when the project should be building up its treasury. 

“Keeping the money in-house to retain talent and fund new developments will serve your community better in the long term,” he wrote in his post. 

Early-stage growth companies typically pay little to no dividends to their stockholders, instead electing to reinvest that capital into expanding their businesses. With crypto projects still in their infancy, it’s easy to make the argument that the majority of revenue should go towards growth. 

Here too, O’Donnell generally agrees, though he thinks that in the current environment, some emphasis on real yield is necessary. 

Rebuilding Trust In DeFi
“The DeFi ecosystem is still in a place where it is trying to win trust from users and there’s many good reasons why users don’t have complete trust,” he said. Blowups like Terra and Celsius have certainly hurt DeFi’s reputation. 

“In that context, showing users through your actions that you are going to make good on the promise that if they hold your token, they will capture a share of the value that you’re creating, is really critical,” O’Donnell continued. 

Last week on the Frax Finance-centered podcast, Flywheelpod, the Umami CEO revealed that the protocol has been approved for an account with Circle, the purveyor of USDC, as a part of its efforts to build products geared towards institutions. This may allow Umami to onboard users directly through fiat accounts, rather than having to go through an exchange. 

Theoretically, if Umami is able to onboard institutional capital, fees generated by those deposits will flow to UMAMI stakers, which would be a significant source of “real yield.” 

Whenever a new metric comes along that can be used as an effective marketing tool, there’s bound to be efforts to optimize for it. As the real yield narrative runs its course, 0xSami for one hopes to properly contextualize it.

“It’s a question of getting around the smoke and mirrors before scams come in and rug retail again,” he said. ', 'https://i.ibb.co/GvshK23/image.png', 'Defi', '2022-09-18 15:50:35.823864');
INSERT INTO public.news (id, platform_id, author_id, link, title, content, image, category, created_on) VALUES (72, 41, NULL, 'https://crypto.news/learn/why-tvl-matters-in-defi-total-value-locked-explained/', 'Why TVL Matters in DeFi: Total Value Locked Explained', 'Before NFTs and the Metaverse, Decentralized Finance (DeFi) has been the champ rocking the cryptosphere to high seas never reached before. Perusing the earlier records, you will find that crypto enthusiasts invested up to $126.02 billion in the top 125 DeFi apps last year. These numbers were projected to go higher if not for the current global bear run crippling all markets, even the digital currencies. 

Regardless, the advancements in the DeFi sector are undeniably impactful to ignore. Unlike in the crypto markets, where investors use terms like trading volume, market capitalization, and total circulating supply to track cryptocurrencies, financial experts have introduced the total value locked (TVL) as a vital indicator in monitoring DeFi investments.

Any avid DeFi investor must understand TVL to make accurate investment decisions and succeed in the decentralized finance space. Here’s an in-depth analysis of TVL and why it matters when exploring a decentralized finance ecosystem.  

Total Value Locked (TVL) Explained  
TVL is a crypto indicator representing the real-time value of cryptos locked up on DeFi’s smart contracts. In simple terms, TVL is the total value in $US Dollar of all assets deposited into the DeFi project’s smart contracts. These funds are locked in DeFi platforms for three main reasons. That is: 

Lending
Staking, Yield farming
Liquidity pools
Investors can use TVL to analyze the value and significance of a DeFi project or protocol. However, it’s important to note that TVL doesn’t include the amount in outstanding loans or the yield earned by DeFi protocols. Instead, it simply reflects the current value of the deposits in DeFi protocols, usually denoted in the US dollar. 

The TVL of the DeFi market or a DeFi protocol constantly changes when investors deposit or withdraw funds into the DeFi projects. TVL also fluctuates in line with the changing value of the fiat currency, usually the US dollar and denominated in the project’s native token. As such, if the fiat currency or the project’s native token increases in value, so does the protocol’s TVL and vice versa. 

DeFi protocols can be based on a single or across various blockchain networks. For DeFi protocols spread across different blockchain networks, the TVL is denoted per each blockchain network. Ethereum blockchain network is currently the most extensive network in TVL, with over five hundred DeFi protocols in staking, lending, and more liquidity pools onboarding. This accounts for almost half of the DeFi industry TVL, which currently stands at $156 billion. 

Why Does TVL Matter in the DeFi Space?  
DeFi platforms require capital to be deposited as liquidity or loan collateral in trading pools to be accountable when calculating TVL. Therefore, TVL is important for the DeFi community as it shows the capital’s impact on the DeFi protocol’s profits and losses for concerned traders and investors. Simply put, TVL gives the overall health of the DeFi space. 

The TVL of an individual DeFi project represents all the funds present in the protocol in terms of lending, borrowing, and transactional capacities. The overall TVL of the DeFi space is generally the summation of all the TVL across various DeFi protocols. Sentimentally, TVL can measure investors’ faith in a particular DeFi protocol. 

A DeFi protocol with a high TVL may mean more capital is locked in its smart contracts with greater popularity, usability, and liquidity. It also means that the project is gaining attention among active and monthly transacting users, conveying a higher ROI (Return on Investment). On the contrary, a lower TVL implies that the DeFi protocol has lower liquidity and, as a result, lower yields. 

TVL of a particular DeFi protocol can also be used to indicate the market performance of its native token. By constituting the figure of TVL with the market cap, we can know whether a protocol’s native coin is undervalued or overvalued. A token is considered overvalued/undervalued if the project’s market cap is high/low relative to its TVL. 

More or less, TVL is a crucial metric in the DeFi space for swapping and lending protocols by displaying the overall investors’ faith and interest. These kinds of protocols often aim for higher TVL. A higher TVL implies higher efficiency as well as an adequate supply of liquidity for borrowers in the lending markets.

How Is TVL Calculated 
The first step in calculating the TVL of a particular DeFi project is establishing its market cap. You can do this by multiplying the project’s token supply by the current price, usually in US Dollars. The TVL is then calculated by dividing the market cap by the maximum circulating supply. 

Relationship between Market Cap and TVL  
Both market capitalization (cap) and TVL are important DeFi indicators. Market cap refers to the total value of the protocol’s token and is calculated by multiplying the total number of tokens by its current market price, usually in USD. It can be used as an indicator of the market value of the DeFi protocol. 

While both are significant DeFi indicators, TVL is considered more accurate than market cap, especially in the DeFi ecosystem. That’s because the market cap captures the protocol’s passive and active users but fails to provide an accurate figure regarding the number of active users and the project’s popularity.

 In other words, the market cap still captures passive investors who may purchase the protocol’s token with the hope that the token will grow and may not be using the protocol quite actively. TVL, on the other hand, factors in only the active users of the protocol, reflecting the platform’s true popularity, liquidity, and usability. 

Market cap and TVL can be used to calculate the TVL ratio of the DeFi project to establish whether its native token is overvalued or undervalued. The TVL ratio is calculated by dividing the market cap by the TVL of the token. A TVL ratio of less than one indicates that the token is undervalued, while a TVL ratio of more than one indicates that the token is overvalued. An undervalued token is more attractive to investors as there is room for growth depending on the project’s usability.   

Types of DeFi Protocols and their TVL 
There are different types of DeFi protocols, and the TVL may take different forms, as explained below: 

Lending and Borrowing Protocols- Lending and borrowing protocols feature liquidity pools that allow users to lend and borrow crypto funds via the pools. Compound (COMP), Aave (AAVE), and Maker (MKR) are the top lending and borrowing DeFi protocols. TVL for these protocols is the total value locked in the liquidity pools. 
Yield Optimization Protocols- Yield optimization protocols function as automated portfolio managers allowing users to optimize their investments across several lending and borrowing DeFi protocols. Yearn. Finance (YFI) is an excellent example of a yield optimization protocol. TVL for such platforms is the value lent out by lenders on the protocol for yield optimization. 
Decentralized crypto exchanges (DEXes)-DEXes facilitate the swapping or trading cryptos on an automated market maker (AMM). In DEXes, transactions are conducted via liquidity pools that hold the required crypto pairs. Curve Finance (CRV), Uniswap (UNI), and SushiSwap (SUSHI) are the top DEXes. The TVL is the total value held in all the coin-pair pools within the protocol for decentralized crypto exchanges. 
TVL May Not Always be Right          
In some cases, TVL may not donate the actual valuation of a DeFi project. Some DeFi projects may have large investors, i.e., whales, who can sway the TVL of the project with a single withdrawal or deposit. In some cases, the whales may be incentivized to hype a DeFi protocol by making significant investments and sending positive signals to woo potential investors. In such cases, the TVL may fail to portray the actual state of the project.  

Therefore, with this in mind, investors need to consider other indicators aside from TVL to establish whether a specific DeFi protocol is a viable investment. 

Closing Words 
Total Value Locked (TVL) is an essential indicator of a DeFi’s protocol liquidity, popularity, and usability. TVL also indicates the potential and reliability of a DeFi protocol. It’s a better indicator than the market cap since it portrays the value of DeFi protocols and networks. Ethereum is the largest DeFi network in terms of TVL, hosting approximately 500 DeFi protocols. DefiLlama and DeFi Pulse are the best platforms to find out TVLs of DeFi protocols and networks. ', 'https://i.ibb.co/mJnsBv1/image.png', 'Defi', '2022-09-18 15:50:35.827501');
INSERT INTO public.news (id, platform_id, author_id, link, title, content, image, category, created_on) VALUES (73, 23, NULL, 'https://cointelegraph.com/news/how-does-high-frequency-trading-work-on-decentralized-exchanges', 'How does high-frequency trading work on decentralized exchanges?', 'Following the decentralized finance (DeFi) boom of 2020, decentralized exchanges (DEXs) solidified their place in the ecosystems of both cryptocurrency and finance. Since DEXs are not as heavily regulated as centralized exchanges, users can list any token they want. 

With DEXs, high-frequency traders can make trades on coins before they hit major exchanges. Plus, decentralized exchanges are noncustodial, which implies that creators cannot pull an exit fraud — in theory.

As such, high-frequency trading firms that used to broker unique trading transactions with cryptocurrency exchange operators have turned to decentralized exchanges to conduct business.

What is high-frequency trading in crypto?
High-frequency trading (HFT) is a trading method that uses complex algorithms to analyze large amounts of data and make quick trades. As such, HFT can analyze multiple markets and execute a large volume of orders in a matter of seconds. In the realm of trading, fast execution is often the key to making a profit.

HFT eliminates small bid-ask spreads by making large volumes of trades rapidly. It also allows market participants to take advantage of price changes before they are fully reflected in the order book. As a result, HFT can generate profits even in volatile or illiquid markets.

HFT first emerged in traditional financial markets but has since made its way into the cryptocurrency space owing to infrastructural improvements in crypto exchanges. In the world of cryptocurrency, HFT can be used to trade on DEXs. It is already being used by several high-frequency trading houses such as Jump Trading, DRW, DV Trading and Hehmeyer, the Financial Times reported.

Decentralized exchanges are becoming increasingly popular. They offer many advantages over traditional centralized exchanges (CEXs), such as improved security and privacy. As such, the emergence of HFT strategies in crypto is a natural development.

HFTs’ popularity has also resulted in some crypto trading-focused hedge funds employing algorithmic trading to produce large returns, prompting critics to condemn HFTs for giving larger organizations an edge in crypto trading.

In any case, HFT appears to be here to stay in the world of cryptocurrency trading. With the right infrastructure in place, HFT can be used to generate profits by taking advantage of favorable market conditions in a volatile market.

How does high-frequency trading work on decentralized exchanges?
The basic principle behind HFT is simple: buy low, sell high. To do this, HFT algorithms analyze large amounts of data to identify patterns and trends that can be exploited for profit. For example, an algorithm might identify a particular price trend and then execute a large number of buy or sell orders in quick succession to take advantage of it.

The United States Securities and Exchange Commission does not use a specific definition of high-frequency trading. However, it lists five main aspects of HFT:

Using high-speed and complex programs to generate and execute orders

Reducing potential delays and latencies in the data flow by using colocation services offered by exchanges and other services

Using short time frames to open and close positions

Submitting multiple orders and then canceling them shortly after submission

Reducing exposure to overnight risk by holding positions for very short periods 

In a nutshell, HFT uses sophisticated algorithms to continually analyze all cryptocurrencies across multiple exchanges at very high speeds. The speed at which HFT algorithms operate gives them a significant advantage over human traders. They can also trade on multiple exchanges simultaneously and across different asset classes, making them very versatile.

HFT algorithms are built to detect trading triggers and trends not easily observable to the naked eye, especially at speeds required to open a large number of positions simultaneously. Ultimately, the goal with HFT is to be the first in line when new trends are identified by the algorithm.

After a large investor opens a long or short position on a cryptocurrency, for instance, the price usually moves. HFT algorithms exploit these subsequent price movements by trading in the opposite direction, quickly booking a profit.

That said, large cryptocurrency sales are typically harmful to the market because they usually drag prices down. However, when the cryptocurrency rebounds to normal, the algorithms “buy the dip” and exit the positions, allowing the HFT firm or trader to profit from the price movement.

HFT in cryptocurrency is made possible because most digital assets are traded on decentralized exchanges. These exchanges do not have the same centralized infrastructure as traditional exchanges, and as a result, they can offer much faster trading speeds. This is ideal for HFT, as it requires split-second decision-making and execution. In general, high-frequency traders execute numerous trades each second to accumulate modest profits over time and generate a large profit.

What are the top HFT strategies?
Although there are too many types of HFT strategies to list, some of them have been around for a while and aren’t new to experienced investors. The idea of HFT is frequently connected to conventional trading techniques that take advantage of cutting-edge IT capabilities. However, the term HFT can also refer to more fundamental ways of taking advantage of opportunities in the market.

Related: Crypto trading basics: A beginner''s guide to cryptocurrency order types

Briefly put, HFT may be considered a strategy in itself. As a result, instead of focusing on HFT as a whole, it’s important to analyze particular trading techniques that employ HFT technologies.

Crypto arbitrage 
Crypto arbitrage is the process of making a profit by taking advantage of price differences for the same cryptocurrency on different exchanges. For example, if one Bitcoin (BTC) costs $30,050 on Exchange A and $30,100 on Exchange B, one could buy it on the first exchange and then immediately sell it on the second exchange for a quick profit.

Example of a crypto arbitrage strategy

Crypto traders who profit from these market inconsistencies are called arbitrageurs. Using efficient HFT algorithms, they can take advantage of discrepancies before anyone else. In doing so, they help stabilize markets by balancing prices.

HFT is highly beneficial to arbitrageurs because the window of opportunity for conducting arbitrage strategies is usually very small (less than a second). To rapidly seize short-term market opportunities, HFTs rely on robust computer systems that can scan the markets quickly. In addition, HFT platforms not only discover arbitrage opportunities but can also make trades up to hundreds of times faster than a human trader. 

Market making
Another common HFT strategy is market making. This involves placing buy and sell orders for a security at the same time and profiting from the bid-ask spread—the difference between the price you’re willing to pay for an asset (ask price) and the price at which you’re willing to sell it (bid price).

Large companies called market makers provide liquidity and good order in a market and are well-known in conventional trading. Market makers can also be linked to a cryptocurrency exchange to guarantee market quality. On the other hand, market makers that do not have any agreements with exchange platforms also exist—their aim is to use their algorithms and profit from the spread.

How market making strategy works

Market makers are constantly buying and selling cryptocurrencies and setting their bid-ask spreads so that they make a small profit on each trade. They may, for example, buy Bitcoin at $37,100 (the ask price) from someone wanting to sell their Bitcoin holdings and offer to sell it at $37,102 (the bid price). 

The $2.00 difference between the bid and ask prices is called the spread, and it’s mainly how market makers earn money. And, while the difference between the ask and bid price might seem insignificant, day trading in volumes can result in a significant chunk of profit.

The spread ensures that the market maker is compensated for the inherited risk that accompanies such trades. Market makers provide liquidity to the market and make it easier for buyers and sellers to trade at fair prices.

Short-term opportunities
High-frequency trading is not intended for swing traders and buy-and-holders. Instead, it’s employed by speculators wanting to wager on short-term price fluctuations. As such, high-frequency traders move so quickly that the price might not have time to adjust before they act again.

For instance, when a whale dumps cryptocurrency, its price will typically drop for a short time before the market adjusts to meet the supply-demand balance. Most manual traders will lose out on this dip because it may only last for minutes (or even seconds), but high-frequency traders can capitalize on it. They have the time to let their algorithms work, knowing the market will eventually stabilize.

Volume trading
Another common HFT strategy is volume trading. This involves tracking the number of shares traded in a given period and then making trades accordingly. The logic behind this is that as the number of shares traded increases, so does the market’s liquidity, making it easier to buy or sell a large number of shares without moving the market too much.

Related: On-chain volume vs. Trading volume: Differences explained

To put it simply, volume trading is all about taking advantage of the market’s liquidity. 

High-frequency trading allows traders to execute a large number of transactions quickly and profit from even the smallest market fluctuations.', 'https://i.ibb.co/rZLvJx2/image.png', 'Defi', '2022-09-18 15:50:35.82966');
INSERT INTO public.news (id, platform_id, author_id, link, title, content, image, category, created_on) VALUES (74, 18, NULL, 'https://www.coindesk.com/markets/2021/02/23/defi-lending-platforms-liquidate-record-115m-in-loans-as-eth-price-drops/', 'DeFi Lending Platforms Liquidate Record $115M in Loans as ETH Price Drops', 'A record-high $115 million in decentralized finance (DeFi) lending positions were wiped out Tuesday after the price of ether continued to correct to as low as $1,406 on Tuesday. The cryptocurrency has shed 9% in the past 24 hours, according to the CoinDesk 20.
Compound Finance saw the largest number of liquidated positions with some $86 million, or 75% of the total liquidations coming from that platform, according to data provider DeBank.
MakerDAO followed in a distant second with some $10 million in liquidations, or 8% of the total. Aave v1 and v2 combined for a total of $13 million, or 11% in liquidations.
CoinDesk - UnknownDeFi lending liquidations were spurred by a continued drop in the price of ether paired with historic transaction fees.
A sharp 15% correction in the price of ether Monday caused some $25 million in loan liquidations, a three-month high. Nov. 25 saw the previously highest liquidation volume for the emerging financial tech stack with $93 million liquidated.
Historically high gas fees may be one reason mass liquidations are taking place on the lending platforms. The cost of an average transaction set records yet again Tuesday with new highs of $39 for a basic ether transaction, according to data provider Blockchair. For many loans, forcing a liquidation by not closing or topping off the position may end up being cheaper due to high transaction costs.
Read more: Kraken CEO Says Ether Flash Crash Down to Trading, Not System Glitch
The DeFi asset class in general has experienced a sharp selloff as well, down some 13% according to Messari. However, indexes of the asset class remain in the green over the past 30 days with nearly 50% gains, as can be seen on the DeFi Pulse Index (DPI).', 'https://i.ibb.co/JsgvJM8/image.png', 'Defi', '2022-09-18 15:50:35.835831');
INSERT INTO public.news (id, platform_id, author_id, link, title, content, image, category, created_on) VALUES (75, 30, NULL, 'https://cointelegraph.com/news/defi-dapps-activity-rises-3-7-in-august-for-first-time-since-may-report', 'DeFi DApps activity rises 3.7% in August for first time since May — Report', 'DeFi dapps showed a slight recovery for the first time since May, with the daily average of unique active wallets (UAWs) increasing 3.7% on a month-over-month basis, according to a report from DappRadar. 

The rise was partially driven by the Flow protocol, which rose 577% UAW due to Instagram''s support of its NFTs and the game Solitaire Blitz. On the other hand, Solana UAW shrank by 53% in August from the previous month, while transactions dropped by 68%, the findings showed.

There were 1.67 million unique wallets connected to blockchain DApps in August, down 3.52% from last month, and down 14.73% compared to August 2021.


Source: DappRadar

Among industries, gaming accounted for over 50% of the activity usage, with 847,230 daily UAW, although it is down 11% and the number of transactions declined 12.7% month-to-month to $698 million. On the NFT side, UAW fell by 16.7% to 114,542 — the lowest since June 2021, per the report.

Despite the DeFi increase in unique active wallets, the overall DeFi total value locked (TVL) still showed a significant drop; from $250 billion at the beginning of 2022 to $74.21 billion in August.

"The last time the TVL was this low was in April of 2021, when the space was just beginning to get momentum. This indicates that the DeFi TVL has decreased by 56% or more since August 2021."
The report highlighted that August was "particularly difficult for the market because of the Tornado Cash crisis," which dropped the industry TVL by 10.47% to lose $8.7 billion. On Aug. 8, the U.S. Treasury Department accused the crypto mixer platform of laundering more than $7 billion in cryptocurrencies, including $455 million allegedly stolen by North Korean hackers.

Following the sanctions, the Tornado Cash (TORN) price plummeted by 45% in two days, losing almost half of its market value.

Ethereum chain controls 69% of the DeFi TVL with $51.47 billion, according to the report — although it has lost 11% last month, and dropped 56.63% since August 2021. Layer-2 protocols based on Ethereum showed signals of growth "mainly driven by the upcoming Ethereum Merge," with Optimism increasing 57.61% in August for a $1 billion total locked value, Arbitrum rising 14.36%, and Polygon gaining 6.50% month-to-month.', 'https://i.ibb.co/bmX3qLc/image.png', 'Defi', '2022-09-18 15:50:35.843226');
INSERT INTO public.news (id, platform_id, author_id, link, title, content, image, category, created_on) VALUES (76, 35, NULL, 'https://decrypt.co/109411/why-defi-speculators-are-borrowing-ethereum-as-merge-looms', 'Why DeFi Speculators Are Borrowing Ethereum as Merge Looms', 'With Ethereum’s merge event just days away, the entire industry is preparing for the network’s most highly-anticipated upgrade.

Bounty hunters are on the lookout for any bugs in the code; blockchain firm ConsenSys is launching so-called "sustainable" NFTs to celebrate the occasion; and crypto exchanges are making room for another potential fork of the Ethereum blockchain.

DeFi degens are also keeping a close eye on any possible fork. If that were to happen, it would mean that anyone holding ETH at the time of the fork would also earn another airdropped token for the new chain.

For those who were trading crypto back in 2017, you’ll remember that Bitcoin holders earned free Bitcoin Cash (BCH), Bitcoin Gold (BTG), and even something called Bitcoin Diamond (BCD) thanks to various forks of the original cryptocurrency.

A well-known Chinese crypto miner Chandler Guo is currently leading the charge for an Ethereum proof-of-work fork. That’s because after the merge, Ethereum will no longer need mining machines to maintain itself, leaving many mining operations out in the cold.

There’s quite a bit at stake here.

And while Guo attempts to rally the mining troops to execute their fork, degens are borrowing tons of ETH in hopes of also enjoying a windfall of the forked coin (which will apparently carry the ticker ETHPoW).

The borrowing has been so excessive that some protocols are making moves to limit how much can be doled out. Aave, the popular lending and borrowing protocol, has actually just paused ETH borrowing because of this massive demand.

eth borrow aave
Ethereum borrow rates on Aave. (via Aave)
And insofar as the yield you earn for lending on Aave are a function of demand, interest rates for depositing Ethereum have also entered double-digit territory. Right now, you can earn 10.54% on your ETH.

eth supply aave
Ethereum supply-side rates on Aave. (via Aave)
Instead of pausing borrowing, rival protocol Compound is putting a 100,000 ETH cap on how much users can borrow. The current proposal also stipulates that if the platform’s utilization rate hits 100% (which some expect will happen), then the cost to borrow could rise to 1,000%.

Utilization rate is a metric that DeFi protocols like Aave and Compound use to reflect how much of an asset in a given pool is being lent out. A high utilization rate indicates that demand to borrow an asset is close to the total amount of said asset available.

Ciaran McVeigh of 0xA Technologies put it thusly: “If I have a pool with $100 of Dai and $80 of those Dai have been borrowed that represents a utilization rate of 80%.”

What’s the big deal? In the free market of crypto, high demand will be equally met by attractive rates on the supply side, right?

While that’s certainly true, high utilization rates can still pose two key issues.

First and foremost, as soon as 100% of all funds in a pool are in use, depositors won’t be able to withdraw their money out of the system. Second, high utilization rate can cause liquidation problems for these platforms. When there isn’t any collateral in the system because it’s all being borrowed, liquidators won’t be able to close certain positions, potentially leaving the protocol under-collateralized (which is just a fancy way of saying insolvent). And that would be really, really bad.

Finally, something that Ethereum borrowers should be reminded of is that none of these platforms are going to call you up and tell you that the cost of borrowing has just skyrocketed to 1,000%. It will just happen.

And if you’re borrowing specifically to speculate on a potential airdrop should the network fork, then you’re also betting that that new token will also skyrocket. If it doesn’t, you’re in for a world of pain.

Good luck out there.', 'https://i.ibb.co/Ytt45xw/image.png', 'Defi', '2022-09-18 15:50:35.844913');
INSERT INTO public.news (id, platform_id, author_id, link, title, content, image, category, created_on) VALUES (77, 18, NULL, 'https://cryptodaily.co.uk/2022/08/bend-dao-proposes-emergency-measures-as-credit-crisis-escalates', 'Bend DAO Proposes Emergency Measures As Credit Crisis Escalates', 'NFT-collateralized crypto loans platform BendDAO initiated measures to course correct itself as a liquidity crisis over the weekend threatened to spiral out of control. The unfolding situation at Bend DAO highlighted the downsides in letting users borrow using their Bored Ape NFTs as collateral. 

A Disastrous Liquidity Crisis 
Bend DAO allows users to deposit money into the decentralized finance (DeFi) platform that loans the money out while depositors earn a cut from all the accumulating interest payments. However, the collateral is not what you’d expect, pictures of monkeys, pricey punks, and other expensive NFTs. Over the past week, depositors grew fearful that the lender was in a spot of bother, resulting in a bank run. 

As depositors withdrew their assets, it led to Bend DAO’s reserves being completely drained. The liquidity crisis peaked as reserves dropped to a low of 5 ETH on Sunday, worth around $23,715 at the time, from over 10,000 ETH that the DAO held in reserve. The massive drop happened after dozens of Bend DAO’s loans slipped into the so-called “danger zone.” This meant that the NFTs held as collateral for these loans could be liquidated. 

New Week Brings Relief 
Monday saw some of the intense pressure building on the DAO abate as depositors returned to the platform while other borrowers repaid their NFT-backed loans. This relief allowed Bend DAO and its community to address the faulty liquidation mechanism that sparked the weekend crisis. The community is now set to approve a slew of changes to how Bend DAO functions to avoid a similar scenario in the future. 

The Problematic Mechanism 
Bend DAO shields itself from borrowers that default by auctioning off the NFTs they lock as collateral with the platform. According to Nikolai Yakovenko from DeepNFTValue, the protocol is hard coded to accept “only bids that make the DAO whole.” This ensures that the protocol is able to pay back depositors. 

However, things get complicated when no one is willing to bid for the NFTs at prices set by Bend DAO. Dropping NFT prices and apprehension about tying assets into the protocol’s two-day auction window proved to be Bend DAO’s undoing over the weekend, as it was stuck with JPEGs instead of the ETH that it needed. Yakovenko explained the situation further, stating, 

“They basically don’t allow the DAO to be leveraged in any way whatsoever. They don’t allow the DAO to take a loss on anything, which as a result makes them take a loss on everything.”

Corrective Measures 
Bend DAO accepted that they had underestimated just how illiquid NFTs could potentially become during the bear market while setting the initial parameters. The team also proposed a proposal to change how the protocol operated and help build confidence among depositors. The changes would see the protocol lower the liquidity threshold from its current 95% to 70%. This change would occur gradually. 

Additionally, the liquidation amnesty window would also be shortened from two days to four hours. Interest rates would also see an increase to incentivize ETH deposits and repayments further. Bend DAO’s liquidity amnesty program gave borrowers time to “rescue” their NFTs by paying a penalty along with the repayment. However, this worked against the protocol because no bidder wanted to lock their assets in an auction where the borrower could get their NFT back. 

Crypto Insolvency Woes Continue 
Bend DAO is the latest in a long line of protocols that have had a liquidity crunch in recent months. Crypto lending platform Celsius continues to struggle with liquidity issues and is trying everything to stay solvent. Meanwhile, Three Arrows Capital finally went into liquidation at the end of June.', 'https://i.ibb.co/f46rKk4/image.png', 'Defi , NFT , Altcoins', '2022-09-18 15:50:35.846733');
INSERT INTO public.news (id, platform_id, author_id, link, title, content, image, category, created_on) VALUES (78, 11, NULL, 'https://cointelegraph.com/news/aave-devs-look-set-to-receive-16-3m-via-retroactive-funding', 'Aave devs look set to receive $16.3M via retroactive funding', 'The decentralized autonomous organization (DAO) behind the decentralized finance (DeFi) platform Aave has accepted a proposal to reward members from Aave Companies with $16.28 million in retroactive funding for their role in the development of Aave Protocol v3.

Voting for the proposal began on Tuesday and, at the time of writing, has already passed 667,000 votes in favor of the funding, more than doubling the 320,000 required. The vote is set to end on Sept. 8.

According to the initial proposal, which was first pitched on Aug. 10, the Aave Request for Comment (ARC) sought “retroactive funding” for work in developing the v3 protocol.

The $16.28 million consists of $15 million for work performed by the developers over the course of more than one year and $1.28 million for costs paid to third-party auditors. The money will be given to members of the firm behind the popular DeFi protocol, Aave Companies.

The funding will be made up of a combination of AAVE tokens, Dai (DAI), Tether (USDT), USD Coin (USDC), alternative stable assets such as Frax stablecoin and higher volatility assets like Synthetix following the passing of the proposal.

While the origins of the retroactive public goods funding model are unclear, it was popularized following a collaborative post on Medium between Vitalik Buterin and Ethereum scaling solution firm Optimism on  July 21, 2021.

The post argued that the “retroactive public goods funding” model provides an incentive for developers to work on projects by allowing them to get paid after the project is completed and can be based on the value it provides.

The core principle behind the concept is that “it’s easier to agree on what was useful than what will be useful.”

Vitalik suggests in the post that it can be difficult in the beginning phase of a project to get it off the ground, with donations and grant money being insufficient to incentivize developers.

According to blockchain data provider Nansen, the Aave DAO has seen a huge drop in the value of its liquid assets throughout the crypto winter, down from over $800 million in April to around $378 million at the time of writing.

Despite this, the community has overwhelmingly voted in favor of the retroactive funding request, with community members suggesting “Aave Companies did tremendous work and should be paid for that.”

Some community members however took issue with the lack of transparency in the proposal, with one member stating in the comments, “I support the proposal, but would wish for as much transparency as possible to raise the bar for any other retroactive proposal in the future.”', 'https://i.ibb.co/L6Q72Th/image.png', 'Defi', '2022-09-18 15:50:35.85031');
INSERT INTO public.news (id, platform_id, author_id, link, title, content, image, category, created_on) VALUES (94, 9, NULL, 'https://blockchain.news/news/starbucks-rolls-out-nft-based-membership-program-by-adopting-polygon', 'Starbucks Rolls out NFT-based Membership Program by Adopting Polygon', 'American multinational chain of coffeehouses and roastery reserves Starbucks has unveiled its Non-Fungible Token (NFT) and Web3.0 program dubbed Starbucks Odyssey.


The NFT project is branded as a unique variation of its current loyalty program where customers earn ‘Stars’ which they can redeem for free drinks at its outlets. 

While Odyssey will let users earn rewards, Starbucks said it would be for a more revered and valuable gift than the regular gifts from the Star program. The Odyssey program is powered by NFTs, which can be purchased in an almost hassle-free way from the coffeehouse’s wallet app. 

Unlike the regular intricacies associated with NFT-related projects, Starbucks said users would be able to acquire the NFTs through their payment cards. A bundled pricing will be offered, and buyers will not need to worry about things like gas fees. 

The Starbucks Odyssey program can give its users an exclusive experience, including invitations to exclusive resorts. The design of Web3.0 program is designed so that users will be able to earn the associated NFTs by completing tasks besides buying them.  

“There will be a lot of ways for people to earn [rewards] without having to spend a lot of money,” says Starbucks CMO Brady Brewer. “We want to make this super easy and accessible. There will be plenty of everyday experiences customers can earn, like virtual classes or access to limited edition merchandise, for instance. The range of experiences will be quite vast and very accessible.”

The company said it explored several blockchain protocols to float the Odyssey program, and it tapped Blockchain, the Ethereum layer-2 scaling solution. Starbucks said the energy efficiency of Polygon compared to its peers is a positive edge complemented by its low cost and fast transactions.

Many brands are moving into the Web3 space to offer unique experiences to their customers. While the move is becoming a trend now, Starbucks said its Odyssey program is special and not like a side experiment like other brands is tapping into.', 'https://i.ibb.co/dmzMynp/image.png', 'NFT , Blockchain', '2022-09-18 15:50:35.883121');
INSERT INTO public.news (id, platform_id, author_id, link, title, content, image, category, created_on) VALUES (79, 39, NULL, 'https://invezz.com/news/2022/09/07/lending-protocol-euler-integrates-chainlink-ahead-of-the-merge/', 'Lending protocol Euler integrates Chainlink ahead of the Merge', 'DeFi protocol Euler Finance integrates Chainlink Price Feeds to benefit from reliability and security
The integration comes ahead of the Ethereum merge.
Euler Labs CEO Michael Bentley says Chainlink is the "lifeblood of DeFi."
Euler Finance is adding to the list of DeFi protocols getting ready for the world’s largest smart contracts network’s switch from proof-of-work (PoW) consensus mechanism to proof-of-stake (PoS) consensus, by integrating the tested and highly secure Chainlink Price Feeds on the Ethereum mainnet.

This is yet more crypto news ahead of the Ethereum Merge, with the non-custodial lending and borrowing platform that’s the latest to integrate Chainlink.

Are you looking for fast-news, hot-tips and market analysis? Sign-up for the Invezz newsletter, today.

The ‘lifeblood’ of DeFi
Michael Bentley, the CEO of Euler Labs commented on the integration terming price data as “the lifeblood of DeFi lending protocols.”

He also noted that Chainlink offers “the best-in-class price data infrastructure for smart contracts,” with its record in securing lending protocols proven across the industry.

For Euler, using Chainlink’s oracle network will help it tap into increased reliability and security, as well as address TWAPs (time-weighted average price) concerns after the merge.

The protocol also wants its users to benefit from direct stETH, or staked ETH, deposits on Lido Finance – allowing customers access to fresh yield from borrowings. But even with lending protections available, there’s still a lot of cautionary moves out there.

As we reported, Aave protocol elected to pause ETH borrowing ahead of the merge due to concerns around high market utilisation and potential liquidity issues.

Such concerns are expected following this summer’s crypto carnage and the sad events that surrounded the collapse of Three Arrows Capital. Troubles for the bankrupt Celsius Network and Voyager Digital spotlighted DeFi’s problems.

But as this article explains, centralised crypto companies might have failed the test, but “DeFi still works.”And that explains why many institutions are getting into the space, including an increased interest in staking on the Ethereum network. (Read here to find what Switzerland-based SEBA Bank introduced ahead of the Merge).', 'https://i.ibb.co/YBb7CNG/image.png', 'Defi', '2022-09-18 15:50:35.851962');
INSERT INTO public.news (id, platform_id, author_id, link, title, content, image, category, created_on) VALUES (80, 8, NULL, 'https://thenewscrypto.com/curve-dao-token-crv-gains-35-for-past-24-hours/', 'Curve Dao Token (CRV) Gains 35% for Past 24 Hours!', 'Curve DAO token (CRV) gains 35% price surge in 24 hours.
Remarks one of the highest gainers for the day .
Expected to make its ATH soon crossing over the $6 target.
As well said, almost the whole month of October most of my writings everyday denote the surge of different altcoins and many attaining their all-time-highs (ATH). With this as a writer I am personally overwhelmed with such a fruitful month for the entire crypto industry. 

In such terms, another altcoin has performed radically for the past 24 hours. The Curve DAO Token (CRV) has seen a massive surge in its price of about 35%. This makes it one of the hot gainers for the day. 

Surge of 35% gains
Accordingly, the price of CRV touched a massive $5.22. This is the highest for the altcoin for over the past one year. 

Previously, CRV was above the $5 range in September, 2020 and now after about more than a year CRV has crossed the $5 target again. 

Moreover, from the graphs it’s evident that the surge started from about a week’s time, steadily moving upwards.

 In spite of this, the past 7 days being taken into consideration, CRV has gained more than 81.35%.

Future of CRV
Furthermore, the graphs indicate that CRV will further remain above the $5 range. Besides, as analysts predict, CRV will momentously cross its next target of $6 and rally further. 

And so, if it breaks the $6 target, then CRV will momentarily move towards crossing  $7, heading for its all-time-high (ATH) soon. 

In addition, all this ATH target is expected to take place before the end of 2021. Therefore, analysts predict investing upon CRV even at this moment is completely safe and sound. 

A Peek into Curve DAO Token (CRV)
The Curve platform is nothing but a decentralized exchange platform solely for the stablecoins. In addition, it manages its entire liquidity basically on automated market maker (AMM). Also, it expands itself to all Decentralized Finance (DeFi) based services too.

Besides, the CRV being the native token for the platform was launched in August 2020, once Curve became a Decentralized Autonomous Organization (DAO), enabling Ethereum (ETH) based smart contracts. ', 'https://i.ibb.co/frNNLxD/image.png', 'Defi , Altcoins', '2022-09-18 15:50:35.855166');
INSERT INTO public.news (id, platform_id, author_id, link, title, content, image, category, created_on) VALUES (81, 32, NULL, 'https://bitcoinist.com/nft-fad-trading-volume-declines-lows-not-june-2021/', 'NFT Fad Fading: Trading Volume Declines To Lows Not Seen Since June 2021', 'Data shows the NFT weekly trading volume has now declined to lows not seen since June 2021, as the NFT hype continues to die down.

NFT Weekly Trading Volume Has Now Come Down To Just $81 Million
The non-fungible token market has been struggling since a few months now as the rest of the crypto market has been going through a bear market.
The “weekly trading volume” here refers to the amount of USD sales that NFTs saw during the span of last seven days.

This volume had been fluctuating in the range of $230 million to $260 million in the months between the last third of May and the first ten days of August.

While these values were significantly lesser than those observed during the preceding several months since August 2021, they were nonetheless still not too low.
That changed last month, however. Here is a chart that shows the trend in the weekly NFT trading volume during the last few years:
As you can see in the above graph, the NFT weekly trading volume (displayed in white) has plunged down in the last few weeks.

The indicator’s value is just around $81 million now, the lowest it has been since June 2021, more than a year ago. At the all-time high set back in September of the same year, the volume was a little under $2 billion.

Right before this recent plummet, the indicator observed a very large spike to nearly ATH values, but it didn’t last too long.
The chart also shows the data for the number of sales (colored in red), which is a measure of the pure number of transactions of these digital collectible tokens.

It looks like this metric hasn’t dropped down to as bottom a value as the volume yet since it’s still at the same level as the low reached back in June of this year.

These latest constant low volumes suggest that interest around NFTs has been waning recently. Currently, it’s unclear when the market may observe a rebound, or if it will reach the same heights as during last September.

BTC Price
At the time of writing, Bitcoin’s price floats around $19.7k, down 1% in the last seven days. Over the past month, the crypto has lost 13% in value.

The below chart shows the trend in the price of the coin over the last five days.', 'https://i.ibb.co/SPgq7xv/image.png', 'NFT', '2022-09-18 15:50:35.856616');
INSERT INTO public.news (id, platform_id, author_id, link, title, content, image, category, created_on) VALUES (82, 42, NULL, 'https://coincodex.com/article/18523/how-to-mint-your-own-nfts-and-create-an-nft-collection-on-binance/', 'How to Mint Your Own NFTs and Create an NFT Collection on Binance', 'Final Thoughts
In today’s world of digital possibilities, and with success recorded with digital ventures, one thing is clear; you cannot afford to be left behind. 2021 was merely the first big year for NFTs, with experts predicting a massive upward projection. In 2021 alone, over $41 billion worth of crypto was spent on the NFT market. While this figure may be surprising, it might interest you to know that only the surface has been scratched.

The NFT market size is projected to reach 200 billion dollars by 2030, with a compound annual growth rate of 33.9% from 2022 to 2030. If you are thinking about leveraging this opportunity, then you have come to the right place. In this post, we will walk you through all you need to know about creating and minting NFTs on Binance. But first, let’s take a look at what Binance is. 

What is Binance and How Do I Get Started?
Binance is a cryptocurrency exchange platform that provides a user-friendly interface and high-end features for users trading in more than 45 virtual coins and in over 180 countries. In terms of daily trading volume, Binance accounts for the largest globally, delivering high processing throughput of up to 1.4 million orders per second. Designed to accommodate both Certified Cryptocurrency Experts (CCE) and Crypto newbies, its services cut across trading, listing, fundraising and de-listing/withdrawal of cryptocurrencies.


For anyone in search of the right Exchange platform, Binance is definitely the right place. To get started, you may follow any of the steps below:

Step 1: Register Account
Step 2: Complete Verification
Step 3: Deposit Crypto
Step 4: Buy Crypto
Step 5: Explore Binance Products
What are NFTs?
Even if you have never heard of NFT, chances are that you have come across Ape art or some digital drawings while surfing the Internet. Those digital drawings are examples of NFTs, an abbreviation for “non-fungible tokens.” 

Simply, NFT is a form of cryptographic token that represents a unique item. It allows people to buy and sell items with the trust that such item is unique and authentic. NFTs are valuable because they are unique and cannot be replicated. 

A selection of NFTs on Binance NFT marketplace

NFTs, being digital assets, represent digital collectibles like art, music, videos, and in-game item with an authentic certificate created by blockchain technology. They are individual tokens with valuable information stored in them. They exist on a blockchain, which is a distributed public ledger that records transactions. It primarily operates on an exclusive ownership system that cannot be forged or manipulated. Nevertheless, they can be bought and sold just like any physical object. 

How to get started with creating collections and minting NFTs on Binance
To get started with creating or minting your NFT, here are some of the important requirements to note:

Only verified users can create NFT: Before you can proceed to create your NFT, it is expected that you complete your Identity Verification
Have at least two followers: Another important requirement is that you must have at least two followers before you can proceed to create your NFT collection. To achieve this, you can share your Binance NFT user profile link to your various social media platforms. Binance currently supports Facebook, Twitter, and Telegram. You may also share via mail
You have to create an NFT collection and get it approved before you can Mint
You need sufficient BNB or ETH balance in your Spot Wallet to cover the fees
Once all of these points have been complied with, then you’re ready to proceed. But then, let’s take a look at the step-by-step process of creating your collection. 


How to create an NFT collection 
Here is a step-by-step guide to creating an NFT collection on Binance:

Step 1
You’ll start by clicking [Create] on the Binance NFT Marketplace homepage. After this, you will be redirected to the minting page with the below pop-up. Click [+ Collection].

Crete a new collection before minting NFT pop up on Binance

Step 2 
After the process above, you will be redirected to the [Create a Collection] page. On that page, you will be required to enter the details for your collection, including:

Name: The collection name you entered is what you will have as the name of the smart contract. The name entered will then be reviewed by Binance. Where, for instance, the name is inappropriate, you will be required to change it. Binance has an automatic verification system that makes such assessments.
Description: Under this, you will give a short description of your collection. This description is also subject to assessment. If there is inappropriate content in the description, you will be required to change it.
Category: To ensure that your NFT is captured under the right collection, you will be required to select a collection. It includes Entertaining, Art, Education, Sport, Gaming etc.;
Logo: You will be required to upload a Logo for your collection.
Banner Image: The banner image is the image that will appear on your collection homepage banner
Network: You will be required to select either BNB chain or Ethereum chain for the collection. 
Symbol: The Token Tracker is used to create your smart contract and will be displayed across all on-chain messages. It cannot be changed after your collection has been created. 
Royalty Fee: Of course, as the owner of the collection, you will earn profits from each sale. So, you will be required to set the percentage of the profit. This, however, cannot be changed after the collection has been created. 
Social Media Links: You may add the social media platforms you wish to promote the NFT collection. 
Smart Contract Owners Address (optional): Although optional, if a wallet address is not provided, you won’t be able to claim ownership of your collection on the DeFi marketplaces.

Select smart contract to use when creating NFT collection on Binance

Note: The smart contract owner can be subsequently changed after the creation of the collection. But an equivalent to the withdrawal fee will be charged. 

To Add a wallet, you’ll have to paste the wallet address and click “add a wallet.” This will lead you to the add a wallet page. After this action, you will Choose the network of your wallet and click [Confirm].

Binance currently supports BNB Smart Chain (former Binance Smart Chain) and Ethereum (ETH).

Selecting a blockchain netwrok to host NFT collection on Binance

After this, you may then Select the wallet you want to connect. You have two options to connect to either MetaMask or Wallet Connect.

Selecting blockchain wallet on Binance NFT

After this entire process, you’ll be required to accept the Binance NFT Minting Rules and terms of service. Then, click [Create].

Step 3
After clicking [Create], what follows is a pop window stating the following: “The transaction proceeds from the initial sale of this item will be subject to a 10-day clearing period. See Sales Settlement Postponement Policy for more details.” 

You will click continue and pay the smart contract deployment fee.

Notification about initial NFT sale

Although, it might take a while for the blockchain to execute. You will need a little patience. Once it is complete, you will receive an email notification. Upon the completion of this meticulous process, you’re ready to start minting NFT on Binance. 

How to Mint an NFT on Binance
As you have seen above, the first process is to create your NFT collection. After doing this, you are ready to start creating your own NFT. Again, let’s take a look at the step-by-step guide on how to create your NFT.

Step 1
Go to the NFT marketplace homepage and click [Create].

Binance NFT Mystery Box

 

Step 2 
Read and accept the Binance NFT Marketplace Terms and Conditions.

Binance NFT marketplace terms and conditions

After this, you will be redirected to the minting page. Then, you will be asked to enter the details of your NFT, including:

Name: The name you wish to give your NFT;
Description (Optional): A short explanation of your NFT;
Network: Select the network of your NFT;
Collection: Select which collection this NFT will be categorized under from the dropdown list. You will only see the collections on the network you just selected. For example, if you select BNB Chain, you will only see the NFT collections on BNB Chain.
One important point to note is that you may select the collection you just created or click [+ Add a new Collection] to create another one. Then, you will proceed to select the properties of your NFT.

add properties for NFTs on Binance

Step 3
After all the required details are set, you''ll see an estimated minting fee. Read and agree to the Binance NFT Minting Rules and Terms of Service, and click [Create].

From here, your work will start to upload. You will need to wait patiently for Binance to review your NFT. It will be assessed via an automatic verification system. Once the entire minting process is complete, you will see a [Minting Completed] pop-up with the contract address and Token ID of your NFT. Alternatively, if the system requires more time to process your NFT, you will receive a [Successfully Requested] pop-up. You will then be notified via email when your NFT is minted. 

Also, it may, sometimes, happen that the minting might fail. For instance, it may fail because the work contains inappropriate content. If this continues 5 times within 24hrs, you will be suspended from minting for 24hrs. However, once you follow the steps we have highlighted above, then you’re ready to Mint your own NFT.

Final Thoughts
The world around us keeps evolving, and with this comes new opportunities. NFTs are one of such opportunities, and the industry presents huge prospects ahead. You can also partake in it and reap your rewards by following the guide above. Get your NFT journey started today with Binance.', 'https://i.ibb.co/P97hhrs/image.png', 'NFT', '2022-09-18 15:50:35.858041');
INSERT INTO public.news (id, platform_id, author_id, link, title, content, image, category, created_on) VALUES (83, 17, NULL, 'https://cryptodaily.co.uk/2022/08/chingari-launches-creator-cuts-video-nft-marketplace', 'Chingari Launches Creator Cuts Video NFT Marketplace', 'The Chingari video sharing app is building on its budding in-app crypto economy with the launch of a novel video NFT (v NFT) marketplace where creators will be able to tokenize their most successful content. 

The new marketplace is known as Creator Cuts, and it serves as an exclusive platform for minting and selling v NFTs from Chingari video clips. 

Chingari is a short video sharing app akin to TikTok that has taken India by storm, emerging as one of the country’s most popular social media applications. Just as with TikTok, Chingari users can create videos to music, add various filters and share them on the platform, receiving likes and shares 

Where Chingari differs from TikTok is with its unique crypto-based economy, which empowers its community to earn GARI rewards for sharing content that goes viral and performing other in-app activities. Chingari launched its GARI cryptocurrency last year with the support of Bollywood superstar Salman Khan, who acts as its brand ambassador, promising to revolutionize the creator economy by providing users with a passive income stream. With GARI up and running, Chingari finally kicked off its GARI Mining program earlier in the summer, which sees it pay out daily rewards to users who perform certain in-app activities, such as logging in, watching and liking videos and sharing content. 

Creator Cuts builds on the GARI Mining program, giving the platform’s top creators another way to monetize their most popular videos. Through Creator Cuts, they can tokenize and sell their best-performing videos, earning money for doing so. Meanwhile, holders of the v NFTs will earn a passive income in the shape of a proportion of the daily earnings that video makes. 

Not only does Creator Cuts provide more opportunities for users to earn a passive income, but it also gives the community another way to connect to their favorite creators. Buying a v NFT is similar to owning a unique piece of art - only it’s one that also provides financial benefits. 

Chingari explained that v NFT buyers will receive 10% of the daily income earned by its creator, based on the level of engagement their videos generate on the app. So the actual daily earnings will vary depending on how many people interact with that video on a specific day. 

Note that Creator Cuts isn’t quite yet in its final form. The marketplace is currently in beta, and the company has chosen 100 unique videos uploaded to the app as the first to be tokenized. The price of each v NFT is listed in GARI tokens, and they can be purchased by any Chingari user, or even a non-user if they feel it’s a solid investment. The v NFTs can also be resold on the marketplace. 

Later, once the kinks of the Creator Cuts marketplace have been ironed out, more users will be able to tokenize their videos as v NFTs, Chingari said. 

Chingari co-founder and Chief Executive Sumit Ghosh said the empowerment of creators has been the cornerstone of the app’s success since its inception. That explains why the app has always strived to enable creators to engage effectively with the wider community, he added. ', 'https://i.ibb.co/PN9HfMb/image.png', 'NFT', '2022-09-18 15:50:35.859872');
INSERT INTO public.news (id, platform_id, author_id, link, title, content, image, category, created_on) VALUES (84, 7, NULL, 'https://www.theblock.co/post/167366/nft-marketplace-sudoswap-unveils-governance-token-and-retroactive-airdrop', 'NFT marketplace Sudoswap unveils governance token and retroactive airdrop', 'Sudoswap, an NFT marketplace on Ethereum, announced a new governance token.
The Sudoswap team also revealed a retroactive airdrop for its liquidity providers.

NFT marketplace Sudoswap revealed a new token to help transition the project to a decentralized autonomous organization, a structure in which a community of users can make collective business decisions.

The Sudoswap team said today that the SUDO token will be used for governance of the marketplace. The team is decentralizing the protocol to its community, something that typically involves a token for crypto projects.

Launched in July, Sudoswap is a rising NFT marketplace with an automated market maker (AMM) model similar to Uniswap. This model uses liquidity pools that allow users to instantly swap between two assets.

On Sudoswap, any user can create an NFT pool from a particular collection paired with ether. Such pools offer trade quotes to buyers and sellers of NFTs and can instantly swap them for ETH, or vice versa.

The total supply of SUDO tokens will be 60 million, a portion of which will be distributed as an airdrop to its early contributors and holders of XMON tokens, which are discussed below. 

Token distribution
The Sudoswap team allocated the 60 million SUDO tokens to be gifted across multiple user categories based on certain criteria. The largest share of the tokens will go to those who lock the crypto token XMON, the native token of an NFT collection called 0xmons that was previously founded by the Sudoswap team.

Per the distribution details, 25.12 million SUDO tokens, or 41.9% of the supply, will be up for grabs for XMON token holders who lock their XMON in smart contracts to receive the airdrop. XMON token holders will have to lock their funds for three months, after which they can be withdrawn.
SIGN UP FOR OUR DAILY NEWSLETTERS
Enter email address
 Also receive our FREE weekly Data & Insights Newsletter
By signing-up you agree to our Terms of Service and Privacy Policy

0xmon NFT holders will receive a 1.5% supply, or 900,000 SUDO tokens.

The Sudoswap team also announced a retroactive airdrop for its liquidity providers (LPs), which are users who have deposited NFTs and ether to its pools. These LPs will receive a 1.5% supply of SUDO divided equally among them.

Based on the distribution, 15% (9 million) of the SUDO supply has been set aside for initial team members. Another 15% will be awarded to SudoRandom Labs, the core development company working on the project. These tokens allocated to team members and SudoRandom Labs will be subject to a three-year vesting period and a one-year cliff.

The last category to receive the tokens is the project treasury, which is set to receive 25.1% or 15.08 million tokens. These funds will be overseen by the community members for growth and expansion activities. At this time, SUDO tokens cannot be claimed and will only be unlocked after a governance vote at a future date.

Today''s event makes Sudoswap the latest crypto project to issue its own token with a retroactive reward.  So far this year, other projects including Optimism, CowSwap and Hop Bridge have also unveiled governance tokens along with airdrop plans for early adopters.', 'https://i.ibb.co/mTgMScJ/image.png', 'NFT', '2022-09-18 15:50:35.864573');
INSERT INTO public.news (id, platform_id, author_id, link, title, content, image, category, created_on) VALUES (85, 42, NULL, 'https://zycrypto.com/lady-ape-nft-pre-booking-on-strmnft-marketplace-is-now-available-till-july-16/', 'Lady Ape NFT Pre-booking on STRMNFT Marketplace is Now Available Till July 16', 'The Lady Ape Club (LAC) NFT pre-booking will now be available until July 16 according to STRMNFT, a new generation NFT marketplace created by blockchain firm StreamCoin, allowing users enough time to reserve one Lady Ape before the sale begins.

A total of 9,000 LAC NFTs will be offered for purchase on the STRMNFT market as of July 18. However, several members were worried that if all the apes were quickly sold out, they might not be able to purchase anything during the sale. Because of this, StreamCoin allowed its qualified users, who were among the early participants, to pre-book.

All individuals who have been added to TNC Group’s whitelist, including those who took part in the ICO and STRM Staking, are considered eligible users. Since the beginning of 2022, TNC Group has invested in and collaborated with StreamCoin. It is also the organization that employed the art team responsible for creating the LAC NFTs.

The ICO and STRM Staking participants must register on STRMNFT using the same email they used to participate in these activities, according to STRMNFT’s clarification. Users must verify their eligibility in the marketplace in order to obtain their Lady Ape, therefore this step is necessary in order to submit the pre-booking request.

On July 18, once the pre-booking period has ended, the official LAC NFT sale on STRMNFT will start. The company has published a step-by-step tutorial here for whitelisted users who haven’t pre-booked a Lady Ape NFT yet, along with other details like the cost and the amount of NFTs each user is permitted to pre-book.

Advertisement
    
The firm added that individuals who were unable to pre-book a Lady Ape NFT will still be able to buy when the sale begins on STRMNFT.

In addition, those who join the STRMNFT marketplace’s Allow List will receive 10,000 Aurora Cat NFTs through an airdrop. By visiting the official website of STRMNFT, selecting “Join Allow List,” filling out the necessary form, and clicking “Submit,” interested users can take part.

STRMNFT was able to surpass its initial goal of 10,000 registered users on its platform after the first week of July 2022. Users had the opportunity to mint their own NFTs on the site for free after registration opened on May 31. However, it is anticipated that this free minting option would expire in July.', 'https://i.ibb.co/hfk942F/image.png', 'NFT', '2022-09-18 15:50:35.866132');
INSERT INTO public.news (id, platform_id, author_id, link, title, content, image, category, created_on) VALUES (86, 29, NULL, 'https://thedefiant.io/moonbirds-new-collections-nfts', 'Moonbirds Fly High On $50M Round and New Collections', 'Proof Collective, the company behind the popular Moonbirds collection, said on Aug. 30 that it had raised $50M in a Series A funding round led by venture capital behemoth a16z. Other investors include Seven Seven Six, True Ventures, and Collab+Currency. 

The news came just a day after Limit Break revealed that it had raised an eye-popping $200M to build Web3 games. The company’s DigiDaigaku NFT collection commands a floor price of 12.3 ETH ($19,000) at the time of writing.

Moonbird Mythics
In a livestream on Tuesday, Proof CEO Kevin Rose outlined the company’s plans, which include a third NFT collection of 20,000 profile pictures (PFPs), called Moonbird Mythics, and a $PROOF token. Both are expected to launch in 2023. 

Proof will create the Moonbirds DAO, which will oversee licensing of the brand and be partly funded by royalties from secondary sales.

“We believe that the next generation of massive mainstream media franchises will be community-owned and governed, and PROOF is one of those companies demonstrating just that,” Sriram Krishnan, General Partner at a16z crypto, said in a press release. 

A flurry of sales briefly drove the Moonbirds’ floor price up 14% to 16 ETH, but it has since settled to 13.75 ETH. Meanwhile, Oddities are trading 25% lower at 1.28 ETH.

Phantom Offer Scam
If an offer sounds too good to be true, it always is, especially when it comes to NFTs.

Some well-heeled scammers have been attempting to lure arbitrageurs with the promise of a riskless profit. First, an NFT owned by the scammer or an associate is listed for sale, as in the case of Otherdeed 49395, which is listed for 50 ETH. 

This is well above the current floor price of 1.75 ETH, and this particular NFT doesn’t have any rare traits to justify the premium.


Next, the scammer makes an outrageous offer on the NFT, well above the listing price. Here, we can see that there’s an offer of 98 ETH. The trade is then promoted on Twitter using questionable accounts.


A cursory look at the address making the offer shows that it holds enough ETH to fulfill the trade.


Free money, right? Not so fast.

The would-be scammer has revoked OpenSea’s permission to withdraw WETH after making the offer. This means that although OpenSea continues to display the offer as valid, the trade cannot be executed.

One user seems to have fallen for the scam, shelling out 50 ETH for Otherdeed 27238, only to dump it for 2 ETH upon realizing that the offer was no longer valid.

Team Behind Goblintown Plans To Launch NFT Marketplace
Truth Labs, the company that created the popular Goblintown NFT collection, will launch its own NFT marketplace, co-founder Alexander Taub tweeted on Aug. 25.

The Truth Marketplace is expected to launch in the next few weeks and will feature a fixed royalty fee of 5% on all collections, with no marketplace fees. Goblintown arguably kicked off the free mint trend, opting for a higher share of secondary sales at 7.5%. With the new marketplace, traders will be able to save 50% on creator and marketplace fees compared to OpenSea.

The Truth team is also addressing the issue of stolen or hacked NFTs. “We have strong opinions on stolen NFTs. The current flagging system in place does not help or accomplish anything,” Taub wrote.

The new marketplace will require a police report to be submitted in order to flag an NFT as stolen, similar to OpenSea’s recent policy change. However, the company says that the flag will be removed after 14 days if the police report is found to be inactive or closed.


State Of The Market
Sales volumes were down 9.2% to $147M in the week ending August 29 for a second weekly drop. However, the number of transactions climbed 8% to 460K, indicating that the drop in USD volume can be attributed to Ether’s slide over the week.


Source: Dune Analytics
Floor Prices
Most major collections saw their floor prices fall this week as traders seem to be stacking ETH ahead of the Merge.

Bored Ape Yacht Club – Flat this week at 72 ETH
CryptoPunks – Flat at 66.5 ETH
Otherdeeds – Up 10% to 1.7 ETH
Moonbirds – Up 6% to 13.75 ETH
Doodles – Up 17% to 8.2 ETH
Clone X – Up 6% to 6.8 ETH
Pudgy Penguins – Up 7% to 3.2 ETH', 'https://i.ibb.co/jZNbQzm/image.png', 'NFT', '2022-09-18 15:50:35.867546');
INSERT INTO public.news (id, platform_id, author_id, link, title, content, image, category, created_on) VALUES (90, 20, NULL, 'https://beincrypto.com/nft-art-fancy-34500-frame-non-fungible-tokens/', 'NFT Art: Fancy a $34,500 Frame for Your Non-Fungible Tokens?', 'NFT art now has accessories that make it just like… normal art. A company called Danvas has developed the world’s first-ever luxury, museum-quality NFT art display.
The Danvas display is an LED device. Like a normal frame for normal art, but way, way more expensive. But it has some touches that bring the design into the digital world.

Enter the Darkroom by Lushaalic
NFT Art Frame
Each frame is priced at $34,500, and enthusiasts can pay in crypto as well as fiat. The first-edition display, Series G, will have the full color range that the original work has, which they say emulates the authenticity of the original artwork. The makers also say there will be no glare, and a button for adjustable brightness. If the NFT has sound, then that can be heard via the display’s acoustic channeling.

Euterpe, Violet by Hermine Bourdin
The frame has a built-in authentication indicator. When connected to the owner’s NFT wallet, it works out if the NFT art is authentic, and owned by the wallet holder. Once it validates the ownership of an NFT, a blue light on the bottom of the display switches on.

Jeanne Anderson is the CEO of Danvas. “Our new Danvas Series G display represents a watershed moment in the validation of digital and NFT art. New movements in art have often had a history of being misunderstood, and digital art is no different. We are currently experiencing a new renaissance in NFT and digital art, and at Danvas we believe the remarkable artworks being created today deserve to be shown and shared in an extraordinary display.”

NFT art danvas frame
3.               Red Mouse by Piskunov
Other Benefits
The frame has been created in partnership with an industrial design firm, called the Ammunition Group. This is the same studio responsible for Beats by Dre.

The first 100 Danvas Series G Frames released will be sold as premier edition models. Danvas says that buyers of the frames are eligible for future art drops and priority access for premium upgrades.

And here’s the good news, you don’t have to install it yourself. Danvas say that a white-glove delivery service and expert installation will “ensure a seamless experience from first click to display debut.”', 'https://i.ibb.co/q7J05tR/image.png', 'NFT', '2022-09-18 15:50:35.87501');
INSERT INTO public.news (id, platform_id, author_id, link, title, content, image, category, created_on) VALUES (91, 6, NULL, 'https://coingape.com/nft-marketplace-opensea-flags-data-breach-heres-what-was-leaked/', 'NFT Marketplace OpenSea Flags Data Breach, Here’s What Was Leaked', 'The marketplace said that an employee of Customer.io misused their access to download and share customer email addresses with an external party.

Any customer that has shared their email with the marketplace- be it for the platform or its newsletter- is likely impacted by the breach. OpenSea warned customers against potential phishing attempts following the breach.

The NFT marketplace said in a blog post that it is now in contact with law enforcement officials over the breach, and that an investigation is underway.

OpenSea hit with string of hacks this year
The latest data breach is far from the first major attack on OpenSea and its customers this year. In May, the popular NFT marketplace’s Discord server was compromised and flooded with phishing attacks. Several user wallets were drained in the attack.

In January, the exchange saw one of its worst attacks yet, where an exploit allowed hackers to sell NFTs without the owners permission. While the marketplace repaid about $1.8 million to its customers, the overall impact of the attack was unclear.

The recent data breach for OpenSea comes despite the marketplace recently tightening its security measures to prevent scams.

Crypto-linked scams on the rise
The OpenSea breach comes less than a week after another high-profile crypto hack, which saw about $100 million stolen from the DeFi protocol Harmony. This attack was likely perpetrated by the notorious North Korean hacking group Lazarus.

The group is behind several other crypto-related attacks, most notably the Axie Infinity hack in April, which pilfered over $600 million worth of tokens. The attack is to date one of the largest crypto-linked hacks ever.

A recent report from blockchain analytics firm Elliptic suggests that the group has stolen over $2 billion in total.', 'https://i.ibb.co/hmW7fHV/image.png', 'NFT', '2022-09-18 15:50:35.878638');
INSERT INTO public.news (id, platform_id, author_id, link, title, content, image, category, created_on) VALUES (92, 35, NULL, 'https://u.today/bill-gates-lambasts-nfts', 'Bill Gates Lambasts NFTs', 'Microsoft co-founder Bill Gates recently opined that non-fungible tokens are a “greater fool theory” type of investment. Gates sarcastically remarked that people who spend a fortune on pictures of apes would be able to make the world a much better place. The NFT bubble has predictably burst in the aftermath of the recent market correction, with the floor price for a Bored Ape Yacht Club recently plunging to the lowest level since last August. The cost of entry has plunged by almost 80% within just two months, with investors who bought the red-hot NFT pictures at much higher being left in the dust. Related SEC Boss Is Not Happy About New Crypto Legislation Other popular NFT collection, including e CryptoPunks, have also plummeted in value. While NFTs have attracted plenty of endorsements from celebrities, some prominent personalities chose to dismiss them at their peak popularity. For instance, Canadian actor Keanu Reeves found the idea of paying tons of money for artworks that can be easily reproduced laughable. Gates’s skepticism comes as no surprise given that he has been a long-time cryptocurrency critic. Back in May 2018, the billionaire claimed that he would be willing to short Bitcoin if he could. It seems like Gates hasn’t warmed up to cryptocurrencies given that he bemoaned their lack of intrinsic value in a Reddit post.     However, Gates claims that he hasn’t shorted Bitcoin despite his bearishness.     The prices of major cryptocurrencies fell off a cliff this week, with Bitcoin dropping to the $20,000 level for the first time since December 2020.
', 'https://i.ibb.co/M11m812/image.png', 'NFT', '2022-09-18 15:50:35.880158');
INSERT INTO public.news (id, platform_id, author_id, link, title, content, image, category, created_on) VALUES (93, 25, NULL, 'https://beincrypto.com/avalanche-nft-marketplaces-are-booming-aiding-avax-price-recovery/', 'Avalanche NFT Marketplaces Are Booming, Aiding AVAX Price Recovery', 'Avalanche (AVAX) is attempting to create its first higher low since reaching a temporary bottom in June, however it has yet to show any decisive bullish reversal signs.

The AVAX non-fungible token (NFT) marketplace is booming and this week it saw a new seven-week high in volume. Roughly 48% of this volume came from Chickn. This comes around the same time that the Bitcoin.com wallet announced that it had started supporting AVAX.

AVAX price movement
Despite the flurry of positive news, the price has yet to confirm any sort of bullish reversal. To the contrary, AVAX has broken down from an ascending support line that had been in place since the June lows. Such breakdowns usually mean that the preceding upward movement has now come to an end. 

Sponsored

Sponsored
If a short-term bounce transpires, there would be strong resistance at $22.60. This is the 0.382 Fib retracement resistance level and coincides with the previous ascending support line.

Short-term movement
AVAX/USDT Chart By TradingView
AVAX wave count analysis
The wave count shows that it is possible that it has completed an A-B-C corrective structure measuring from the all-time high. In it, waves A:C have had an exactly 1:1 ratio. The sub-wave count is given in black, also showing a completed corrective structure. 

So, if the count is correct, it would mean that the price has completed its correction and initiated a new upward movement on June 18.
AVAX upward movement
AVAX/USDT Chart By TradingView
However, the short-term movement casts some doubt in this possibility, since it shows a completed five-wave downward movement since the Aug 8 high. This indicates that the count is bearish instead.

A decrease below the June 19 low of $13.71 (red line) would suggest that the count is bearish, while an increase above the Aug 8 high of $30.39 (green line) would confirm that the count is bullish.', 'https://i.ibb.co/Z1BHNWV/image.png', 'NFT , Blockchain', '2022-09-18 15:50:35.881623');
INSERT INTO public.news (id, platform_id, author_id, link, title, content, image, category, created_on) VALUES (114, 29, NULL, 'https://cryptoslate.com/cross-the-ages-and-immutable-collaborate-to-launch-p2e-collectible-card-game/', 'Cross The Ages and Immutable collaborate to launch P2E collectible card game', 'The mobile collectible card game Cross the Ages (CTA) has partnered with blockchain gaming giant Immutable X to utilize its Layer-2 scalability solution to launch the initial trading card game.

The game has been in development for nearly two years. It is being built by a team of over 70 international artists, who include Joshua Cairos from Game of Thrones and Star Wars, Josu Salano from the Lord of the Rings, Andreas Rochas from Harry Potter, and Marvel’s Sandra Duchiewitcz. A series of novels also support the game’s storyline and the unique universe. The first book of the series, The Chrome Spell Book, has been written by a team of 13 writers and is already available to download.

The CTA team hopes to leverage Immutable X’s Layer 2 scalability solution to issue a high number of transactions quickly and to allow quality story progression. Immutable X’s Co-Founder Robbie Ferguson summarized the CTA’s objectives by saying:

“CTA is leveraging our layer 2 technology and mobile gaming marketplace to enable more for players while also investing heavily in story and character development.”

Cross the Ages
The CTA game is a free-to-play and play-to-earn mobile-first collectible card game that allows players to collect unique NFT cards by completing the quests individually or as a team. The cards vary in uniqueness which reflects their value. The game also has countless ‘easter egg’ NFTs hidden in its novels for players to find.

The CTA team invests heavily in the dystopian fantasy world behind the game and the story progression. The project was also elected as the best GameFi project of 2022 and has already captured the attention of over 500,000 community members globally.

Gaming in the winter market
Even though all crypto fields have been shrinking due to the coldest winter in history, blockchain gaming appears to be resilient to the cold and continues its expansion.

According to data from July 2022, gaming activity compensates for 52% of all unique active wallets in the crypto sphere, equating to nearly 1.1 million wallet addresses. According to the numbers, blockchain gaming activity has increased by 232% compared to the second quarter of 2021.

Prominent names from the gaming field have also been active despite the lifeless bear market conditions. The most recent development on that front came from Polygon and gaming publisher Neowiz to launch a new Web3 gaming platform called Intella X.

In May 2022, Zilliqa announced the launch of a new SDK to solve the interoperability problem in blockchain gaming. With the new SDK, Zilliqa aims to bring games from different blockchains together to allow them to trade and create a community.', 'https://i.ibb.co/0p0y2p8/image.png', 'Gaming', '2022-09-18 15:50:35.927136');
INSERT INTO public.news (id, platform_id, author_id, link, title, content, image, category, created_on) VALUES (95, 31, NULL, 'https://www.bsc.news/post/bsc-news-nft-weekly-recap-9-5-9-12', 'BSC News NFT Weekly Recap 9/5-9/12', 'Covering the latest developments on the BSC News NFT as the public and whitelist mints come nearer and nearer.

BSC News NFT Whitelist and Mint
The BSC News NFT public mint is just two days away on September 14! As the launch draws closer, the BSC News NFT team has been working double-time to build community engagement. Events, giveaways, AMAs, GameFi streams, and more have all been a part of this crunch-time push.

Below is a summary of the latest developments and news about the BSC News NFT.


Updated Whitelist Mint
The whitelist mint time has been updated to September 13 at 2:00 PM UTC! Users with whitelist spots can mint up to 3 NFTs. The whitelist mint will be exclusive to Rareboard, while the public mint will take place on Rareboard, BabySwap, and NFTb.

BSC Battles
BSC Battles is an event where users compete to earn whitelist spots and other prizes. The competition is held in the BSC News Discord.

Perhaps the most exciting portion of the event was the BSC News NFT Quiz, where community members answered questions about the NFT. The quiz served to affirm details for community members, as well as inform new members about the most important details of the NFT.


BSC Battles will conclude on September 13. If you wish to join in on the last few competitions, visit the BSC News NFT Discord!

Twitter Spaces with Rareboard, The Non-Fungible Lounge, Others
Twitter Spaces are an incredible way to bring new exposure to NFT projects, especially when hosted in tandem with other successful projects and community members. BSC News NFT has been working hard to build engagement by hosting and joining spaces with partners and influential figures in the NFT space.

In the last week, BSC News NFT chatted with whitelist and mint partner Rareboard, The Non-Fungible Lounge’s Dehuffski, mint partner NFTb, new partner TreasurelandNFT, and many other projects.

Check out the BSC News NFT official Twitter to find links to all the Spaces!

GameFi Streams with Tom
The BSC News NFT social media and marketing lead, Tom, did a number of GameFi and traditional video game streams to engage with the community and showcase some of the perks offered in the Gaming Guild.

Along with streaming games such as Multi Versus, Fall Guys, and other exciting games, viewers had the chance to win whitelist spots, giving them a 0.1 BNB discount on up to 3 NFTs!', 'https://i.ibb.co/Fq13dDF/image.png', 'NFT', '2022-09-18 15:50:35.884375');
INSERT INTO public.news (id, platform_id, author_id, link, title, content, image, category, created_on) VALUES (96, 26, NULL, 'https://decrypt.co/109523/bored-ape-nft-metaverse-band-beyonce-bruno-mars', 'Bored Ape NFT Metaverse Band Taps Beyoncé, Bruno Mars Producers', 'In brief Kingship, a virtual band based on Bored Ape Yacht Club NFT artwork, has named Hit-Boy and James Fauntleroy its co-executive producers and songwriters.
Universal Music Group’s 10:22PM label created the group in partnership with NFT collector Jimmy “j1mmy” McNelis, who owns the NFTs.
Universal Music Group announced today that its virtual metaverse band, Kingship—which features characters based on Bored Ape Yacht Club NFT artwork—has tapped a pair of very real music producers that have created hits for superstars like Beyoncé, Jay Z, and Bruno Mars.

The veteran producers—Chauncey “Hit-Boy” Hollis and James Fauntleroy—will take the roles of co-executive producers and songwriters behind the Bored Ape band, and work to create music for the NFT-inspired characters to perform in videos and immersive online metaverse worlds.

Kingship hails from UMG’s 10:22PM label and was created by label head Celine Joshua. The characters in the band are based on Bored Ape Yacht Club and Mutant Ape Yacht Club NFTs licensed from notable collector Jimmy “j1mmy” McNelis. It’s similar to the seminal virtual band Gorillaz, albeit with a handful of valuable NFTs used as source material.


Hit-Boy is a well-known hip-hop producer and three-time Grammy winner who has produced hit singles for artists like Beyoncé, Kanye West, Rihanna, Jay Z, and Ariana Grande. Fauntleroy, meanwhile, is best known as a four-time Grammy-winning songwriter for artists like Bruno Mars, Beyoncé, and Justin Timberlake, plus he’s produced music for various other musicians.

A recent Kingship teaser video, released in August to mark a promotion with the M&M’s candy brand, offered the first taste of their musical contributions to the project. In July, Kingship released its own NFT project, launching 5,000 Ethereum key cards that provide special access to exclusive content and token-gated future experiences.

Want to be a crypto expert? Get the best of Decrypt straight to your inbox.
Your Email
you@emailaddress.com

Get it!
An NFT is a blockchain token that represents ownership of a digital item, and can be used for things like artwork, Bored Ape-style profile pictures, collectibles, and access passes to online communities and live events. The NFT market swelled to $25 billion worth of trading volume in 2021, per data from DappRadar.

The Bored Ape Yacht Club is arguably the best-known project in the space, racking up billions of dollars’ worth of trading volume while amassing numerous celebrity and athlete holders. Yuga Labs, the creator of the Ethereum project, raised $450 million earlier this year at a $4 billion valuation, and is working on its own metaverse game called Otherside.

Eminem and Snoop Dogg animated as Bored Apes in their new music video.
Eminem, Snoop Dogg Bored Apes at VMAs Get Jeers From NFT Critics
Bored Ape Yacht Club made its worldwide television debut last night at the MTV Video Music Awards in a virtual, metaverse-hosted performance by rap icons Eminem and Snoop Dogg of their song, “...

News
NFTs
2 min read
Jason Nelson
Aug 30, 2022
Bored Ape Yacht Club NFT holders are given broad rights to use their owned images to create and sell derivative artwork and products. Some owners have used their Bored Ape imagery for things like fast food restaurants, cannabis and alcohol packaging, toys, and apparel.

UMG and 10:22PM aren’t the only creators that see opportunity at the intersection of Bored Apes and music: Storied producer and Ape owner Timbaland has also produced music from Bored Ape-based artists. He also released a single as his Bored Ape and sold NFTs of the music video itself.

Meanwhile, rappers Eminem and Snoop Dogg—also both Bored Ape NFT owners—recently released a collaborative single called “From The D 2 The LBC” that features their Ape images in the music video. They also performed the song live via 3D Ape avatars at the MTV Video Music Awards, and sold limited-edition merchandise based on their NFT characters.', 'https://i.ibb.co/q78JPRT/image.png', 'NFT', '2022-09-18 15:50:35.887639');
INSERT INTO public.news (id, platform_id, author_id, link, title, content, image, category, created_on) VALUES (97, 27, NULL, 'https://bitcoinist.com/artozo-nft-marketplace-beta-launch-august-2022/', 'Artozo NFT Marketplace Beta Launch August 2022', 'August 26, 2022 – It isn’t often that you get to report on a project proceeding ahead of schedule. We are much more familiar with the nagging disappointment of updates assuring us that our long awaited treat has been briefly delayed but will be coming soon…blah, blah, blah. So, yeah, being able to say that a project is not just on schedule, but rolling out an early beta is a unicorn event.
If you haven’t heard, Artozo is a new NFT marketplace platform looking to shake up how you buy and sell NFTs. Based on Solana, Artozo is coming out of the gate ready to process your transactions faster and cheaper (and greener) than other platforms.

Some quick specs:

27K followers on Twitter
9K followers on Instagram
300+ Artists applications
Weekly Twitter Space with 200+ active listeners
Social Media Reach estimate – 3Million monthly
But this isn’t just about buying and selling digital art. Artozo wants to make collecting NFTs fun and profitable and they’ve gamified the collecting processes. This platform has a number of unique features including an Invite Reward Model that makes sharing with your friends worth the time and effort. Referrals earn you both credits on the site and the opportunity to earn cryptocurrency. Their native token, ARTZ, will be tradeable on DEX and will be used for all transactions on the website.
Artozo also offers tools that help raise the value and utility of the NFTs you collect. ArtUp Boosters make it possible to raise the floor price of your NFTs and a transparent rating system allows the community to value the art offered on the marketplace. Their marketplace is invitation only and the Artists and their work verified to assure against scams.

The Artozo Team has worked for the last year to build a platform with the best tools and new options that help bridge the Web2 to Web3 gap as well as putting the NFTs you collect to work for you. Their Staking promotions will allow you to maximize the value of your NFTs by granting you hourly rewards for the art you stake. Staking essentially puts the assets you own to work creating a passive flow of profits.


Building a successful community is about more than social media, just like building an NFT platform is about more than buying or selling. “We talk with our followers on the regular and their input has helped shape Artozo.” says Pavlo Kharmanskyi, founder of Artozo “We are looking to create a community of NFTs lovers, not flippers.”', 'https://i.ibb.co/gF5QMN1/image.png', 'NFT', '2022-09-18 15:50:35.889151');
INSERT INTO public.news (id, platform_id, author_id, link, title, content, image, category, created_on) VALUES (98, 20, NULL, 'https://coincodex.com/article/16761/cryptopunks-nft-sells-for-27-million-as-interest-in-the-collection-starts-picking-up-again/', 'CryptoPunks NFT Sells for $2.7 Million as Interest in the Collection Starts Picking Up Again', 'Key highlights: An NFT from the CryptoPunks collection has sold for 2,500 ETH ($2.7 million)
This was the fourth-biggest CryptoPunks sale of all time in ETH terms
CryptoPunk #4464''s combination of traits is the 32nd rarest in the collection
CryptoPunks NFT sells for $2.7 million as trading volume and price floor picks up
An NFT from the CryptoPunks collection sold for 2,500 ETH, or about $2.7 million. In ETH terms, the sale is tied for the 4th-largest CryptoPunks sale of all time. 

CryptoPunks is an NFT collection launched in 2017 by Larva Labs. CryptoPunks were released well before the NFT craze, and users could mint them for free on the Ethereum blockchain. The collection has been extremely influential, and laid the blueprint for the highly popular profile picture NFT “genre”, which also includes collections like Bored Ape Yacht Club.

The CryptoPunks collection features 10,000 pixelated avatars called Punks, which were algorithmically generated from a pool of traits with different rarities. For example, 527 Punks have the “Regular Shades” trait, while only 44 Punks are sporting the “Beanie” trait. While no two Punks from the collection are identical, Punks with traits of a higher rarity tend to fetch higher prices on the market. 

The CryptoPunk #4464 is one of only 24 NFTs from the collection with the “Ape” trait. The “Ape” trait is the second-rarest trait in the collection, behind “Alien”, which is featured on only 9 CryptoPunks. Per Rarity.Tools, CryptoPunk #4464’s combination of traits makes is the 32nd rarest  in the collection.


CryptoPunks has been seeing a resurgence as of late, and is leading the rankings on OpenSea in terms of trading volume. The collection’s trading volume on OpenSea has increased by 611% in the last 7 days. 

The collection’s price floor, which is the lowest price an NFT from the collection can be acquired for, has jumped from $80,400 to about $86,800 today. CryptoPunks is one of the most desirable NFT collections on the market, but it has been surpassed by Bored Ape Yacht Club when it comes to its floor price. The floor price of the Bored Ape Yacht Club is currently about $100,500. ', 'https://i.ibb.co/0qnw6V0/image.png', 'NFT', '2022-09-18 15:50:35.890704');
INSERT INTO public.news (id, platform_id, author_id, link, title, content, image, category, created_on) VALUES (99, 29, NULL, 'https://cryptobriefing.com/nft-project-spotlight-humes-music-nft-metastars/', 'NFT Project Spotlight: Hume’s Music NFT Metastars ', 'Key Takeaways
Hume is a Web3 record label developing a roster of virtual "Metastars."
It uses music NFTs to promote its virtual label artists and nurture its community.
The Hume team believes that if music NFTs are successful, millions of artists will eventually use virtual avatars to represent themselves.
SIMETRI native web banner logo
This news was brought to you by SIMETRI - Smarter crypto investing. Profit from a brave new world!
SHARE THIS ARTICLE
Hume is a Web3 record label developing a roster of virtual artists called “Metastars.” 

What Is Hume?
Hume is one of the world’s first Web3-native record labels. It focuses on harnessing the power of blockchain technology to create deeper connections between music artists and their fans.

The label pioneers what it calls “Metastars,” completely virtual artists that Hume NFT holders help influence and develop. The Hume website defines Metastars as Metaverse-native, universally influential, virtual music artists who exist in both the Metaverse and the physical world. Hume’s goal is to become the leading Web3 record label dedicated to promoting virtual artists and onboarding them and their fans into its music collective. Crypto Briefing sat down with Hume co-founders David Beiner and Jay Stolar to find out what inspired them to launch Hume, their backgrounds in the music industry, and how NFTs play a pivotal role in creating a community-driven virtual artist platform. 

Angelbaby and the Metastars 
Hume’s first Metastar is angelbaby, an NFT from Non-Fungible Labs’ FLUF World collection. Before becoming Hume’s foundational Metastar, angelbaby was already an established artist in their own right. They’ve played several live shows this year at leading art and music events, including Art Basel Miami and South by Southwest. Additionally, angelbaby’s music has consistently topped the charts for the best-selling music NFTs on platforms like OpenSea and Audius. 


Angelbaby’s first live Metaverse performance at Art Basel Miami 2021 (Source: the hume collective)
However, in Hume’s world, angelbaby takes on a new role as one of the founding members of the hume collective. The project has shed light on the mysterious artists’ background, revealing them as a time traveler from the year 3045. 

The story goes that in the far future, censorship is rampant, and all creative expression is controlled by an oppressive force called the Xani Republic. Angelbaby has come back in time to the present day to found a group of rebel artists to fight against the Xani Republic. This group, known as the hume collective, is dedicated to preserving creative expression and the open Metaverse at all costs. 

“Angelbaby went through a gate that brought them back in time, they met me and David, and they’ve been introducing us to other Metastars. So as crazy as that all sounds, there is a deep story,” said Stolar, highlighting how Hume is an exercise in creative world-building and a new way for fans to connect with their favorite artists. “Our world is not just developing these tools that will let you interact with your fans in new ways, but developing each Metastar as part of a larger narrative world that they are all part of,” he added. 

Creator Backgrounds
Besides Hume’s innovative world-building through the eyes of angelbaby, the collective’s other founders each have their own stories to tell. Jay Stolar, Hume’s Chief Artist Officer, has an extensive background in performance, songwriting, and music production. His claims to fame include writing songs for Aloe Blacc, Selena Gomez, Carly Rae Jepsen, and Demi Lovato, and producing music for hit multiplayer games like League of Legends and Fortnite. 

During Stolar’s time producing music for other artists, he realized the lines between the real and virtual were becoming increasingly blurred. “What I started to realize was that essentially, a lot of these projects were being treated as if they were [for] a virtual artist,” he explained. 

For example, the projects Stolar worked on with Riot Games for League of Legends involved producing music for virtual artists who are also playable characters in the game. While some initially doubted whether fans would be able to connect with virtual artists in the same way as artists in the real world, projects such as Seraphine and K/DA proved that virtual artists could be successful, opening the door to a whole new paradigm in music production. “That led us down a path where we really fell in love with the idea of virtual artists early,” said Stolar. 


Virtual League of Legends K-pop group K/DA (Source: Riot Games)
While Stolar was discovering the untapped potential of virtual music artists, his fellow Hume co-founder, David Beiner, was exploring blockchain technology and the emerging idea of the Metaverse. “I was getting deep in Web3 and Ethereum, starting to think about NFTs and the Metaverse, and the more I talked to Jay, I was like, what’s the difference between writing songs for Selena Gomez, or a virtual artist we can develop and build the trajectory for,” he recounted. 

This realization marked the beginning of what is now called the hume collective, something the pair have never looked back on. “We had this general belief that now seems obvious—we’re going to have digital products, we’re going to have digital identities, those digital identities are going to blur the lines between the physical and the digital, and so you’re going to have fully virtual artists who are also blurring the lines between both those worlds,” Beiner added. 

Hume Genesis NFTs
In line with pioneering a platform for virtual music artists, Hume has elected to use virtual assets in the form of NFTs to bridge the gap between artists and their fans. When asked why NFTs were the best choice for the hume collective, Beiner gave two main reasons: community and intellectual property. 

NFTs have long been recognized for their ability to galvanize communities online. Through their ability to grant perks such as voting rights, Discord access, or airdrops to holders, the nascent blockchain-based technology has made coordinating communities and rewarding members easier than ever before. 

However, Beiner takes this a step further in the context of the relationship between music artists and their fans. In addition to knowing exactly who a virtual artist’s fans are, Hume’s Genesis NFTs will allow their holders to make decisions on the future of the Hume community. “We’re a big fan of making decisions,” said Stolar, careful to distance Hume from existing token voting mechanics popularized by DAO governance structures. “The reason we don’t like the word “voting” is because Hume’s not a DAO; we’re not going to have community proposals. It’s more of a story, [in the story] of the Hume Genesis in the future, everyone had one, and they would meet at a spot and make decisions together,” Beiner explained.  

There are 1,000 Hume Genesis NFTs that were dropped for free to those who met certain criteria, such as holding angelbaby POAPs or owning angelbaby music NFTs. After the drop, the genesis NFTs revealed into one of three tiers: Rare, Ultra-Rare, and Legendary. Depending on the tier, each genesis NFT will give its holder an increased amount of influence in the Hume decision-making process. 

Regarding additional benefits from holding higher-tier NFTs, Beiner hinted at perks such as exclusive dinners, going backstage at events, and priority access to Metaverse concerts. “I’ll let your imagination go through all the possibilities of what you could do,” he said. “Angelbaby wouldn’t be very happy if we started talking about things that are going to happen for each tier,” Stolar added jokingly.

Starting with Hume’s first Metastar, angelbaby, each virtual artist launched through Hume will have their own genesis NFT event, and all Hume Genesis holders will be guaranteed NFTs for all artists over the next 18 months. Little is known about the subsequent genesis drops aside from that each one will be larger in size than the Hume Genesis collection. 

Each Metastar’s genesis NFTs will give holders the opportunity to help develop them and their music career. Possible decisions revolving around music production include which songs should make it onto albums, which song the artist should release as singles, and deciding album cover art. “If you have 1,000 passionate fans, let them ‘get in the room with the artist,’ let them be part of the process. They’re the ones listening. They’re the ones who love it most,” Beiner explained. 

The Future of Music 
Although Hume is still in its early stages of development, Beiner and Stolar are confident that NFTs will eventually change the way we interact with and consume music. They see Web3 and blockchain as the next big technological evolution in how people interact with music, akin to the record player allowing for ownership or digitization making music portable.

At the same time, the pair acknowledged that bringing music NFTs into the mainstream will not be easy. “Music NFTs have definitely not gotten the same amount of love or attention as PFP projects or visual art, and there’s definitely been a big barrier there,” Beiner said.  

On the virtual artist side of things, Stolar recommends checking out angelbaby and their music to understand the concept of a virtual artist fully. “We’re only years away from there being a time where there are, I think, millions of people taking on virtual avatars to represent themselves as artists,” he posited, sharing his optimism for the idea.

Whether Hume will succeed in its vision of becoming the premier Web3 record label will largely depend on the success of music NFTs as a concept. Other Web3 music platforms such as Audius, Catalog and RŌHKI are also helping develop music NFTs, but like Hume, have yet to find mainstream adoption. Still, as blockchain technology grows, more artists will likely see music NFTs as a viable option to connect with their fans in a way that was never previously possible.', 'https://i.ibb.co/7j1sZbM/image.png', 'NFT', '2022-09-18 15:50:35.89245');
INSERT INTO public.news (id, platform_id, author_id, link, title, content, image, category, created_on) VALUES (100, 1, NULL, 'https://ambcrypto.com/samsung-and-xoxo-a-partnership-setting-new-standards-in-the-nft-world/', 'Samsung and XOXO- A partnership setting new standards in the NFT world', 'If you thought cryptography and the NFT worlds are merely a passing trend only for geeks and millennials, you probably haven’t heard the latest news in the industry.

When a conglomerate joins NFT 

While most of the NFT projects offer their holders some standard, art-related utilities with their tokens, this project comes to provide something much bigger.

Samsung, one of the world’s biggest corporations has recently partnered with the XOXO NFT project that’s about to be launched on Thursday, June 30th.

In industry terms, this is considered an astonishing achievement for both the NFT community and the XOXO project itself.

The holders’ new Galaxy / Samsung joins the Metaverse

As part of this exciting collaboration, holders will get a free Samsung Galaxy Z flip, Galaxy Watch, or Galaxy buds!
Things will get even more interesting as the lucky holders will get a surprise when they will reveal their piece/s. They will find that their Samsung device has come to life and it’s embedded in the art and the Metadata.

The Devirs’ Love Story is sold out!

Maya and Yehuda Devir are at the peak of their lives at the moment.

Two weeks after they sold out their genesis 101 Love Stories and on the day of the launch of their main collection, the couple is at the top of excitement.

After years of creation, innovation, and establishing a community of almost 10 million people, they’ve got to this remarkable milestone.

10K more to go! / Up next: The main collection
Achievements were always in the couple’s mind. They always pushed themselves toward their family and professional goals, by revealing their couple and family insights and philosophies. Now it’s time for them to go all the way with their art as they are about to share 10,000 NFT art pieces with art collectors and fans around the world in their XOXO NFT collection launch.', 'https://i.ibb.co/M5K9Pw8/image.png', 'NFT', '2022-09-18 15:50:35.896346');
INSERT INTO public.news (id, platform_id, author_id, link, title, content, image, category, created_on) VALUES (101, 39, NULL, 'https://www.newsbtc.com/news/company/solana-based-walken-announces-new-roadmap-features-to-sustain-its-impressive-growth-statistics/', 'Solana-based Walken Announces New Roadmap Features To Sustain Its Impressive Growth Statistics', 'Walken, a move-to-earn player game, has unveiled its latest roadmap in a bid to continue its trajectory to sustainable growth, building momentum and substantial overall growth, a statement from the team reads. The new-improved roadmap introduces several new features including new game modes, better social interaction components, and new partnerships to boost the overall growth of the platform.

Announced Monday, the new developments will be implemented on the platform in the coming months, offering users a more fun and sustainable platform enabling them to maintain a healthy lifestyle while having an opportunity to earn crypto.

5 BTC + 300 Free Spins for new players & 15 BTC + 35.000 Free Spins every month, only at mBitcasino. Play Now!

“One of the main challenges of any gamified web3 project is to make it both fun and sustainable, especially a free2play one,” Walken Co-founder and CEO Alexei Kulevets said. “With Walken, we are proving the point that it’s possible. We are grateful to our amazing community and work hard to make it even better”.

Some of the key developments and updates that stand out on the new roadmap include better localization support of the app with seven new languages added, a plan to use over 60 million community-generated WLKN tokens to re-invest in the app and add value across the ecosystem and the development of a new game that features CAThletes (NFT figures on the app).

Additionally, the new roadmap aims to build momentum and continue its sublime growth trajectory by introducing ‘The Walken Ambassador program’ to support local communities across the world and a dedicated referral program with associated bonuses. Notwithstanding, Walken will build new game modes such as tournaments and new race modes as well as social interaction features e.g. friend chats to enhance cooperation across its community.

BitStarz Player Lands $2,459,124 Record Win! Could you be next big winner?

Launched in 2022, the Walken gaming app is being developed to connect real-world sporting activities with online gaming and earning crypto. The fast-growing app aims to gamify a healthier lifestyle via the use of blockchain technology and financially incentivising users through its WLKN tokens.

“Gamifying ways for people to become healthy and adding financial incentives to stick to those routines are one of the biggest industry opportunities in all of Web3,” the team statement reads.

These developments will enable Walken to continue its impressive growth, especially by growing its community. With the vision of the new roadmap and features perfectly aligned with the company’s goals, the platform could be on the way to becoming one of the largest gaming platforms across the Web 3 industry.


Adding to the new proposed roadmap, Walken also shared some in-game economy statistics that show the sublime growth of the platform and expansion of its ecosystem in recent months. Following a rapid start in the user growth of its iOS app, the Walken Android app flipped the numbers in early August 2022 to become the largest Walken app currently with over 7,000new unique daily users, whereas iOS contributes to over 1,000 new daily users.

Additionally, the app recorded peaks of over 20,000 new daily users across July and August 2022, with over 1.11 million users recorded to have used the platform to date. The majority of the users hail from Russia and Ukraine, 19.6% and 10.4% respectively, with India coming in third at 7.34% of the users and Vietnam fourth with 5.13% of the daily users. According to the team, the number of users could well boost past 2 million by Q4 2022, as data collected across global regions showcases people are willing to dive into Web3 and unlock the benefits it can provide.', 'https://i.ibb.co/jH1Vh57/walken.png', 'Gaming', '2022-09-18 15:50:35.897847');
INSERT INTO public.news (id, platform_id, author_id, link, title, content, image, category, created_on) VALUES (102, 10, NULL, 'https://ambcrypto.com/is-stepn-gmts-failure-a-result-of-the-tokenomics-strategy-heres-assessing/', 'Is STEPN [GMT]’s failure a result of the tokenomics strategy? Here’s the assessment', 'STEPN [GMT] was recently highlighted in a recent Messari Twitter thread which evaluated its performance before and after Solana [SOL] network woes.  The thread showcases how market changes can disrupt and potentially destabilize dapps.

According to the Messari report, Solana accounted for roughly 20% of the fees generated by Solana users before the crash. This was during the Q2 2021 during which STEPN leveraged Solana’s robust growth.

Fast forward to the present and STEPN is struggling to gain new users its profitability is down considerably.


A faulty token model?
Many upcoming crypto projects leverage the hype around the crypto market. They often tailor their platform mechanics around user growth and use the incoming revenue to pay users as part of their tokenomics strategy. However, this approach often fails to account for the other side of the coin.

The market is subject to wild swings where prices may fall and interest also drops. This is exactly what happened when the market crash came. This was followed by other challenges, such as Solana’s network down-time. These events hurt STEPN’s user growth and profitability.


The tokenomics model triggered an over inflation of STEPN’s native token GMT. This outcome made the ecosystem less appealing. Thus, this affected STEPN’s ability to attract new users, while also discouraging most of the existing users.

Planning for a comeback
STEPN is another project based on an interesting and appealing model. Unfortunately, it is among many that have been let down by a poor tokenomics model. STEPN might have to pursue a different tokenomics and financial model in pursuit of future success.

STEPN’s developers recognized the need to do things differently and have thus highlighted plans for the platform’s future. The platform aims to generate value for its users by pursuing new revenue streams. A recent STEPN blog post noted that the platform,

“Introduced new revenue streams to create value for our community members — launching our very own decentralised exchange, DOOAR, to channel additional money into STEPN’s ecosystem.”

One of the key takeaways from STEPN’s journey is the value of having the right tokenomics. An important aspect that dapp developers should consider. Poor tokenomics might hinder success regardless of how good their idea is.', 'https://i.ibb.co/ZKW1Vxt/image.png', 'Gaming , Altcoins', '2022-09-18 15:50:35.899483');
INSERT INTO public.news (id, platform_id, author_id, link, title, content, image, category, created_on) VALUES (103, 35, NULL, 'https://ambcrypto.com/fameex-a-crypto-game-changer-tailored-for-quantitative-futures-trading-enthusiasts/', 'FAMEEX: A crypto game changer tailored for quantitative futures trading enthusiasts', 'The hype around DeFi, GameFi, NFT, and blockchain shows us that the world of web3.0 is advancing quickly. The crypto sphere flourished with the entry of institutional capital which made what used to be an investment for geeks more fashionable and popular. Huge returns made capital even more motivated to chase profits. Those gains have become elusive in the bear market. The high degree of market control by whales, the quantitative hedging between trading bots, and various financial management tools have made stable and continuous profits an extravagant hope for many holders.

The top exchanges have become protectionists, looking to re-package market manipulation as financial innovation, which hurts small investors. Medium-sized exchanges choose a more aggressive listing policy, with a low threshold for entry and high subsequent control, they work with the project team to jointly control the token price. The decrease in crypto liquidity in the bear market has caused fee income to plummet. They hope to conspire with the project team to manipulate the asset price and harvest money invested by traders. This has become the basic means for them to survive after rapid expansion.

The difficulty of trading profitably is gradually increasing. The Quantitative arbitrage team headed by SBF takes full advantage of its available funds and strategies to continuously erode the funds of others in the market. Investors are resentful and raise doubts about the crypto market. Why has trading become so complicated? What should small investors do?


Created for Professional Quantitative Futures trading enthusiasts, the FAMEEX crypto trading platform has become a game changer in the recent bear market.

Against the background of the current crypto market slowdown and difficulty in profit-making, FAMEEX is striving to become the leader in the field of exchange quant tools.

Providing a user-friendly experience for ordinary users is the ultimate goal of this exchange. Backed by a strong international finance group, FAMEEX runs counter to the existing competition, only focusing on crypto trading, combining traditional financial tools with crypto, and jointly developing AI quant tools with top global fintech teams. When crypto investors are facing a market manipulated by professional liquidity bots, they can diversify and hedge risks without being at a disadvantage.

FAMEEX provides unique AI grid trading and Martingale strategy one-click quant tools built into the trading platform so that every crypto investor is no longer trapped by the learning curve of quant trading, they can easily find the most suitable trading strategy for the market conditions and use AI technology to evolve their strategy into a long-term passive income tool. Long-term positive returns, creating investment rules that are beneficial to them, and then investors can turn transactions into high-probability profitable games.

FAMEEX is willing to become the first quantitative stop for crypto investment enthusiasts. Focusing on trading, and dedicated to making products to the extreme, FAMEEX Exchange, which is tailor-made for trading enthusiasts, is creating a new revolution in the crypto world.


FAMEEX is anti-gambling as the platform is lowering the Leverage Limits and embracing supervision.

The main difference between trading and gambling is that trading is a skill that can be learned, while gambling is mostly based on chance. With trading, you can use different strategies to try to make a profit, while with gambling you are mostly relying on luck. Crypto markets are volatile, with extreme leverage there is no difference between trading and gambling. The market manipulation risk and social harm caused by high leverage have made the crypto market the subject of strict regulations. In 2021, FAMEEX stepped back from many non-compliant markets and focused on reducing the leverage of futures, holding multi-national regulatory licenses, and cooperating with regulators. FAMEEX also made investments in compliance-related technologies and accepted local supervision to meet compliance globally.

FAMEEX offers futures trading as a platform committed to providing users with rational compliance procedures. FAMEEX platform’s liquidation volume has always been at the lowest levels compared with other exchanges during market reversals. To attract more professional traders, FAMEEX will grow along with crypto investors and the crypto market at large for global users.

With extremely innovative options products, FAMEEX provides professional traders with more arbitrage opportunities. The wealth creation effect of the crypto industry has always been one of the attractions for investors around the world. Your profession of trading can make you money and FAMEEX Options products are the perfect tool for professional traders.

FAMEEX options with their 3-minute settlement and quick turnover of funds make short-term trading a promising prospect, with no upper limit on profits. An 80% market protection mechanism has been implemented at the base layer to prevent whales from monopolizing the market, truly providing a professional, safe and fair financial leverage tool for traders.


Because of strict compliance procedures, long-term investors are willing to store digital assets in FAMEEX with peace of mind. With this professionalism, more quant traders choose to use FAMEEX quant tools. By the reason of its focus, FAMEEX has always endeavored to simplify and improve its financial tooling. On top of that, FAMEEX has launched a global promotion and registration event, enjoy VIP treatment when you register. There is also a 1000 USDT gift package for a limited time only. 100% of winnings and 100% of the handling fee will be refunded. Click to register now: https://fameex.com/en-US/FWSU6

Created out of the need of quant futures trading enthusiasts, FAMEEX, the game-changer crypto trading platform is about to embark on a new era of crypto across the world. With the rapid growth of FAMEEX, more and more crypto traders are discovering their financial futures on FAMEEX.', 'https://i.ibb.co/RNM919J/image.png', 'Gaming', '2022-09-18 15:50:35.903127');
INSERT INTO public.news (id, platform_id, author_id, link, title, content, image, category, created_on) VALUES (104, 4, NULL, 'https://cryptoslate.com/heres-what-made-splinterlands-the-most-active-blockchain-game/', 'Here’s what made Splinterlands the most active blockchain game', 'Since its launch in 2018, Splinterlands’ success demonstrates the game’s potential and its huge appeal to gamers. As of April 12, Splinterlands ranked first in daily active users and averaged over 350,000 daily users, about 100,000 users ahead of the second place Alien Worlds.

In Splinterlands, players can participate in the game for only $10, which is a low barrier to entry compared to similar games. Players can earn income by playing games, trading cards, leasing and staking, and can quickly compete with other players to produce scarce and valuable NFTs. 

Here’s how Splinterlands became so active in an industry where most projects struggle for regular users. 

About Splinterlands
Splinterlands is a turn-based card battling game on the Hive chain. 

Players have their own series of cards with different attributes and abilities, and they can combine different decks to play against other players, with each match taking only 2 to 3 minutes. After winning a battle, users are rewarded with cards and $DEC.

Cards can be used in battle, upgraded, sold or rented to other players, and rare cards have greater collector value.

Screenshot Source - Splinterlands Website
Screenshot Source – Splinterlands Website
According to Footprint Analytics, as of April 12, Splinterlands ranks number one with more than 350,000 daily active users, leaving the second, third titles far behind.

Footprint Analytics - Top 10 Games Ranking by Players（Latest 5 days）
Footprint Analytics – Top 10 Games Ranking by Players（Latest 5 days）
Why is Spinterlands so Playable?
After July 2021, witness the unprecedented growth of Splinterlands as the trading card game becomes popular in the Metaverse. According to Footprint Analytics data, the number of users and transactions has gradually increased and stabilized.

Footprint Analytics -  Splinterlands Transaction Trend & Users Trend
Footprint Analytics –  Splinterlands Transaction Trend & Users Trend
Splinterlands single-handedly promoted the development of Hive, mainly due to the following factors: 

Simple and varied gameplay 
Splinterlands’ gameplay is simple and varied. The game has a low barrier to entry, with players needing only $10 to participate and the ability to earn in the game. Here’s how:

Complete daily tasks to earn rewards. Winning five games as required will give you a chance to open a treasure chest with random rewards such as $DEC or cards. Currently, bronze (there are 6 league levels in the game, Bronze is the second level in the game league and the highest is the 6th championship level) can only open one treasure chest per day. The higher the level, the more rewards you can open to complete the task.
Participate in qualifying. Players can get Dark Energy Crystals ($DEC) rewards by participating in ranked matches. But entry requires paying some $DEC as a ticket, and even beginners and seasoned players can improve their skills in qualifying.
Sell cards. Each card is unique and can be traded on the marketplace. The higher the level of the card, the better the stats obtained; when the maximum value is reached, the card can gain special abilities.
Card rental. After collecting a large number of cards, players can rent them out to other players to earn revenue, while still maintaining ownership of the cards.
Pledge $SPS for proceeds.
There are also land sales and land leases.
 Therefore, every player who enters the game has a different goal, it can be earning money, entering a championship, league, collecting cards or just for fun.

Card NFTization
Splinterlands NFTs various cards to increase card liquidity, solving the problem that some card games do not allow players to trade or sell game assets to other players.

 Fast battle speed, at only 2 to 3 minutes per game

Splinterlands has more room for innovation, such as the land-based metaverse world, supporting players to create guilds (the threshold for entering guilds is currently high, and you need to reach a certain point ranking to enter), building castles, and creating a more innovative metaverse space.

Splinterlands of Tokenomics
Splinterlands uses a dual coin model, with $SPS as the governance token and $DEC as the game token.

$SPS
$SPS is used as a governance token, whose value represents the value of the game. The role of $SPS is mainly for community governance voting, in-game rewards, and obtaining pledge rewards. The most influential one is the governance vote, where the holder pledges the $SPS token to participate in the vote and decide changes in the project.

According to Footprint Analytics data, the overall price of $SPS has not changed much in the past 3 months, hovering above $0.1. 

Footprint Analytics - $SPS Token Price & Trading Volume
Footprint Analytics – $SPS Token Price & Trading Volume
From the market cap trend of $SPS, price fluctuations help the total market value of all its cards to increase or decrease.

Footprint Analytics - $SPS Market Cap
Footprint Analytics – $SPS Market Cap
$DEC
$DEC is mainly used for in-game purchases of various card packs, props, lands, improving personal rankings, etc. It is similar to Axie Infinity’s token $SLP. It can be obtained in the following two ways:

By winning matches and completing missions. 
By purchasing it outside the game.
With $DEC, more cards can be purchased, thus increasing the player’s win rate in battle and gaining more rare cards and battle rewards.

Summary
Splinterlands has become the game project with the most active users in GameFi, having a low barrier to entry, simple gameplay, fast combat speed, and a unique reward system.

This piece is contributed by Footprint Analytics community.

The Footprint Community is a place where data and crypto enthusiasts worldwide help each other understand and gain insights about Web3, the metaverse, DeFi, GameFi, or any other area of the fledgling world of blockchain. Here you’ll find active, diverse voices supporting each other and driving the community forward.

Date and Author: Apr. 2022, Vincy

Data Source: Footprint Analytics – Splinterlands Dashboard

What is Footprint Analytics?
Footprint Analytics is an all-in-one analysis platform to visualize blockchain data and discover insights. It cleans and integrates on-chain data so users of any experience level can quickly start researching tokens, projects, and protocols. With over a thousand dashboard templates plus a drag-and-drop interface, anyone can build their own customized charts in minutes. Uncover blockchain data and invest smarter with Footprint.', 'https://i.ibb.co/GPCWC7V/image.png', 'Gaming', '2022-09-18 15:50:35.906275');
INSERT INTO public.news (id, platform_id, author_id, link, title, content, image, category, created_on) VALUES (105, 19, NULL, 'https://decrypt.co/99682/why-avalanche-is-the-killer-app-for-nft-games-ava-labs-president', 'Why Avalanche Is the Killer App for NFT Games: Ava Labs President', 'In brief Ava Labs President John Wu recently appeared on Decrypt’s gm podcast.
He discussed why he believes Avalanche is best suited for NFT-powered games, as well as current perceptions of NFTs.
Much of the current NFT market lives on Ethereum and its sidechains and scaling solutions, as well Solana—and that’s true of NFT-powered crypto games, too. But in recent months, we’ve seen more and more developers begin building games on Avalanche.

Over the last 30 days, Avalanche play-to-earn game Crabada has overtaken the struggling Ethereum-based Axie Infinity in terms of NFT trading volume, and has racked up over $225 million worth to date—making it the highest-grossing overall NFT project on Avalanche, per CryptoSlam.

First-person shooter Shrapnel—described by its creators as a “AAA game”—will also build on the platform, while online social game Highrise will launch its Web3 metaverse on Avalanche. Other notable projects include mobile game Castle Crush and online role-player Ragnarok.

Why build on Avalanche, one of the leading so-called “Ethereum killers?” On the latest episode of Decrypt’s gm podcast, Ava Labs President John Wu explained that Avalanche’s subnets feature is ready-made to power potentially sizable crypto game economies.

gm: All About Avalanche with John Wu

0 seconds of 34 minutes, 34 secondsVolume 90%

gm: All About Avalanche with John Wu
Episode 8 of the gm podcast: Ava Labs president John Wu talks to Dan Roberts and Jeff Roberts about the meteoric rise of so-called "Ethereum killer" Avalanche (he hates that phrase), its utility and usability, AVAX token, tribalism in crypto, the SEC and regulation, and NFT backlash.

A subnet on Avalanche acts like a separate instance of the platform designed for a certain decentralized app (dapp) or game—almost like a white-label solution for a custom blockchain, yet still part of Avalanche. It inherits the security from Avalanche, but acts as a dedicated space that isn’t affected by (and doesn’t affect) the wider network.

For example, if another app or game on Avalanche is bogging down the main network, it won’t kill your game’s performance if you’re running on a subnet. Likewise, a popular game on a subnet doesn’t have to take resources away from other Avalanche services. There are other benefits, too, such as being able to choose which token is used to pay transaction gas fees.

“Gaming projects in subnets is about to explode,” Wu told co-hosts Dan Roberts and Jeff Roberts, noting that there are nearly 10 games already tapping into subnets on Avalanche.

“Games in general, especially GameFi games—there’s a gazillion transactions. So those transactions eat up the chain’s capacity, in some sense,” he added. “If someone else is doing something, it won’t affect your speed or timing in your subnet.”

Subnets are designed to benefit from the security and consensus mechanism of Avalanche while insulating developers from potential network strain. Blockchain platforms can get bogged down and sometimes even crash—as Solana recently experienced. Ava Labs, which represents the founders and core contributors behind Avalanche, sees subnets as an ideal solution.

“It’s almost like your own chain—it is your own chain, basically,” Wu said. “And it’s great for developers, not only because of the speed of the transactions ... but basically they’re able to worry about what they want to do, which is to create great gameplay, instead of the underlying infrastructure substrate they have to worry about, or worry about security.”

NFTs and gaming
Wu also touched on some of the vitriol and criticism toward NFTs. Many critics point to the environmental impact of some blockchain platforms that use proof-of-work consensus models (like Ethereum does, currently), as well as the prevalence of scams in the NFT and crypto space.

An NFT acts like a blockchain-backed deed of ownership to a digital item, representing items like artwork, collectibles, and indeed video game items.

He suggested that many people aren’t yet considering the potential “disintermediation of business models” via NFT assets, whether it’s artists cutting middlemen out of secondary market sales or maintaining a more direct connection to fans. He also pointed to “frothy valuations” for some pricey collectibles, which might rub skeptics the wrong way.

“I just feel like people don’t really think digital collectibles are a thing,” Wu said. “They just think of it as, like, ‘Well, I can just copy that in a GIF and show it, so any digital collectible is just nonsense.’ And I think that''s probably why they hate it.”

Still, he said that GameFi apps—also known as play-to-earn or play-and-earn games—“are exploding right now,” serving as “the intersection of decentralized finance and NFTs all in one.”

Such games typically provide token rewards as incentives to players, and ownership of in-game items in the form of NFT assets means that players can potentially benefit from them even when they’re not playing. Wu noted the potential for lending services that let holders offer up an item for other players to use—and reap the benefits when it’s leveled up through their play. They could make some money, too.

That said, it’s very early days for NFT-powered games—and some might argue that current examples feel more like DeFi apps than robust, enjoyable video games. Shrapnel is one such upcoming game that’s billed as a step up from current crypto gaming fare, and others building in the space believe that future titles will indeed be as polished as major traditional games.

“It’s still not the same level of gameplay as a AAA publisher’s games,” Wu said of current crypto games. “What people are attracted to is the incentive mechanism, and growing your character or growing rewards and stuff like that. So it’s like a nice little new creation, but it''s definitely not the gameplay [drawing them in] yet.”', 'https://i.ibb.co/jV58k23/image.png', 'Gaming , Blockchain', '2022-09-18 15:50:35.907911');
INSERT INTO public.news (id, platform_id, author_id, link, title, content, image, category, created_on) VALUES (106, 9, NULL, 'https://cointelegraph.com/news/axie-infinity-cuts-rewards-from-classic-game-subtly-forcing-p2e-players-to-new-mode', 'Axie Infinity cuts rewards from classic game, subtly forcing P2E players to new mode', 'Play-to-earn (P2E) blockchain game Axie Infinity (AXS) has completely removed the token rewards from its classic game mode to attract its users to a new game mode called Axie Infinity Origin. 

The Axie Infinity team announced that starting on Friday, there will be no more Smooth Love Potions (SLP) to be minted on its classic mode. According to the team, the SLP rewards will be migrated to their new game mode. However, minting will be unavailable for 30 days as the team conducts a monitoring phase to search for bugs, abuses and exploits.

Apart from this, the team highlighted that moving from classic to the new game mode will help “balance the SLP economy.” In addition to removing classic rewards, the team will also enable using SLP to craft various in-game boosts such as runes and charms in the new mode to add utility to SLP.

Back in February, the Axie Infinity team already removed the SLP rewards for the adventure mini-game and daily quests reward in classic mode in an earlier attempt to balance the economy for the SLP token. Despite the team’s efforts to make economic adjustments, the token is still down 98.7% from its all-time high of $0.39 in July 2021.

Related: P2E gaming is in a rut, but Axie Infinity (AXS) could rebound for 3 key reasons

In 2021, the nonfungible token (NFT) game has popularized the P2E model and accounted for nearly two-thirds of all blockchain game NFT transactions. Within the last year, the project showed $3.5 billion worth of NFT exchanges, according to the token information website NonFungible.

Even though the crypto tokens of the Axie Infinity project have not performed well during the crypto winter, the NFT transaction volume for the project surged 205% in July. Its co-founder Jeff Zirlin noted that the project is “healing,” referring to the positive reception of the game’s NFT land staking feature.', 'https://i.ibb.co/DLypSth/image.png', 'Gaming', '2022-09-18 15:50:35.91118');
INSERT INTO public.news (id, platform_id, author_id, link, title, content, image, category, created_on) VALUES (107, 39, NULL, 'https://beincrypto.com/olympus-a-p2e-nft-game-similar-to-clash-royale-is-making-headlines/', 'Olympus, a P2E NFT Game Similar to Clash Royale, Is Making Headlines', 'If you are a fan of PvP 3D tower rush games, the name Clash Royale probably already rings a bell. After all, it’s arguably the most popular tower rush game out there with over 500 million (and counting) lifetime downloads.

Now, think of Clash Royale’s free-to-play model and Greek mythology-based gameplay, then add a financially rewarding play-to-earn element to it, and voila! That’s Olympus Game for you! 

With the kind of backing it has managed to secure from prominent investors, Olympus has already established itself as one of the most promising upcoming P2E NFT games in 2022. So expectedly, the ongoing ICO for the game’s native $OLYMP token has been creating a lot of buzz as well.

Sponsored

Sponsored
If you’re considering participating in the $OLYMP ICO or trying out the game firsthand, this early review will hopefully help you clear your doubts.

What is Olympus Game?
Olympus is a player-vs-player, 3D tower rush title based on Greek mythology. It promises to deliver a fast-paced and immersive online gameplay that requires real-time strategy making. It is built on the BNB Chain and will soon be available for both mobile and desktop users.

The gameplay
Your main objective in the game is to destroy the columns of the temples of your opponents while protecting the columns of your own temples. Watch this quick video below to know the backdrop the game is based on:

Sponsored

Sponsored

Each player composes their deck with eight cards and they can use these cards to destroy enemy temples. If you want to participate in the P2E part of the game, you first need to purchase the P2E starting booster using your $OLYMP stash. The eight cards in the first deck are identical for all players.

Each victory will earn you sizable rewards in the in-game $OLYMPG token. The number of $OLYMPG you are rewarded with depends on the level that you’re playing in (the higher the level, the higher will be your reward).

After every sixth victory, you win a chest. These chests may contain cards that can upgrade your existing characters or unlock new ones. With each upgrade of cards, you boost your characteristics. However, if you wish, you can also resell these cards by opting to stay at the same level that you were previously in.

Sponsored

Sponsored
Free-to-play
If you don’t want to participate in the P2E part, you can still enjoy the game for free. You do not have to buy the P2E booster in that case. However, you will have to play in the free-to-play arena of the game against other players opting for the same category. 

But wait, there’s more to it.

During the gameplay, if you so wish, you can also borrow cards or decks from Olympus Game’s native scholarship marketplace. By doing so, you will upgrade your status and be able to also play against P2E players.

Sponsored

Sponsored
You do not have to make huge investments to borrow cards from the Scholarship marketplace. However, you may have to share a part of your rewards in the $OLYMPG token with the lender after each victory. 

Olympus charges a 10% fee on each $OLYMPG token you earn using a borrowed card.

Several avenues to boost your earning
The P2E aspect of the game is far from being unidimensional, which is to say that there are many additional avenues for you to earn other than just winning battles. For example, you could rent your cards to other players via the Scholarship marketplace. Alternatively, you could also upgrade your cards by consistently winning and then resell those cards.

Sponsored

Sponsored
Olympus team and investors
Unlike most other projects in the blockchain/crypto space, the Olympus team has doxxed themselves to ensure the optimal level of transparency. And as you can see, the team appears to consist of quite a few experienced professionals with sizable experience in the gaming industry.

The team also claims to have joined forces with an “established game studio with more than 15 years in the business and 450+ completed projects.”

It is also worth noting here that the project has been backed by BD Multimedia, a France-based company that reportedly had the best-performing stock on the Paris stock market last year.

All things considered, Olympus does indeed check all the right boxes when it comes to the team and investors backing the project.

A game focused on eSport competitions
The Olympus team has an ambitious roadmap for fans who love participating in grand eSports competitions. In fact, the game aspires to be the first P2E title ever to offer huge eSport rewards.

Olympus claims to have already allocated 50 million $OLYMP tokens as rewards for eSports competitions. For perspective, taking the base price of the token at the end of the ICO, 50 million $OLYMP amounts to nearly $4 million.

And that’s just the base price. The team is confident that the amount will be a lot bigger considering that the $OLYMP price could significantly increase once the game launches and make inroads into major markets.

Olympus tokens 
There are two tokens in Olympus Game – both on the BNB Chain:

$OLYMP: As previously stated, $OLYMP is the governance token in the Olympus ecosystem. It is a multi-purpose token that you can use to buy the P2E starter booster pack, cast your vote during community decision-making processes, shop NFTs in the game’s native NFT marketplace, and earn staking rewards, among others.
$OLYMPG: It is the P2E token in the gameplay that you can earn by winning battles. You can use your $OLYMPG stash to buy chests or upgrade cards. You also earn $OLYMPG every time someone wins a battle using a deck borrowed from you via the scholarship program. Note that new players will have to win a minimum of 20 games and wait 12 days to receive the $OLYMPG rewards in their wallets. 
$OLYMP tokenomics and ICO

Source: Olympus.game
The Olympus team seems to have put a well-calibrated vesting roadmap in place to ensure healthy and sustainable growth for the $OLYMP price in the long run.

Vesting details:

Private ICO & Seed sale	10% TGE + 0,15% unlock every days
Launchpad	10% TGE + 0,15% unlock every days
Stacking rewards	1 Month cliff, vest linear in 36 months
Gaming issuance	1 Month cliff, vest linear in 12 months
Advisors	6 Months cliff, vest linear 18 months
Team wallet	12 months cliff, vest linear weekly in 24 months
Ecosystem fund	2 weeks cliff, 10% then vest linear weekly in 12 months
Liquidity	No vesting
Rewards esport	No vesting but for the winners: 10% TGE + 0,15% unlock per day.
Source: Olympus.game
$OLYMP ICO details
The first phase of the three-phase $OLYMP ICO was launched on April 30, 2022. For the first 72 hours, it was only available to whitelisted users and after that, the investment window opened for everyone. KYC is mandatory for all investors. At $0.05 per token, the goal of the first phase is to secure $500,000.

The second phase will start on May 30 with the goal of securing $1 million at a price of $0.065 per token. KYC is mandatory in this phase too.

For both these rounds, you have to connect your wallet to the $OLYMP ICO page and provide your KYC data.

The third phase is the public round and you don’t have to undergo KYC to participate in it. The target in this round is to secure $1 million at $0.08 per token.

So as you can see, with a promising gameplay, ample earning opportunities for players, and seemingly healthy tokenomics, Olympus Games indeed appears to be a quality P2E NFT title in the making. 

Of course, the game is still a work in progress and we will wait until the official launch to form a more educated opinion on its long-term potential. But as of now, the prospects seem promising. 

If you’re interested in learning more about the project, the Olympus whitepaper is a good place to start. You can also join the Olympus community on Discord for news and regular updates.', 'https://i.ibb.co/CQpwhQh/image.png', 'Gaming', '2022-09-18 15:50:35.91261');
INSERT INTO public.news (id, platform_id, author_id, link, title, content, image, category, created_on) VALUES (108, 2, NULL, 'https://u.today/press-releases/the-orcs-mint-date-gets-finalized-as-the-p2e-game-looks-to-offer-exciting-p2e', 'The Orcs’ Mint Date Gets Finalized As The P2E Game Looks To Offer Exciting P2E Benefits And Incentives', 'The Orcs’ mint date gets finalized for April 26th, 2022. Compatibility with NFT marketplaces such as Solanart, Alpha Art and Magic Den have also been confirmed. It is a well-known fact that the gaming business is rapidly evolving. Play-To-Earn (P2E) games will inevitably take the place of traditional games, as they broaden perspectives and enhance the overall gaming experience. The Orcs is such a game. Essentially, it is a card game in which players participate in epic battles with a hero from a certain side who has a unique ultimate ability. The game will be developed using the Solana platform, and is currently among the most promising blockchain systems. Moreover, the $ORCS token will be the game''s primary currency and actively help support the ecosystem, allowing users to successfully play, earn, sell, and trade in-game assets. In this way, the project effectively blends the concepts of gaming, crypto and blockchain. Important details Firstly, let’s understand what the key details of this game are. To begin with, the crew will create several encounters with The Orcs NFT. The team will do its best to adapt and deliver value and utility to the holders as time passes and the crypto market evolves. The long-term objective will be to establish a strong community and brand, both of which are important factors for longevity in this sector. Also, the Genesis Orcs collection will provide customers complete access to the game and all of its advantages. This will be the first collection for minting purposes as well. As if enjoying the game wasn’t enough, holders of the collection will also enjoy a slew of special bonuses. For instance, staking Genesis Orcs earns $ORCS tokens on a daily basis. In the future, the Orc may modify its appearance or be dispatched on an expedition through OrcLand in search of a mystery mutant. Users may even take advantage of the dating app to locate their ''Lady Orc'' and have a ''Baby Orc’, which is certainly an aspect unique to this project. In addition, for those who wish to explore the project but lack the NFT, the team will create a unique recruitment module that will permit users to gain full access to the game or find a companion for an adventure. By doing this, entry barriers to the game are reduced and nearly everyone can take part. Why play The Orcs? There are many reasons as to why The Orcs is being played by numerous people across the world. Its gameplay is addictive, it has a well-balanced game economy, it has community-driven incentives, an effective P2E infrastructure, is highly accessible, and is built on Unity. All of these work well together to provide an enriching and memorable experience. The Orcs has been under development since October 2021, when the team decided to go beyond the typical PFP Project on Solana and create something larger. After a half-year of hard work on details and the game''s Pre-Alpha version, the crew is ready to dominate the Solana blockchain and will accomplish their vision for The Orcs project no matter what. To further build the community, the team intends to grant all holders access to the OrcDAO and DAO Dashboard. Royalties from the secondary market would be deposited in the DAO Treasury Wallet, which will be managed by DAO members. As a result, a primary objective would be to become one of the greatest Web 3.0 organizations as well, which makes sense as the world is rapidly approaching the inevitable shift to the next age of digitization, namely the Web 3.0 era. The final phase will be the ''Growth Elixir'' evolution process, which will transform Baby Orc into a GEN2 Orc. Orcs from GEN2 can be turned into 3D counterparts and sent to the metaverse. Other notable features include ‘Mutation’, ‘Breeding’, and much more. About The Orcs THE ORCS is a group of 8,888 hand-drawn Orcs with over 600 distinct qualities that live on the Solana blockchain. Every piece of artwork is unique, extremely detailed, and bears a bit of the artist, who is enamored with fantasy-themed concepts and whose imagination goes beyond any praise. Each Orc also provides people access to several benefits and prizes. Plenty more exciting developments are in the works too, so fans definitely have a lot to look forward to.

Read more on U.Today https://u.today/press-releases/the-orcs-mint-date-gets-finalized-as-the-p2e-game-looks-to-offer-exciting-p2e', 'https://i.ibb.co/xGWVSnJ/image.png', 'Gaming', '2022-09-18 15:50:35.914522');
INSERT INTO public.news (id, platform_id, author_id, link, title, content, image, category, created_on) VALUES (109, 20, NULL, 'https://coingape.com/press-releases/the-first-free-mobile-p2e-game-is-coming/', 'The First Free Mobile P2E game Is Coming', 'Participants in play-to-earn games are rewarded with digital cash or non-fungible tokens (NFTs). These blockchain-backed games, also known as P2E games, have gone mainstream in recent years, becoming a core component of nearly every metaverse. Each platform boasts its own form of cryptocurrency to reward online gamers for their time commitment. Earning real-world currency while having fun is one of the main reasons play-to-earn games such as Axie Infinity have become extremely popular.


Blockchain-based games enable players to earn money by completing in-game objectives. Because the games are blockchain-based, they can utilize NFTs, in-game currencies, as well as “renting” and “staking” functions. Most P2E games require an initial investment (for example, to buy a character or plot of land). By owning these digital assets you can decide what to do with them; you can use them to earn more tokens, or you can sell them as assets to another player. This puts the control and potential for profit in the hands of the players. A true open economy.

A new approach to P2E gaming
Currently hosted on Ethereum, Tanjea is the blockchain-based mobile gaming ecosystem that allows players to play, and earn, for free. Players earn an ERC20 cryptocurrency called $TNJ for playing mobile games they already love, and unlike most P2E crypto games Tanjea requires no up-front investment or blockchain experience.

Gameplay Synopsis

Tanjea is an RPG game at its core, allowing players to traverse numerous regions with stunningly unique topographies. Throughout these diverse lands, players will encounter mythical beasts known as Jeas. Each new player receives their first Jea NFT just by creating their profile. $TNJ token payouts are based on daily leaderboards, so everyone has the opportunity to earn their share, either on their own or with teams of friends.

By planting Jea bait, players can capture Jea NFTs which will assist them in completing tasks in the Tanjeaverse to earn $TNJ tokens. Players in Tanjea gradually build up a Jea NFT collection which they can use to complete more daily tasks through mini-games and PVP battles. This will aid them in maximizing their $TNJ earnings, giving players the potential to become a ruler of one of Tanjea’s kingdoms!

A P2E Gaming Metaverse

Tanjea’s uniqueness is exemplified in the symbiotic relationship between mini-games, and full battle modes. In the Tanjeaverse, players will use their Jea NFTs to compete in mini-games that are similar to mobile classics like Flappy Bird, Candy Crush, Subway Surfers, etc. This mode primarily represents the way that players will obtain and train new Jeas for full battle mode.

In full battle mode – in development – players form teams composed of their trained Jeas to battle for resource nodes on in-game lands. Land owners entice players onto their lands to compete, and to share in its $TNJ resources and rewards. The land options are plentiful, and even more is yet to be discovered on Tanjea.

More details about battle mode, and how to own land in the game, will be released in coming weeks. For the latest updates from Tanjea you can visit the website, check out the whitepaper, and join the community on Twitter and Discord.

Coming Next

–       The next article will be released on our medium account and describe our Mythic Jeas (upcoming NFT sale).

–       BETA app Release details (TBD)

Follow us on Medium to read our next article. Click the Medium Hyperlink and on the right of the screen click the green follow button. You will be notified about our next article. Check the picture below.', 'https://i.ibb.co/dmCywWc/image.png', 'Gaming', '2022-09-18 15:50:35.917968');
INSERT INTO public.news (id, platform_id, author_id, link, title, content, image, category, created_on) VALUES (110, 37, NULL, 'https://bitcoinist.com/arker-the-legend-of-ohms-p2e-game-metaverse-is-evolving-into-an-immersive-3d-world/', 'Arker: The Legend of Ohm’s P2E Game Metaverse Is Evolving Into An Immersive 3D World', 'The blockchain-based NFT game Arker: The Legend of Ohm is evolving into something altogether more immersive and more playable, with the coming launch of a 3D version of its virtual fantasy world set to arrive later this year.

Arker is one of the most playable play-to-earn games around. Gamers take on the role of an NFT-based character and their pet, from where they embark on an epic quest to regain control of the dominion of Ohm. Thanks to the P2E model, users in Arker can obtain items, use them or sell them in the marketplace for financial rewards and take part in a series of player-vs-player or player-vs-environment battles, with daily missions and quests. Meanwhile the social element allows players to join up with a guild to participate in guild wars, play special events and more.
With a variety of different characters, runes, equipment, pets and an incredible PVP / PVE experience, Arker has already become one of the most popular blockchain games on Android, iOS and Windows devices. However, it’s about to get a lot better as the game metamorphosizes into a more immersive, 3D metaverse that will allow players to become a part of the gaming environment.

Powered by Unreal Engine 5, the 3D Version of Arker promises some incredible graphics. Players will be able to explore the entire city of Ohm at their leisure, creeping down dark streets, venturing inside buildings and visiting the busy marketplace to acquire new weapons, ready for newer and progressively more difficult challenges. Within this new 3D metaverse, players will able to meet their friends, chat with them, fight them in one-on-one battles or team up to complete different quests together. The possibilities are almost infinite and with the 3D version, there will be even more gaming options. New metagames will enable impromptu street football, parkour graffiti and more.
While the 3D version is aimed at gamers with more powerful computing hardware, the 2D version of the game is not being neglected in any way. It will continue to be accessible on mobile devices and older PCs, with cross-play ensuring that players can rejoin the game in both environments. So, for example, players can use their existing account the first time they play the 3D version, carrying all of their progress, upgrades and rewards into the new version – and vice versa.

There will however be additional game modes and content in the 3D version that’s not supported in the 2D world.


Arker said it’s still working on finalizing the details of its 3D world. It’s expecting to launch an Alpha test of the 3D environment later this year, when select players will be able to help iron out any bugs and issues ahead of a full launch sometime next year.

In the meantime Arker said it will continue to introduce updates to the 2D version, with improved graphics, a superior economic system and more game functionality promised.', 'https://i.ibb.co/hBxVjmy/image.png', 'Gaming', '2022-09-18 15:50:35.919752');
INSERT INTO public.news (id, platform_id, author_id, link, title, content, image, category, created_on) VALUES (111, 6, NULL, 'https://news.bitcoin.com/blockchain-gaming-publisher-and-web3-firm-animoca-brands-secures-110-million/?utm_source=coincodex&utm_medium=referral', 'Blockchain Gaming Publisher and Web3 Firm Animoca Brands Secures $110 Million', 'Blockchain gaming publisher Animoca Brands announced the company has raised $110 million in a funding round led by Temasek, Boyu Capital, and GGV Capital. The company raised the funds by issuing convertible notes to a handful of institutional investors.

Animoca Brands Raises $110 Million From Strategic Investors
Animoca Brands has raised another $110 million this month after the company secured $100 million from Temasek and others, at the end of August. The latest capital raise, announced on September 8, explains that Temasek, Boyu Capital, and GGV Capital led the round, and Mirae Asset Management and True Global Ventures participated as well.

The Hong Kong-based crypto gaming, NFT, and venture capital company Animoca Brands (AB) has managed to grow via a number of investment rounds amid the crypto winter. The company’s Japanese subsidiary, known as Animoca Brands KK (Animoca Brands Japan), raised $45 million from Japan’s largest bank MUFG, and Animoca Brands KK’s parent company AB.

In the latest announcement revealed on Thursday, Animoca Brands said Temasek, Boyu Capital, and GGV Capital will provide the firm with advice and the companies will give “input on [Animoca Brands’] business and capital plans.” The Web3 and blockchain gaming publisher plans to use the fresh capital for “strategic acquisitions, investments, and product development, secure licenses for popular intellectual properties.”

Furthermore, the announcement sent to Bitcoin.com News details that the firm aims to bolster the open metaverse. Yat Siu, the co-founder and executive chairman of Animoca Brands, detailed that the company has seen notable growth during the last 12 months.

“Animoca Brands has grown significantly as a company in the last year, and our new investors will contribute strategic advice and perspective as we build the world’s leading company furthering digital property rights in the Web3 industry,” Siu said in a statement.


Web3, NFT Markets, and Interest Slide, Report Says Company Mulls IPO
Non-fungible tokens (NFTs) and Web3 have seen a considerable dip in market value and overall interest in 2022 since the highs last year. During the past 30 days, NFT sales data from cryptoslam.io indicates monthly NFT sales hit $543.77 million but are down 20.05% lower than the month prior’s $680.12 million.

On Google Trends (GT), the search term “Web3” tapped the highest score of 100 during the week of December 19-25, 2021. Data for September 4-10, 2022, indicates that the “Web3” query has a worldwide GT score of 67 today. The search term “NFT” is even lower as the week of September 4-10 shows a score of approximately 14.

Animoca Brands has managed to stave off the downturn and secured $75 million in mid-July as the company has obtained a war chest of funds during the last two years. According to a report from Forbes, Animoca Brands is contemplating a possible initial public offering (IPO). Crunchbase data indicates the blockchain gaming publisher and Web3 company has raised $775.3 million since it was founded in 2014.', 'https://i.ibb.co/kykdgHQ/image.png', 'Gaming', '2022-09-18 15:50:35.921291');
INSERT INTO public.news (id, platform_id, author_id, link, title, content, image, category, created_on) VALUES (112, 27, NULL, 'https://cryptoslate.com/chainplay-report-reveals-3-in-4-investors-join-crypto-because-of-gamefi/', 'Chainplay report reveals 3 in 4 investors join crypto because of GameFi', 'Chainplay’s recent report, the State of GameFi, revealed that 3 in 4 investors join crypto to profit from GameFi, and 68% of existing GameFi investors joined the market within the last year.

A total of 2428 GameFi investors from around the globe joined Chainplay’s survey. A majority of them (51%) said the primary motivation for joining GameFi is making a profit, while 43% of female respondents said they invest in GameFi out of curiosity.

Findings on GameFi
In addition to the 51% who said they were after making a profit,  another 19% said they were just curious, 18% said they were interested in the gameplay, 8% said it was fun, and 4% said they joined because of great graphics.

On the other hand, GenZ appears as the most open to GameFi among all age groups. The survey reveals that GenZ investors allocate 52% of their net worth to GameFi projects. Almost all investors (81%) said they prioritized the fun factor over offering significant profits.

Declining profits
Even though GameFi plays a significant role in attracting investors to the field, the survey also reveals that the profit generated from GameFi has decreased in the last six months. While 89% of the participants admitted decreased profits, 62% said they lost more than half of their earnings from GameFi during the previous six months.

When the reasons for declining profits were asked of the participants, the majority (58%) of the respondents agreed that poor game economy design is the primary reason. Another 21% blamed the price decrease on the reward tokens, while 15% said that the blockchain gaming sector bubble has burst. Only 6% pointed to the declining Bitcoin performance due to the current winter market.

In addition to declining profits, the time investors spend on GameFi decreased compared to 2021. In 2022, the investors said they spent an average of 2.5 hours per day, 43% less than the 4.4 hours recorded in 2021.

Investor turn-offs
Participating investors identified five reasons that prevent them from participating in GameFi. The survey revealed that the investors’ biggest turn-off was criminal activities like rug pulls and Ponzi schemes, as 73% pointed out.

Another 42% said that sometimes quests are too repetitive and more like a chore than a game, while 33% said that the gameplay process was boring altogether. More than a quarter (29%) blamed poor profitability, and another 28% said crappy graphics prevented investors’ desire to invest in GameFi.

Key Drivers
Despite the declining profit and major investor turn-offs, survey participants could still identify four critical drivers for GameFi in 2022. Almost half (44%) said that the GameFi sector has grown because traditional gaming companies joined the field.

Another 28% said the appearance of AAA games pushed the sector upwards, while 15% and 13% said the growth of crypto and funding from institutions were the main reason, respectively.', 'https://i.ibb.co/mTDGjqZ/image.png', 'Gaming', '2022-09-18 15:50:35.924261');
INSERT INTO public.news (id, platform_id, author_id, link, title, content, image, category, created_on) VALUES (113, 15, NULL, 'https://zycrypto.com/nft-series-to-create-by-bib-meta-for-the-fifa-world-cup-2022/?utm_source=coincodex&utm_medium=referral', 'NFT Series to Create by BIB Meta for the FIFA World Cup 2022', 'Web technology has tremendously evolved over the years. The first iteration of the Web was Web 1.0, which harbored basic websites that provided a limited or static user experience. It is sometimes called the read-only Web.

Then came the second web version, Web 2.0, which provided a richer and more interactive user experience. It engaged with a larger audience and saw the flourishing of our present-day social media platforms like Twitter, Instagram, etcetera. Unlike web2, dominated by centralized platforms such as Google, Apple, and Facebook, Web3 will use blockchain, crypto, and NFTs to transfer power back to the internet community. Although there are elements of Web 3.0 currently available, it still has a long way to go before it reaches full realization. 

However, given the flourishing cryptocurrency market and decentralized applications, the market embodies a greater scope of the future and imagination. Notably, Web3 is becoming a phenomenal opportunity on par with Bitcoin – a cryptocurrency widely adopted globally, even in developing African societies where it has recorded the fastest adoption rate. But, there are still a few players in the Web 3 ecosystem, and even fewer are using it for extraordinary engagement. 

One of the companies doing the latter is BIB, a company building, operating and investing in Web 3 applications with its BIB Meta platform. Remarkably, BIB Meta will be the world’s first exchange with the Web3 ecosystem that is empowered by the BIB token and vice versa. This is one of its competitive advantages. 

Challenge Existing Practices in the Metaverse Industry
Many decentralized ecological projects lack direct access to traffic and funding. For example, DeFi, NFT, and GameFi are often independently operated in the ecosystem. So when users engage with the aforementioned, it is done through centralized trading platforms since deposit and withdrawal of assets are integral parts of trading. These processes could be cumbersome and strain the user experience. BIB Meta is combined with BIB Exchange to ease this stress so users can perform multiple actions on a decentralized system. 

Advertisement
    
The issue of privacy and security has always been a concern on Web 2.0. Many tech companies like Google and Amazon have already faced indictments for breaching users’ privacy to improve their products. It is good to know that Web3 has a natural advantage in protecting user privacy. For example, the BIB Meta Web3 allows users to join its ecosystem without identity verification. All that is required is a cryptocurrency digital wallet that links to BIB Meta, so users do not have to reveal personal private information such as email addresses, phone numbers, and others.

Just like every other digital innovation, Web 3 is vulnerable to cyber-attacks. Hence, BIB Meta is incorporating various security prompts in its operation to protect user assets so that users can confidently start their journey of Web3 with BIB.

Importantly, BIB is championing the convergence of NFTs, DeFi, and GameFi to resolve the lack of diversity in the decentralized Web3 ecosystem. BIB does this in many ways, and users can buy BIB tokens for minting NFT through token burning; NFT can be fused to upgrade its level, and a high-star NFT can be used as a community node ticket for users to stake and gain attractive profits. Also, its GameFi feature offers multi-dimensional gameplay such as match prediction, penalty shoot-out, NFT team competitions, collection achievements, etc.

Conclusively, BIB Exchange provides professional digital financial services to more than 2 million users worldwide with an average daily asset flow of more than USD 1 billion. Progressively, BIB is working dedicatedly to be a terminus a quo for users to set sail their voyage in Web3.

All Eyes on FIFA World Cup
As we count down to the start of the FIFA World Cup, Qatar will host the global showpiece from November 21 to December 18, 2022, which will be the organization’s 22nd match. Fans of all ages are eager to see their favourite teams in action vie for the championship.

During this year’s World Cup hype, BIB Meta will lead the way for Meta-Fi adoption by proceeding with a series of non-fungible tokens (NFTs) to commemorate the FIFA World Cup in 2022. The NFTs are available to mint, buy, sell, and trade on the platform.

According to BIB Meta’s white paper, users can purchase World Cup 2022 NFT Series representing real-world players and pit them against one another in various ways to win profits—part fantasy sports, part Magic the Gathering, part FIFA Ultimate Team on the blockchain. Moreover, the utility of BIB Meta’s World Cup 2022 NFT Series will allow users to connect with a global community and direct communicational channels with their favourite football players and access exclusive online and offline events.', 'https://i.ibb.co/y6hMD0R/image.png', 'Gaming , NFT', '2022-09-18 15:50:35.92557');
INSERT INTO public.news (id, platform_id, author_id, link, title, content, image, category, created_on) VALUES (115, 6, NULL, 'https://ambcrypto.com/tigon-mobile-p2e-game-bless-global-pre-registration-begins/?utm_source=coincodex&utm_medium=referral', 'Tigon Mobile P2E game Bless global pre-registration begins', 'Tigon Mobile, a subsidiary of Longtu Korea, recently revealed Bless Global, the world’s first AAA GameFi MMORPG that combines the Bless IP with P2E (Play to Earn) mechanisms. Bless Global’s pre-registration event begins on August 16, 2022. To participate in the event, players can visit the pre-registration page.

A previous Longtu Korea’s GameFi project, Yulgang Global, has been well received by over 5 million users since its release. In terms of development scale and economic model, Bless Global, the company’s most recent title, far outpaces Yulgang Global. As a result, the game is expected to attract a larger audience.

PocketBuff, a collaboration effort between Tigon Mobile and Game Space, will be the platform to support Bless Global’s NFT transactions in order to provide a seamless Web3 experience to game users. 

Since its release, the original PC game Bless, a medieval fantasy MMORPG developed by Neowiz, has received unanimous media praise for its stunning visual presentation. Bless Unleashed, a 2021 remake of the original Bless by Neowiz that was powered by UE4, became another global hit on major platforms. 

The original Bless has also gained popularity in Asia. Longtu Game, Longtu Korea’s parent company, is the developer and publisher of a recently released mobile game based on the Bless IP. Since its release on September 23, 2021, the game has ranked No.12 in the App Store’s top-grossing games. 

Bless Global, which has been optimized for mobile devices, also inherits the lore and story of the original Bless on PC. Through the use of grand stories and console-level graphics, this medieval fantasy game perfectly depicts a living magical world. The game features responsive battle feedback and an unrestricted mobile combat experience, providing all players with an immersive and epic adventure. Aside from battles, players can mine in-game resources and trade them with other players on the platform via the game’s P2E system. 

According to a Tigon Mobile spokesperson, Bless Global will be released on multiple platforms, including mobile and PC, to ensure user accessibility and enjoyment. Tigon Mobile says they are committed to expanding the platform’s ecosystem and further integrating the game’s features into the platform in terms of the P2E system. 

Pre-registration for Bless Global is now open. If you want to learn more about the game, go to the official website.', 'https://i.ibb.co/PCrV4hB/image.png', 'Gaming', '2022-09-18 15:50:35.928502');
INSERT INTO public.news (id, platform_id, author_id, link, title, content, image, category, created_on) VALUES (116, 32, NULL, 'https://www.cryptoglobe.com/latest/2022/08/metaverse-memecoin-tamadoge-raises-1-million-midway-through-its-beta-sale/?utm_source=coincodex&utm_medium=referral', 'Metaverse Memecoin Tamadoge Raises $1 Million Midway Through Its Beta Sale', 'Tamadoge, the P2E metaverse meme coin, has raised $1 million after just 12 days of its beta sale. The beta sale began on July 25 and is scheduled to run until August 31, but will finish before then when the $2 million hard cap is reached. Once the presale has concluded, the TAMA token will be listed on LBank exchange.

Unlike most so-called memecoins, Tamadoge has been designed to have real utility. It serves as the native currency of a games platform populated by virtual Tamadoge pets. Owners can mint, breed, and battle Tamadoges to level up. A mobile “battle” beta version of the app is scheduled for release in Q4 2022.

Tamadoge ultimately aims to raise $10 million to build out its play-to-earn GameFi ecosystem, with $2 million coming from the ongoing beta sale in which 1 TAMA can be bought for 0.01 USDT. ETH and fiat currency are also accepted for the beta sale. From September, the token price will rise by 25% as the second phase of the public sale commences. The current beta sale is effectively an open private sale, sometimes referred to as a “fair sale” because ordinary investors can take part with a minimum purchase of just $10 and no maximum. Half of the total supply of 2 billion TAMA tokens is available for purchase in the presale. Adding to Tamadoge’s fairness credentials, there is no vesting period for presale buyers and there is no private sale.

Tamadoge utilizes NFTs, each of which represents a virtual pet. Owners are tasked with nurturing their pets from birth to adulthood. As the Tamadoge grows, it develops greater strength and skills and as it moves up the leaderboard it can participate in battles with other pets. In the Tamadoge Store players can buy food, clothing, and cosmetic items for their pets. The more they look after their pet the more Dogepoint rewards they’ll earn.

Because of the use of NFTs, in-game assets are easily tradable as uniquely valued assets. Transaction fees from store sales go towards funding the Dogepoint rewards system. In addition, TAMA is deflationary which supports token price and the rewards pool is not dependent on speculation.



Tamadoge has been designed to make Play-to-Earn fun, having drawn lessons from the mistakes of early P2E games. Many of these were criticized for tedious and skill-less gameplay, which made earning rewards arduous and boring. Early next year Tamadoge will be looking to explore partnerships with existing metaverse platforms with a view to onboarding its virtual reality vision. It is envisaged that each pet will have a 3D avatar version that can be plugged into virtual worlds on a variety of existing platforms. Tamadoge believes that interoperability and extensibility are essential for metaverse success and the team is therefore developing an ecosystem that is platform-agnostic.', 'https://i.ibb.co/hZjkSvh/image.png', 'Gaming', '2022-09-18 15:50:35.931827');
INSERT INTO public.news (id, platform_id, author_id, link, title, content, image, category, created_on) VALUES (117, 27, NULL, 'https://news.bitcoin.com/microsoft-gives-grant-to-blockchain-based-web3-game-starheroes-as-historic-partnership-gets-underway/?utm_source=coincodex&utm_medium=referral', 'Microsoft Gives Grant To Blockchain-Based Web3 Game StarHeroes As Historic Partnership Gets Underway', 'PRESS RELEASE. In what many would agree is a groundbreaking achievement, StarHeroes recently obtained a Microsoft grant. As a result, the blockchain-based game now has access to Azure PlayFab, joining the legendary collection of games such as Forza Horizon, Sea of Thieves, and Tom Clancy’s Rainbow Six Siege.

This grant is also indicative of the change in the attitude of major companies as an increasing number of institutional businesses, firms, and large-scale organizations have continuously expressed a fundamental interest in incorporating blockchain technology into their daily routines, services, products, and features. This is also the very first time that a Web3 game has been given such a grant by a major corporation like Microsoft.

What sets StarHeroes apart?

StarHeroes is a third-person space shooter that features dynamic space battles in a fairly large world open to players for exploration and combat in two different multiplayer modes: ranking and adventure. The production also represents the Web3-based Play And Earn model, i.e. the one that allows players to earn real money in return for playing the game. It is simply because everyone can try their hand at this game without having to invest any money in it and, believe it or not, earn actual money just for playing at no cost to the players.

While it is true that a lot of elements of this production come in the form of virtual, unique tokens, this is not to say that there aren’t any Free To Play alternatives either. Once again, StarHeroes is a game meant for everyone and as a result, both blockchain players as well as traditional gamers have the opportunity to compete in the same game, with the focus being on skills, determination, strategy and players’ cooperation. In terms of actual gameplay, StarHeroes focuses on player rivalry and engagement, and both offensive and defensive units are available to build the most competitive team (fleet). In this way, the game offers a competitive and vibrant PvP scene, which is among the most popular kinds of gameplay that can be found today across numerous gaming genres.

A historic partnership

The creators recently discussed the aforementioned significant accomplishment, namely StarHeroes receiving a grant from a tech behemoth, Microsoft. This grant allows them to work with reputable studios like Ubisoft and Microsoft Studios. All this opens doors to great success as it creates many incredible opportunities for development – both for StarHeroes and its developers. Ubisoft in particular is known for making popular titles like ‘Prince of Persia’ and ‘Assassin’s Creed’ games, just to name a few.

Of course, while some players may remain skeptical of the Play And Earn and NFT-verse game concepts, StarHeroes nevertheless shows a lot of promise in many ways. Naturally, big-time companies must think this too, since Microsoft has acknowledged the game and its potential. Perhaps more importantly, though, the partnership with Microsoft will open the doors for blockchain gaming in general, with the goal being that numerous other titles would get a similar chance to work with major companies in the future.

What kind of potential does StarHeroes have for the future?

The game has been in development for more than two years, and now StarHeroes is finally gaining some considerable traction and is rapidly making all the headlines in both crypto as well as traditional media. As such, the development team includes various former CD Projekt Red employees who worked on games like ‘The Witcher 3: Wild Hunt’ and ‘Cyberpunk 2077’, so there is every chance that the two years spent developing StarHeroes were well spent.

Generally speaking, StarHeroes founders also see enormous potential in blockchain-based eSports games. Even if these are not yet mainstream, StarHeroes could be a good start for blockchain games in terms of being able to attract the attention of traditional players. With that in mind, StarHeroes gameplay has been modified to the organization of eSports tournaments, which is also the direction the developers intend to take given the sheer popularity and success of the eSports industry including games like ‘League of Legends’, ‘Starcraft’ and ‘DOTA 2’.

Put simply, StarHeroes has the potential to not only be successful in its own right, but also to lead the charge for other blockchain-based games as well.

About StarHeroes

StarHeroes is a blockchain-based 3rd person space shooter powered by collectible NFTs that features dynamic space battles alongside a massive world open to exploration and combat via two different multiplayer modes, namely adventure and ranking. Players can build their fleets and explore the cosmos while taking part in epic space battles.

The Polish production also exemplifies the Web3-based Play And Earn model, which enables gamers to earn real money in exchange for playing the game. Once again, the importance of the partnership with Microsoft cannot be understated, as this is an industry first and it really exemplifies the potential that StarHeroes possesses.', 'https://i.ibb.co/xXT8Zqn/image.png', 'Gaming', '2022-09-18 15:50:35.934919');
INSERT INTO public.news (id, platform_id, author_id, link, title, content, image, category, created_on) VALUES (118, 2, NULL, 'https://www.globenewswire.com/news-release/2022/08/03/2491647/0/en/Gold-Rush-Finance-Launches-as-a-Seamless-BNB-Mining-Platform.html?utm_source=coincodex&utm_medium=referral', 'Gold Rush Finance Launches as a Seamless BNB Mining Platform', 'Gold Rush Finance an NFT Game-Fi project aimed at giving players both gaming and passive income launches as a seamless BNB mining platform. The Game-Fi industry has transitioned over the years, with most of the revolutionary changes taking place in the few months. New features have been introduced to the space making it one of the most sought-after domains in the crypto space. The excitement of gaming coupled with the rewarding protocols has got the gaming community hooked! And with the entry of Gold Rush Finance, a thrilling BNB mining game built on the Binance Smart Chain, things are about to become more exciting.


Gold Rush Finance is an NFT Game-Fi project based in the Wild West that allows users to mine BNB and earn the platform’s native, $GRUSH tokens. Also, there are passive rewards up for grabs. These have gained popularity in recent years and have become a source of stable income for both players and miners alike. Passive rewards, in general, can be earned simply by acquiring the requisite assets, even if the users are not actively involved.

To mine the BNB tokens, the user has to assemble an optimal crew and send them on expeditions in the wild. There are three crew classes in the form of the NFTs that one can acquire to mine BNB tokens and earn $GRUSH rewards. Miners, as the name suggests, are the ones that actually do the job. They are responsible for mining gold. Next, there are the Gunmen, who play the role of defenders. These protect the farmers and the gold mined on treasure hunts. The last class is Farmers, who work on the $GRUSH farms. The More the number of Farmer NFTs users have working, the higher the $GRUSH tokens they acquire! It constitutes the passive income part of the ecosystem.

Gold Rush Finance ensures long-term sustainability and viability with three critical aspects

After analyzing NFT-based gaming projects released in the last couple of years, Gold Rush Finance identified the problems that plagued these and, in some cases, led to their downfall. The Game-Fi platform then came up with three central pillars to ensure a more extensive user base, steady returns, and higher rewards.

BNB Rewards Oracle

Gold Rush Finance hands out rewards in the form of its native $GRUSH tokens, though the user earns them in $BNB. It ensures stability and reduced volatility. In several P2E (Play to Earn) games, users may have noticed that the rewards are inconsistent and depend on the market dynamics. For instance, a player earns $100 in rewards but, due to a sudden crash in the market, might only receive $50. This particular factor has long kept the regular gaming community hesitant about De-Fi gaming.

Employing the auto-swap feature to convert BNB rewards into $GRUSH tokens when the user claims it ensures increased stability. So, whatever number of BNB tokens earned while playing Gold Rush Finance, the exact value is handed out in $GRUSH.

Deflationary mechanics of NFTs

Burning of cryptocurrencies is often heard, but Gold Rush Finance has introduced the deflationary mechanics in NFTs. Here, when the user sends worker NFTs on a mission to mine BNB, there is a chance that one of these might die, or in blockchain terms, the particular NFT is burned. Though, the chances of it can be reduced by increasing the crew’s gunpowder.

This regular burning of NFTs keeps the minting process active. It also encourages players to utilize the $GRUSH tokens in-game and boost the project’s economy, thus directly translating into increased rewards to the community.

Enhanced ease of accessibility and simple gameplay

Gold Rush Finance is kept simple to allow maximum engagement. Even those unfamiliar with the Game-Fi space won''t have much trouble understanding the game''s intricacies.

Besides, even users who can''t spare much time stand a chance to earn decent rewards through active and passive means.

Gold Rush Finance has so well interlinked the various components in the game that every part of it supports the other, and the economy functions in a loop. The optimal distribution of collected taxes amongst Mining reward pools, Liquidity pools, and GRUSH Farm rewards pools ensures higher returns to players. 

Also, as opposed to most Game-Fi projects, Gold Rush Finance has not reserved any team tokens to keep the native token’s price chart stable and deliver higher returns to players.

Gold Rush Finance has been a hit amongst the gaming community in a short while. With thrilling gameplay, exciting rewards, and a closed loop economy, the project is set to capture the Game-Fi space in the coming days. So, if anyone hasn''t yet, try Gold Rush Finance today! ', 'https://i.ibb.co/0tqy6fs/image.png', 'Gaming', '2022-09-18 15:50:35.936631');
INSERT INTO public.news (id, platform_id, author_id, link, title, content, image, category, created_on) VALUES (119, 10, NULL, 'https://cointelegraph.com/news/gamefi-industry-to-see-2-8-billion-valuation-in-six-years?utm_source=coincodex&utm_medium=referral', 'GameFi industry to see $2.8 billion valuation in six years', 'A recent report from Absolute Reports projects massive growth for the GameFi industry within the next six years. 

The research has the play-to-earn nonfungible token (NFT) game industry with an estimated value of $2.8 billion within the time span from 2022–2028. Moreover, the compound annual growth rate of the industry is 20.4% in the same six-year period.

This forecast comes in the midst of a raging crypto bear market, which leaves little room for projects and industries with no substance. The report highlights the leaders in this field of play-to-earn game development which include Sky Mavis, Dapper Labs, Decentraland, Immutable and The Sandbox.

Furthermore, it breaks down GameFi by type, console and market region.

Though it’s not only the report which points to a favorable future for the Web3 gaming industry, as research from Cointelegraph also highlights interest from venture capitalist investors during the down season. For example, Animoca Brands recently acquired three companies within the GameFi space.

Another analysis shows an uptick in users of blockchain-based games despite market conditions. Both WAX and Binance Smart Chain saw steady community numbers with 2.94 million and 2.49 million users.

During market downturns, projects that remain carry with them a level of apparent utility. Blockchain-based games are a simple, accessible, and engaging way for this to be seen. It is for this reason that gaming has always acted as a gateway for new users to interact with the crypto space.

However, as Web3 continues its development, experts highlight that GameFi will need to adapt as well. In a recent conversation with the founders of Crypto Raiders, they urged developers to prioritize fun over “financialization” when continuing to develop platforms.', 'https://i.ibb.co/DrWfvDp/image.png', 'Gaming', '2022-09-18 15:50:35.937937');
INSERT INTO public.news (id, platform_id, author_id, link, title, content, image, category, created_on) VALUES (120, 12, NULL, 'https://www.cryptonewsz.com/minecraft-and-everscale-partner-for-evercraft-gamefi-pilot/?utm_source=coincodex&utm_medium=referral', 'Minecraft and Everscale Partner for Evercraft GameFi Pilot', 'Minecraft and Everscale blockchain finally decided to take the plunge and join hands and forces for all ambitious and futuristic reasons. The resultant factor had to be creating something spectacular but expected. The online gaming world has delivered the Evercraft GameFi Pilot, which also gives a glimpse into the future of GameFi and Metaverse SDK. This also raises the expectations for what more is to come.

At this point, it becomes imperative to split the two entities to understand how exactly the tie-up works wonders for the online gaming arena. 

An online game that has reached some sort of a pinnacle in terms of popularity and sheer success is Minecraft. To prove the point is simply acknowledging that there are over 126 million active users, which is a staggering figure to consider in the online gaming world. Additionally, there have been an awe-inspiring 600 copies successfully sold. The game sees a moving crowd of 200,000 players at any given time daily, and that by itself speaks volumes. 

Everscale, on the other hand, is one of the world’s most technically updated blockchain networks. It gainfully encompasses all the existing very latest and state-of-the-art innovations and conceptualizations in the realm of blockchains. It also wears the hat of providing aspects that no other blockchain has fathomed yet. With Everscale, this converts into reality because of its super flexible nature, which allows it to enter the decentralized hub and connect with numerous other blockchains and resource-based applications, such as GameFi, DeFi, and some other supply chains. Everscale is also able to make additions to new nodes and shards with the help of its high-powered technology in multithreading and sharding. 

In all, considering the revolutionary potential of both the lead players in this scenario, Everscale blockchain and Minecraft, the online game, it would not be difficult for one to gauge the huge impact Evercraft GameFi Pilot will have on every individual player of the online gaming world and that is only for the present. This is bound to open doors others have not even imagined treading.', 'https://i.ibb.co/nzcqgQY/image.png', 'Gaming', '2022-09-18 15:50:35.940833');
INSERT INTO public.news (id, platform_id, author_id, link, title, content, image, category, created_on) VALUES (121, 19, NULL, 'https://www.cryptonewsz.com/mystic-treasure-and-ss-ventures-announce-partnership/', 'Mystic Treasure and SS Ventures Announce Partnership', 'Mystic Treasure has published an official announcement for its strategic partnership with SS Ventures intending to expand the crypto network. Additionally, both partners look to increase marketing promotion, brand awareness, and user exposure.

An overall objective is to create a win-win situation for communities from both sides, including partners, investors, and other members. Mystic Treasure has expressed its confidence in the partnership with SS Ventures to provide a better gaming experience and serve various benefits to users. 

The gaming community is dynamic, where things change at a higher speed. While it is good that the industry evolves faster, it is equally scary to consider that experience takes a back seat only to meet the demands quickly.

However, with a new strategic partnership in place, the community can be assured that there will be no compromise regarding their experience. A balance between the two would be one of the top priorities under the strategic partnership. The strategic partnership is being looked into as a long-term relationship. Assuming it holds true, the community will surely have tons of things to look forward to.

SS Ventures became a late entrant by marking its presence in late 2020, a time when it saw the opportunity to assist a large number of projects by getting on board as an investor. All the projects related to the crypto industry with a resolution that they will generate handsome returns in the time to come. Its multi-channel ecosystem has more than 30,000 members and many major strategic partners.

Mystic Treasure is a Play-to-Earn RPG adventure game that is entirely decentralized in its operations. Mystic Treasure features advanced simulation where players have the power to customize their virtual world as per their experiences and needs.

Experiences at Mystic Treasure include a treasure hunt, puzzle solving, constructing houses, and crafting survival items in the game, to mention a few. An overall experience is worth noting and can only be grasped practically.

The game has been developed by top developers and experts belonging to the blockchain industry. The marketplace is one of Mystic Treasure’s key features, allowing players to trade their NFTs items such as a house, weapons, vehicle, and fashion.

Players earn in the virtual world by digging a treasure for up to 30 minutes. A maximum of five treasures can be dug by a player, or the player can choose to steal the treasure of another player five times every day. A treasure digging location can be found through the treasure map given to a player daily, along with a random rarity.

Maps can evolve from low-level rarity to high-level rarity. The location of a treasure is confirmed after players decode the map successfully. Players can tailor characters based on gender, color, dressing sense, and other categories. Its token MYT is backed by BNB Chain and is a BEP20 token type.', 'https://i.ibb.co/9YjpbcZ/image.png', 'Gaming', '2022-09-18 15:50:35.94228');
INSERT INTO public.news (id, platform_id, author_id, link, title, content, image, category, created_on) VALUES (122, 29, NULL, 'https://blockworks.co/sec-plans-new-office-of-crypto-assets-to-find-soft-targets/', 'SEC Plans New ‘Office of Crypto Assets’ to Find Soft Targets', 'The US Securities and Exchange Commission (SEC) wants to sharpen its focus on crypto via a new office designed to scrutinize company filings.

Its Office of Crypto Assets, under the Division of Corporation Finance’s Disclosure Review Program (DRP), is expected to streamline SEC reviews of documents submitted by crypto firms by folding them all under one roof, according to a statement on Friday.

The regulator has moved to enhance its purview over the digital asset industry this year. A Crypto Assets and Cyber Unit was brought to life in May under the agency’s Division of Enforcement — a renaming from the regulator’s long-standing Cyber Unit.

At the time, the SEC shared plans to boost its crypto-focused headcount by 50, directing more resources to combat those harming investors, Chair Gary Gensler said.

Indeed, the SEC has made concerted efforts to assert itself as the primary government agency tasked with regulating most digital assets — sans cryptocurrencies like bitcoin, which Gensler last week reaffirmed should fall under the jurisdiction of the Commodities Futures Trading Commission (CFTC).  

“The SEC is multiplying its efforts to continue regulating by enforcement rather than engage in transparent rulemaking,” Ian Corp, commercial litigator and crypto advisor at law firm Agentis told Blockworks in an email.

The SEC has already brought several lawsuit against industry participants. It sued Ripple Labs, the company behind XRP, in December 2020, and more recently hit a former Coinbase employee Ishan Wahi with insider trading allegations — the latter of which could set precedent for further crypto enforcements as it concerns nine tokens deemed securities by the regulator. 

Both suits have arisen under the SEC’s banner of investor protections. But rather than directly advising which tokens and organizations are subject to SEC law, the agency is flagging intention to scan incoming filings for compliance mishaps to make an example of easy-to-target projects, Corp said.

An unrelated Office of Industrial Applications and Services, which will oversee non-pharma, non-biotech and non-medicinal products companies, will also be established. Both offices are slated for later in the quarter, the SEC said.

As for the CFTC, bipartisan US senators introduced a bill last month which, if passed, would invest the regulator with greater powers to oversee the industry’s two largest cryptos, bitcoin and ether. 

Though, with regard to the rest of the digital asset sector, including DeFi, Gensler is still showing firm belief that his agency should hold the keys.', 'https://i.ibb.co/smtfcVT/image.png', 'Regulations', '2022-09-18 15:50:35.943849');
INSERT INTO public.news (id, platform_id, author_id, link, title, content, image, category, created_on) VALUES (123, 24, NULL, 'https://ambcrypto.com/sec-v-ripple-has-the-secs-latest-filing-put-some-life-into-this-legal-battle/', 'SEC v Ripple: Has the SEC’s latest filing put some life into this legal battle', 'The legal battle between the American regulators and Ripple has been quiet for a couple of days now. However, there has been an uptick in activity in the matter of late.

The ever-reliable lawyer James K. Filan reports that the SEC has filed a latest motion. In this latest turn, the SEC is attempting to seal portions of the parties’ replies to the Exclusion Motions.


With neither parties willing to back down, the infamous crypto battle continues to go on.

The show (must) go on
The SEC has set its sights on the 30 August reply briefs and is attempting to censor parts of it. The briefs contain information identifying the SEC’s expert witnesses which can have unmitigated consequences for those involved.

Those redactions are appropriate for the reasons set forth in the SEC’s 22 July Motion to seal certain portions of the Exclusion Motions. The court previously granted a similar application to redact the names of two SEC Experts. The court also held that such a redaction is “narrowly tailored to serve interests of witness safety.”

The defendants (Ripple) objected to the SEC’s 22 July sealing motion. However the former did not file a response to the SEC’s motion to seal the Exclusion Motion response.

The judgement now rests in the hands of Judge Torres as the battle rages on into another month. Recently, the parties filed a joint proposal which would govern sealing issues relating to the upcoming summary judgment motions to be filed in this case.

“Under the joint proposal, the Parties would further be required to file public, redacted versions of all documents within 21 days of the Court’s rulings on the omnibus sealing motions.”

There seems to be no immediate to this case now as the battle rages on. The latest motion is a vivid example of this.', 'https://i.ibb.co/1KQ4JcL/image.png', 'Regulations', '2022-09-18 15:50:35.945461');
INSERT INTO public.news (id, platform_id, author_id, link, title, content, image, category, created_on) VALUES (124, 24, NULL, 'https://cryptopotato.com/white-house-report-recommends-banning-bitcoin-mining-to-slash-ghg-emissions/', 'White House Report Recommends Banning Bitcoin Mining to Slash GHG Emissions', 'The White House recommended “eliminating” the use of energy-intensive consensus methods if other measures fail to reduce crypto carbon emissions. 

The White House Office of Science and Technology Policy (OSTP) has released a report examining the connection between distributed ledger technologies (DLT) and climate change. 

The office determined that crypto’s relationship with the environment is a mixed bag. While acknowledging the positive impact that mining can have on grid stability and renewable development, it can also exacerbate “environmental justice issues” due to greenhouse gas (GHG) emissions and other factors. 

As such, the office suggested that the administration may have to consider banning the use of proof of work as a consensus mechanism.

Crypto: An Environmental Threat?
The report – titled “Climate and Energy Implications of Crypto Assets in the United States” – is a response to President Biden’s crypto executive order in March. The president directed over 20 administrative figures and agency heads to submit research reports and recommendations on various crypto-related topics to help foster responsible industry regulation. 

“Crypto-assets could hinder broader efforts to achieve net-zero carbon pollution consistent with U.S. climate commitments and goals,” stated the OSTP in the report. 

In particular, it stated that blockchains using a proof of work (POW) consensus mechanism – especially Bitcoin – use a “significant amount” of electricity and contribute to air, water, and noise pollution in some areas. In total, Bitcoin and other large-cap POW networks result in 0.3% of global annual GHG emissions. 

As such, the report suggests that federal government action is required to ensure the broad adoption and responsible development of digital assets. One recommendation is that federal agencies collaborate with states and the crypto industry to develop environmental performance standards for the use and development of crypto-asset technologies. 

These standards would target low energy usage, low water usage, low noise generation, and clean energy use by mining operators. However, should these methods prove ineffective, the OSTP suggested using executive or congressional action. 

“Congress might consider legislation, to limit or eliminate the use of high energy intensity consensus mechanisms for crypto-asset mining.” it read. 

Is Proof of Stake the Answer?
CFTC Chairman Rostin Benham has previously suggested creating incentives to transition the Bitcoin network to a Proof of Stake (POS) consensus mechanism. In March, Ripple co-founder Chris Larsen funded a $5 million campaign to empower the transition. 

However, Bitcoiners have long opposed such a change, claiming that POW is needed to maintain a sufficiently decentralized network. 

Ethereum disagrees, however. The network is set to undergo a similar transition next week, which is expected to reduce network energy consumption by 99.5%. 

SPECIAL OFFER (Sponsored)
Binance Free $100 (Exclusive): Use this link to register and receive $100 free and 10% off fees on Binance Futures first month (terms).

PrimeXBT Special Offer: Use this link to register & enter POTATO50 code to receive up to $7,000 on your deposits.', 'https://i.ibb.co/NjSRvjZ/image.png', 'Regulations , Bitcoin', '2022-09-18 15:50:35.946908');
INSERT INTO public.news (id, platform_id, author_id, link, title, content, image, category, created_on) VALUES (125, 41, NULL, 'https://bitcoinist.com/indian-sitharaman-to-crypto-regulation-with-imf/', 'Indian FM Sitharaman To Discuss Crypto Regulation With IMF Chief', 'Nirmala Sitharaman, finance minister of India discussed the significance of crypto regulation with the managing director of the International Monetary Fund (IMF) Kristalina Georgieva.

India has long focussed on the need for regulation along with global coordination with a mutually agreed approach to this issue.
Sitharaman also mentioned that the IMF should take lead in terms of ensuring proper regulation in this sector.

IMF managing director, Kristalian Georgieva and India’s FM has had a discussion regarding a wide variety of issues which included India’s incoming G20 presidency and IMF’s support.

India continues to hold a bright spot in the global economy although there is global geopolitical uncertainty as mentioned by the IMF MD.
India has also introduced a 30 per cent tax on crypto assets effective April 1. Along with that, India has also imposed a 1 per cent tax deducted at source (TDS) on crypto.

This TDS will have to be paid on transactions above Rs 10,000 (USD 125 approximately) and this shall be applicable in the hands of those receiving from July 1.
Shared Concerns Regarding Crypto
Finance Minister and IMF Chief have the same concerns regarding the risks that cryptocurrencies pose.
It also poses risks to the global economy and also cross-border effects given the geo-political circumstances along with tighter financial conditions.
The Finance Minister had also emphasised that there needs to be energy security.
India wants to focus on the importance of coordinated policy measures along with multilateralism for gathering adequate resources for climate action.
It is so because dedicated funds by developed economies are yet to be utilised as they have not been made available.
India’s FM also states that carbon pricing might not have been a feasible policy tool for climate action.
Concerns Regarding Terror Financing And Money Laundering
Sitharaman in the meeting of IMF and World Bank in April has called for a framework globally which could regulate cryptocurrencies.

Crypto carries great risks pertaining to money laundering and terror financing for all other countries too.

It is natural that no country can handle such risks alone and there needs to be regulation from all different countries coming together on this matter.

The Financial Minister also agreed that there must be a timely conclusion of the 16th general review of quotas that would address inequity and imbalance within the global economy.

Georgieva had also agreed that for IMF to remain relevant, the general review of quotas has to be reached to reflect the changed status of other market economies across the whole world.

IMF quotas are the primary source of IMF funds and that determines voting shares. Quotas are reviewed every five years however there can be delays in the same.

India’s quota is 2.76%, China has 6.41% and the U.S has 17.6%. Quotas are to be decided depending on a country’s GDP, economic openness, economic variability along with international reserves.
', 'https://i.ibb.co/xqJv8Cp/image.png', 'Regulations', '2022-09-18 15:50:35.9485');
INSERT INTO public.news (id, platform_id, author_id, link, title, content, image, category, created_on) VALUES (126, 20, NULL, 'https://www.bsc.news/post/sec-chair-calls-on-crypto-companies-to-work-with-sec-on-compliance', 'SEC Chair Calls on Crypto Companies to Work With SEC on Compliance', 'SEC wants to regulate crypto as securities. Chairman Gary Gensler issued a strong statement telling companies to comply now.

SEC Says a Majority of Crypto Tokens Are Securities
Securities and Exchange Commission Chairman Gary Gensler said in a statement that he has instructed staff to work with cryptocurrency projects to get their tokens registered and regulated. He said that while many are waiting for more guidance on the regulatory status of crypto tokens, the SEC has been very clear about this through various reports and actions.

Gensler said he thinks only a handful of tokens do not qualify as securities. He added that his predecessor Jay Clayton also often spoke about the applicability of the securities laws in the crypto space.

“In general, the investing public is buying or selling crypto security tokens because they’re expecting profits derived from the efforts of others in a common enterprise. Without prejudging any one token, most crypto tokens are investment contracts under the Howey Test,” Gensler said.
Investors deserve to be protected against fraud and manipulation, and to deal with fully legal entities that provide full disclosure, he said. The regulator has been fairly clear in telling crypto companies that they will need to comply with SEC regulatory requirements. The SEC also announced that it is forming a new office for cryptocurrency filings.

On the question of crypto intermediaries like CEXs or DEXs, Gensler said they should be regulated as brokers/dealers. Crypto investors deserve to protected against any fraud and misconduct, Gensler said.

Gensler urged all crypto projects that fall under these categories to work with the SEC on compliance and registration.

“For those who are starting up in this space now — either from traditional finance or as crypto-native companies — work with us on compliance from the beginning. It’s far less costly to do so from the outset,” concluded the SEC Chairman’s statement.', 'https://i.ibb.co/9q657LY/image.png', 'Regulations', '2022-09-18 15:50:35.951662');
INSERT INTO public.news (id, platform_id, author_id, link, title, content, image, category, created_on) VALUES (127, 38, NULL, 'https://blockworks.co/solana-investor-sues-project-insiders-claims-network-highly-centralized/', 'Solana Investor Sues Project Insiders, Claims Network Is ‘Highly Centralized’', 'A Solana investor has filed a class action lawsuit against key parties in the Solana ecosystem for allegedly making misleading statements and profiting from selling unregistered securities to retail customers.

The plaintiff, Mark Young, filed the suit on July 1 against Solana Labs, Solana Foundation, Solana CEO Anatoly Yakovenko, crypto investment firm Multicoin Capital and its co-founder Kyle Samani, as well as trading platform FalconX. 

“Defendants made enormous profits through the sale of solana (SOL) securities to retail investors in the United States, in violation of the registration provisions of federal and state securities laws, and the investors have suffered enormous losses,” Young, who said he bought SOL tokens in 2021, wrote.

The lawsuit was filed on behalf of investors who purchased Solana tokens between March 24, 2020 and the filing date, he said.

Solana Labs and FalconX declined to comment. Multicoin Capital didn’t return Blockworks’ request for comment. Yakovenko and Samani could not be reached.

Court documents show Young has alleged the defendants spent exorbitant sums to promote SOL in the US since April 2020, which supposedly boosted its price to $258 per token and market value to $77 billion as of Nov. 5, 2021.

“These promotional efforts took SOL securities from a relatively obscure crypto-asset to one of the top crypto-assets in the world,” Young wrote.

“Samani and Multicoin continuously flogged SOL securities, inflating its market price from below a dollar to hundreds of dollars, persisting in their promotional efforts even after it was clear that Solana had serious outages and technical issues,” he added, referring to multiple snafus over the past year, including an outage in September 2021 that lasted more than 10 hours.

The plaintiff also said the defendants made misleading statements regarding the supply and the decentralized nature of SOL and claimed company insiders held a substantial percentage of tokens.

“As of May 2021, insiders held 48% of the SOL supply. The network is thus highly centralized,” Young claimed.

He alleged Yakovenko raised private funding in multiple rounds by selling SOL securities at low prices. And in one such “seed sale,” Solana sold “the future rights” to nearly 80 million SOL tokens for $3.17 million ($0.04 per token) in April 2018, the filing claims. It adds that the defendants chose to sell only a small percentage of its token supply (less than 2%) in its 2020 initial coin offering, which priced SOL tokens at $0.22, according to CryptoRank.

“Defendants did this to ensure they had de facto control over the Solana blockchain and to artificially drive down the available supply of SOL securities through coordination amongst themselves,” the plaintiff wrote.

Young also said Multicoin profited from offloading millions of SOL tokens onto retail investors, while using over-the-counter (OTC) trading desks such as FalconX as a broker.

Solana’s SOL is down 78% so far this year and has fallen 12% in the last month to $36.85, data from Blockworks Research shows. The token’s losses in June were spurred by blockchain downtime that prevented transactions from being validated for over four hours.

Young’s case, filed in the Northern District of California, is represented by law firms Roche Freedman and Schneider Wallace. 

Roche Freedman has filed numerous lawsuits against other cryptocurrency firms in the last year, including crypto exchanges Binance US and KuCoin, alleging execution of illegal trades or violation of securities law in relation to tokens such as EOS, TRX and Terraform Labs’ failed stablecoin UST.

In December, Roche Freedman also secured a $100 million verdict in a lawsuit against self-proclaimed Bitcoin creator Craig Wright.', 'https://i.ibb.co/GWMVFF6/image.png', 'Regulations', '2022-09-18 15:50:35.95489');
INSERT INTO public.news (id, platform_id, author_id, link, title, content, image, category, created_on) VALUES (128, 9, NULL, 'https://news.bitcoin.com/uruguay-introduces-cryptocurrency-law-in-parliament/', 'Uruguay Introduces Cryptocurrency Law in Parliament', 'A new cryptocurrency bill project was introduced by the executive power to the Parliament of Uruguay. The bill seeks to clarify how crypto assets will be regulated in the country, giving the Central Bank of Uruguay competence over cryptocurrency assets, modifying its organic charter, and introducing the Superintendence of Financial Services as the organization to oversee virtual asset service providers.

Uruguayan Executive Power Proposes Crypto Bill
The executive power in Uruguay has presented a bill project to the parliament of the country with the objective of clarifying how cryptocurrency asset-related activities will be regulated. This, if approved, will be the first bill to address the gray area in which cryptocurrency exchanges and virtual asset service providers operate in the country.

The proposed bill modifies the organic charter of the Central Bank of Uruguay and introduces the Superintendence of Financial Services, an organization part of the central bank, as the main overseer of the activities of virtual asset service providers. In this sense, the document establishes that custody providers, companies that facilitate the purchase and exchange of virtual assets, and third parties that lend financial services related to the offer or sale of a virtual asset will be considered part of this class.

However, the bill introduces another class of organization as “virtual asset issuer,” defining it as a platform that issues any type of virtual asset included within the regulatory perimeter or requests admission of regulated virtual assets on a virtual asset trading platform.
Central Bank of Uruguay Will Be Main Crypto Watchdog
Like other law projects in the area that introduce institutions as the main crypto watchdogs, the proposed bill puts all supervision related to these tasks in the hands of the country’s central bank. The document declares:

With the proposed modifications, both the previously regulated subjects and the newly incorporated entities that operate with virtual assets will be subject to the supervision and control powers of the Central Bank of Uruguay.

The text also makes reference to virtual asset securities, which are referred to as the digital counterparts of the already known financial securities.

There have been previous attempts at legalizing crypto as a payment method in the country. A cryptocurrency bill project presented by Senator Juan Sartori last year aimed to achieve this goal. Also, in August, the Central Bank of Uruguay issued a summons to Binance due to its offering of savings-oriented cryptocurrency-based financial products', 'https://i.ibb.co/VS3BZCF/image.png', 'Regulations', '2022-09-18 15:50:35.956329');
INSERT INTO public.news (id, platform_id, author_id, link, title, content, image, category, created_on) VALUES (129, 20, NULL, 'https://crypto.news/a-careful-look-at-crypto-regulations-in-the-united-states/', 'A Careful Look at Crypto Regulations in The United States', 'Globally, government officials and financial regulators have become increasingly interested in cryptocurrencies and blockchain technology. A significant factor driving this interest is the widespread adoption and usage of numerous cryptocurrencies-related services.

The United States is the largest digital market in the world hosting such giants of the crypto industry like Coinbase. No wonder the number of people who are interested in cryptocurrency is constantly growing there, whether just having it or using it for their business activity.

Due to the sensitive nature of the crypto space, governments and financial regulators of the US are gradually enacting new laws to regulate platforms and services related to cryptocurrencies.

US Cryptocurrency Laws & Regulations
Although not classified as legal tender, Bitcoin and many other cryptocurrencies are considered money in the US. Despite being viewed as legal currencies, digital assets are also classified as commodities, properties, and securities. 

Different financial regulators assign these classifications to cryptocurrencies in the US. Additionally, all of these classifications are done to ensure cryptocurrencies fit into existing financial regulations in the US.

Due to the unique nature of cryptocurrencies, these classifications gave birth to many new regulations, which are sometimes at odds with each other. However, there may be a unified view of cryptocurrencies in the future with the recent executive order on cryptocurrency signed by incumbent US President Joe Biden.

Current Crypto Regulators In The United States
Numerous financial regulators in the US provide guidelines for using crypto-related products and services. These regulators also play a crucial role in ensuring crypto platforms operating in the US comply with current financial laws. Let us briefly consider some of the most prominent crypto regulators in the United States.

The Internal Revenue Service (IRS)
The Internal Revenue Service (IRS) considers cryptocurrencies to be property. This classification empowers the IRS to treat cryptocurrencies as taxable property under the Federal Income Tax law.

Cryptocurrency transactions for individuals and businesses are governed by IRB 2014-16, IRS Notice 2014-21. Due to these guidelines, individuals and businesses resident in the US must report their crypto transactions for tax purposes.

The Securities and Exchange Commission (SEC)
The SEC classifies digital assets as securities. Although the SEC has not enacted new laws, this regulator expects all crypto platforms operating within the US to conform to existing securities laws.

The SEC has directed enforcement actions against several centralized and decentralized crypto platforms based on the existing securities laws. For example, in a recent settlement with the SEC, BlockFi Lending LLC paid $100 million for failing to register its Interest Account as a security in 32 states in the US.

A settlement with DeFi Protocol Money Market over the sale of digital assets that are not classified as securities was also reached in August 2021 by the SEC. At the time, the project’s founders were required to pay back $12.8 million from the token sale to platform users. Additionally, the founders each paid a $125,000 fine to the SEC.

Financial Crimes Enforcement Network (FinCEN)
FinCEN is another prominent authority in the US that plays the most essential role when it comes to cryptocurrency regulation. As an agency of the US Treasury Department, FinCEN is responsible for preventing and punishing money laundering and other financial crimes.

Through its guidance issued on March 18, 2013, FinCEN now utilizes the Banking Secrecy Act (BSA) to regulate the activities of crypto platforms. The guidance specifies that virtual money regulators can be classified as money transmitters.

Thus, such platforms fall under the purview of FinCEN. Currently, crypto exchanges operating in the United States are registered and regulated by FinCEN.

Apart from the three bodies listed above, several other financial regulators play a vital role in regulating cryptocurrencies in the US. These include agencies like the Commodities Futures Trading Commission (CFTC) and the Office of the Comptroller of Currency (OCC).

However, despite their best efforts, there are still numerous regulation gaps in the US crypto space. For example, the crypto gambling industry currently lacks a solid legislative framework. Though there are fifteen states in the US where online gambling is legal, so many crypto casinos provide local players with all the benefits cryptocurrency offers over conventional online payment systems.

These casinos take advantage of the decentralized nature of cryptocurrencies that provides a higher level of privacy in terms of financial transactions. However, with a deeper understanding of the crypto space and the enactment of unified laws for digital assets, it is just a matter of time before all activities that involve cryptocurrency will be regulated.', 'https://i.ibb.co/fYDn47f/2022-09-14-13-26-59.png', 'Regulations', '2022-09-18 15:50:35.957705');
INSERT INTO public.news (id, platform_id, author_id, link, title, content, image, category, created_on) VALUES (130, 29, NULL, 'https://cointelegraph.com/news/abu-dhabi-regulator-introduces-guiding-principles-for-crypto', 'Abu Dhabi regulator introduces its ‘guiding principles’ for crypto', 'The FSRA is taking a pro-market stance but pledges to comply with international safety standards.

The Financial Services Regulatory Authority (FSRA), the financial regulator of Abu Dhabi Global Market free economic zone (ADGM), published its “Guiding Principles” on its approach to digital asset regulation and supervision. 

Friendly in tone to the crypto industry, the principles pledge to comply with international standards in Anti-Money Laundering (AML), combating the financing of terrorism (CFT) and supporting financial sanctions. 

Five principles were published without date specification on the official webpage of the ADGM. They go under the titles of Internationally Recognised Regulatory Framework, Dynamic and Market-Oriented Regulations, Risk-focused and Proportionate Approach, Cooperation and Shared Responsibility, Delivering High Standards of Quality & Service.

While in general the tone and content of the principles correspond to standard declarations of making the market more dynamic, innovative and safe, at the same time, there are some specific points that would define the ADGM regulatory landscape.

According to the principles, the ADGM’s legislative framework will be based on English Common Law. Within the economic zone, the Regulator, Registrer and Court functions will operate entirely independently, with a regulatory committee appointed by the board to ensure supervisory independence.

As liberal as they sound, these premises will be supplemented by compliance with international AML/CFT standards, close cooperation with other jurisdictions and “financial sector surveillance” as a part of the FSRA function.

Related: Swiss and Dubai crypto associations team up

The regulator also intends to collaborate closely with market participants on a “regular but informal” basis. This will include one-on-one sessions between regulatory and business teams, as well as the working groups of market participants and professionals.

In March 2022, ADGM published a consultation paper proposing that licensed companies will be allowed to facilitate nonfungible token (NFT) trading in the jurisdiction. In April, Binance and Kraken became the first foreign companies to receive regulatory approvals to operate in ADGM.', 'https://i.ibb.co/km6vQw5/2022-09-14-13-53-24.png', 'Regulations', '2022-09-18 15:50:35.959246');
INSERT INTO public.news (id, platform_id, author_id, link, title, content, image, category, created_on) VALUES (131, 36, NULL, 'https://crypto.news/regulators-call-out-celsius-crypto-lender-for-misleading-investors-over-financial-trouble/', 'Regulators Call Out Celsius Crypto Lender for Misleading Investors Over Financial Trouble', 'Crypto lender Celsius continues to face more scrutiny from regulators amid its bankruptcy crisis. On Wednesday, the circumstances leading to the firm’s failure came to question that it allegedly hid its financial troubles from its investors. The latest news emerged even with accusations still being levied against a former manager for losing millions of dollars.

Details From the Filing
A public court filing presented on September 7, 2022, asserts that it is possible that Celsius disguised its money troubles from its investors and “engaged in the improper manipulation of the price” of the platform’s token to improve the firm’s balance sheet and finances.

Regulators from the Vermont Department of Financial Regulation issued the filing to back the motion made by the United States Trustee to name an independent examiner.

That’s because the trustee examining Celsius’s bankruptcy case stated in the past that they are searching for an examiner to assist in obtaining new information and alleviating “confusion and anxiety.”

Recent court filings reflect on how the crypto lender company sustained “massive losses” in the first seven months of 2021 and “tow material adverse events” in June and July of that year, based on a preliminary study of financial records.

Although federal securities laws and State require the firm to disclose its financial statements, the corporation kept its financial losses concealed from investors.

Celsius is also accused of manipulating the price of its CEL token. The filing mentions that the transactions may have “artificially” increased the company’s CEL holdings on its balance sheet. The filing also claimed that the firm “never earned enough revenue to support the yields being paid to investors.”

However, yesterday’s latest filing on Celsius stated, “During the course of the multi-state investigation, it has become clear that Celsius, through its CEO Alex Mashinsky and otherwise, made false and misleading claims to investors about, among other things, the company’s financial health and its compliance with securities laws.”

“Both of which likely induced retail investors to invest in Celsius or to leave their investments in Celsius despite concerns about the volatility of the cryptocurrnency market.”

Rising Concerns Around Celsius’s Business Model
An independent examiner must examine the firm’s business model, operations, investments, and loan activities. That is because the statement mentioned that an examiner will also look into the management of Celsius to determine the company’s “role in creating the Debtors’ current illiquidity, as well as any “irregularities.”

Since the corporation filed for bankruptcy on July 13, more than three hundred clients have issued letters, some claiming that they were misled and requesting the recovery of their money.

On Tuesday, a lawyer representing Celsius said the firm had been offered additional funds to assist in its restructuring process. Celsius later announced a meeting with a committee representing unsecured creditors the next week and is working “expeditiously” on the way ahead.

The filing also mentioned that an examiner could clear up any misunderstandings regarding the matter that may have arisen from social media.

More Claims Celsius Manipulated CEL Token to Bolster Balance Sheet
Another filing from regulators shed some light on how Celsius’s concerns may have arisen as early as 2020 when it was paying yields to some existing investors with the assets of new investors.

After the Vermont Department of Financial Regulation sought information from the firm’s CFO, it became clear of Celsius’s misdoings. He alleged that Celsius has never earned enough revenue to support the yields advertised to its customers.

What’s shocking is that Celsius might have been insolvent as early as 2019. According to regulators, that’s because after excluding holdings of its CEL token, the firm’s liabilities exceed its assets from March 2019.

In Layman’s terms, over the years, Celsius has taken advantage of its native token to prop up its balance sheet. A recent filing unraveled how the firm and its management could manipulate the price of CEL and use investors’ funds to purchase more tokens and therefore inflate its net position.

The filing read, “by increasing its Net Position in CEL by hundreds of millions of dollars, Celsius increased and propped up the market price of CEL, thereby artificially inflating the company’s CEL holdings on its balance sheet and financial statements.”

The allegations continued, “Excluding the Company’s Net Position in CEL, liabilities would have exceeded its assets since at least February 28, 2019. These practices may also have enriched Celsius insiders, at the expense of retail investors.”', 'https://i.ibb.co/RHF36Hr/2022-09-14-13-56-22.png', 'Regulations', '2022-09-18 15:50:35.96085');
INSERT INTO public.news (id, platform_id, author_id, link, title, content, image, category, created_on) VALUES (132, 42, NULL, 'https://cointelegraph.com/news/russia-aims-to-set-rules-for-crypto-cross-border-payments-by-year-s-end', 'Russia aims to set rules for crypto cross-border payments by year’s end', 'Russia might become the first country in the world to allow cross-border crypto payments while banning local crypto payments, a fintech expert in the Russian State Duma said.

Russian Prime Minister Mikhail Mishustin on Tuesday officially instructed the government to come to a consensus regarding crypto regulation in Russia by Dec. 19, 2022.

The prime minister specifically called on the Duma and other state authorities to come up with coordinated policies on regulating the issuance and circulation of digital currencies in Russia. Mishustin also asked regulators to finalize regulations for cryptocurrency mining and cross-border transactions in digital currencies.

The official stressed that the upcoming draft crypto regulations should be aligned with the Russian Finance Ministry, the central bank, Anti-Money Laundering authority Rosfinmonitoring, the Federal Tax Service and the Federal Security Service.

The latest news brings yet another official confirmation that Russia has been growing increasingly serious about the possibility of cryptocurrencies for cross-border transactions.

Last week, Deputy Finance Minister Alexei Moiseev reported that the Bank of Russia has agreed with the finance ministry to legalize crypto for cross-border payments. Despite its willingness to authorize cross-border transactions, the Russian central bank still opposed the legalization of local crypto exchanges as well as legalizing cryptocurrency as a means of payment.

The feasibility of banning domestic crypto exchanges while allowing cross-border payments apparently raises a lot of questions, especially given that Russia has yet to come up with a framework to provide such laws.

Russia might be the first country in the world to authorize cross-border crypto payments while banning local crypto payments, according to Maria Agranovskaya, a legal attorney and fintech expert in the Russian State Duma, told Cointelegraph. “This isn’t a common approach, to my knowledge,” she said.

Related: Russian gov''t working on stablecoin settlement platform between friendly nations: State media

The question of how exactly Russia plans to differentiate between domestic and cross-border crypto payments has yet to be answered, Agranovskaya noted. “This distinction is not yet in existence. All ‘foreign’ crypto is regarded as digital currency and that’s it for now,” she said, adding:

“It is absolutely unclear at the moment. I presume the matter shall be in line with the currency control regulations — tax residents in the local territory would not be allowed to use crypto for payments internally.”
Russia has emerged as one of the most uncertain jurisdictions to crypto, despite adopting its major crypto-related law, On Digital Financial Assets, in 2020. The law prohibited Russians from using cryptocurrency as payment but didn’t ban activities like crypto trading and mining in the country. Russian financial regulators have not approved any local crypto trading platform, only allowing crypto trades through foreign crypto exchanges like Binance.', 'https://i.ibb.co/F59SsCF/2022-09-14-13-54-45.png', 'Regulations', '2022-09-18 15:50:35.964589');
INSERT INTO public.news (id, platform_id, author_id, link, title, content, image, category, created_on) VALUES (133, 16, NULL, 'https://www.theblock.co/post/169788/federal-trade-commission-seeks-entry-into-celsius-bankruptcy-case', 'Federal Trade Commission seeks entry into Celsius bankruptcy case', 'The Federal Trade Commission filed Tuesday to join the bankruptcy proceedings of crypto lender Celsius. 

According to court documents, FTC attorneys Katherine Aizpuru and Katherine Johnson have asked to represent the commission in the case. Johnson applied to "represent the Federal Trade Commission in the above-referenced jointly administered cases and any related adversary proceedings," according to a filing.

As of press time, the court had not officially greenlit the FTC lawyers'' requests. The consumer protection agency has joined other bankruptcy proceedings, like that of an education technology company in 2014, when it believes sensitive consumer information could be exposed as part of the unwinding of the company. The sensitivity around personal data potentially adds another layer of complexity to bankruptcy cases.

Celsius declared bankruptcy in July. Since then, both creditors, as well as American regulatory bodies, have sought to shape the process and outcome. The U.S. government is seeking the appointment of a third-party examiner amid allegations of misleading statements by Celsius. ', 'https://i.ibb.co/X5Z5q6f/2022-09-14-13-39-30.png', 'Regulations', '2022-09-18 15:50:35.96627');
INSERT INTO public.news (id, platform_id, author_id, link, title, content, image, category, created_on) VALUES (134, 34, NULL, 'https://crypto.news/utah-corporations-involved-in-a-722-million-crypto-fraud-scheme/', 'Utah Corporations Involved In a $722 Million Crypto Fraud Scheme', 'The federal government aims to recoup fictitious monies given to amusement parks, tech startups, and other businesses. Documents from prosecution against the BitClub Network, a firm accused by the Department of Justice of scamming over a thousand investors out of $722 million from 2014 to 2019, show that a suspected fraudulent bitcoin mining company may have ensnared many Utah homes.

Utah Crypto Fraud Scheme
Federal authorities want to seize $22 million from Utah properties that received investments in the alleged BitClub scheme, including $500,000 in Evermore Park, a Pleasant Grove immersive theme park, and $1.6 million in The Grid, another Utah County attraction billed as one of the world’s longest indoor go-kart tracks, and $8.4 million in Kiln, a tech-focused co-working space with offices in Lehi and Salt Lake City.

How Did The Crypto Firm Money End Up in Utah Businesses?
Court documents show how the investments received by the Utah-based companies — none of which replied to several requests for comment — were routed through the BitClub Network into BitWealth Investments and BitWealth Holdings, which are linked to a local entrepreneur named Gavin Dickson. 

Dickson, a Utah business owner, is not charged in the case but appears in court filings indicating that he deposited money from BitClub through some of his companies.

Dickson is a successful entrepreneur who opened three eateries during the pandemic. He purchased and then sold Fremont Island in the Great Salt Lake. These companies are not included in federal filings on BitClub.

According to court filings, the chief defendant in the case, Matthew Brent Goettsche, who was arrested in the District of New Jersey, told one of his associates that the firm would make them rich “off the backs of idiots.”

Money from the alleged fraud ended up in Utah via at least one company, BitWealth Holdings, which has been identified in court records as having used monies from the crypto scheme and listed Dickson as an owner.

Dickson did not react to multiple demands for comment made by phone, in person, but through his attorney. 

Dream Vast Goals

Gavin Dickson has been described as a daring business genius and serial entrepreneur wunderkind who began his career as a youngster hustling up courtside Jazz tickets for visiting business titans, CEOs, and gurus such as Tony Robbins so he could sit alongside them and network during games.

Dickson stated in an interview on the Living Unscripted podcast, sponsored by a firm in which he was an investor, that he lost a fortune in real estate following the 2009 recession and then climbed back to oversee a $50 million venture capital fund in 2017.

Dickson spoke about this acquisition in an Instagram post in 2018 and how he and his partner and new good friend David have great things coming. With hashtags such as #BitWealth and #DreamBIGDreams

Dickson and his partners, however, sold the island to a conservation group in 2020 because to permit issues.

Dickson subsequently assisted in the founding of Utah Pay it Forward, a charitable organization that accepted donations in order to purchase gift cards for restaurants to give to deserving families, during the beginning of the pandemic. He also made news appearances praising the philanthropic endeavor.

The Most Incredible Box
According to the Utah Attorney General’s office, Dickson or his corporate entities have not been the subject of any state inquiries or complaints, and there are no responsive records for either.

The new owners of Dickson’s former Bountiful mansion, which he purchased from Derrick Favors, a former member of the Utah Jazz, claimed to know nothing about Dickson but claimed that four FBI agents had visited the property last year to inquire about his whereabouts.

The inquiry also showed that Goettsche received monies through accounts managed by Gavin Dickson and Most Amazing Box LLC that were funded by (BitClub Network), according to the paper.

An additional filing from February 2020 sought to prevent Goettsche from being released from custody, claiming that he was a flight risk due to his extensive access to unrecovered crypto assets, including a private plane that was allegedly “purchased from an account in the name of Most Amazing Box LLC, which appears, in turn, to be funded by a Singapore-based cryptocurrency trading exchange,” according to the filing. Goettsche was released and placed under house arrest with an ankle monitor until the trial at the end of 2020.

So far, the filing has identified 1,500 victims and cited a customer service complaint from a person writing from the African country of Cameroon.

Gordon Beckstead, a Nevada accountant, pled guilty in March to money laundering and filing a fake tax return to assist Goettsche in laundering money from the BitClub scheme and avoid paying more than $20 million in federal income taxes.', 'https://i.ibb.co/SKww16p/2022-09-14-13-58-46.png', 'Regulations', '2022-09-18 15:50:35.967783');
INSERT INTO public.news (id, platform_id, author_id, link, title, content, image, category, created_on) VALUES (135, 13, NULL, 'https://cointelegraph.com/news/new-regulatory-bill-grants-uruguayan-central-bank-control-over-the-nation-s-crypto-industry', 'New regulatory bill grants Uruguayan Central Bank control over the nation''s crypto industry', 'The Uruguayan government introduced legislation to the parliament on Sept. 5, accelerating industry regulation.

The Uruguayan government has introduced legislation to the parliament that accelerates the regulation of the crypto space in the country and establishes the central bank as the regulatory authority.

Introduced on Sept 5, the bill strives to clarify the country''s regulatory framework for cryptocurrency assets, stating that all companies that provide digital asset-related services, including initial coin offerings (ICOs) are under the supervision of the Superintendency of Financial Services (SSF), a central bank entity. Cryptocurrency exchanges, custody services and any financial services relating to these digital assets should also adhere to Anti-Money Laundering regulations and best practices.

Additionally, the document defined four types of digital assets: stablecoins, governance tokens, tradable assets and debt tokens, saying:

"If the activity carried out with these instruments involves the exercise of financial intermediation or financial activity, it will be subject to the regulation and control of the Central Bank of Uruguay."
Last year, Uruguayan Senator Juan Sartori introduced a draft bill to regulate cryptocurrency and enable businesses to accept digital payments, seeking to “establish a legitimate, legal and safe use in businesses related to the production and commercialization of virtual currencies.”

This development is part of an ongoing wave of legislation or regulations being pursued by governments or legislators in Latin America. Brazil''s Securities and Exchange Commission is reportedly pursuing to change its legal framework to recognize tokens as digital assets or securities. In August, Paraguay’s president vetoed a bill that sought to recognize cryptocurrency mining as an industrial activity, arguing that mining’s high electricity consumption could hinder the expansion of a sustainable national industry.', 'https://i.ibb.co/L0dW8yq/2022-09-14-13-43-24.png', 'Regulations', '2022-09-18 15:50:35.969549');
INSERT INTO public.news (id, platform_id, author_id, link, title, content, image, category, created_on) VALUES (136, 4, NULL, 'https://crypto.news/us-fed-vice-chairman-brainard-calls-for-regulations-that-are-crypto-specific/', 'US Fed Vice Chairman Brainard Calls for Regulations That Are Crypto-Specific', 'Lael Brainard, the Vice Chairman of the US Federal Reserve, has called on regulators to issue crypto-specific regulations. According to her, the present rules do not cover all aspects of the crypto sector.

Existing Laws Are Insufficient to Regulate Crypto – Brainard 
Brainard, the VC of the US Fed, has likened the crypto market to the traditional market. While speaking at an annual banking conference on September 7th, she stated that both markets have similar risks.

However, the VC argued that cryptocurrency needs new regulations because they are nascent assets. As a result, lawmakers did not consider them when making the existing laws.

Brainard noted that they are certain aspects of the crypto sector the current legislation does not cover. Hence, there is the need to develop “clear regulatory guardrails.”

Presently, the VC is leading the central bank as it Explores the possibility of a digital Dollar. Besides, she is second in command at the Fed. This makes her opinion of the crypto sector significant. 

Her latest remarks are a reiteration of her statements in the past. Then, she said the crypto sector has to follow the same safety procedures as the conventional banking system. These safety procedures would prevent the industry from becoming a significant future threat.

Brainard Talks about Stablecoins
Furthermore, Brainard also talked about the risks associated with stablecoins. She believes that crypto firms will issue more stablecoins in the future. Therefore, she questioned whether the central bank should introduce its own CBDC. 

“Stablecoins is one area of the crypto industry I believe has a lot of risks if not well regulated. I believe these risks can spill from the crypto sector into the main financial market due to the nature of such tokens,” she added.

Earlier in May, over $60 billion disappeared from the crypto market. This event occurred after the collapse of the Terra ecosystem and its algorithmic stablecoin, the TerraUSD.

Consequently, this collapse ignited comments from lawmakers and regulators. Lawmakers began to work towards regulating the stablecoin sector.

Stablecoin Issuers Should Be Regulated Like Banks
Meanwhile, some critics are concerned about asset-backed stablecoins like USDT and USDC. They opine that these stablecoins might not be able to handle considerable amounts of withdrawals if they continue to gain popularity.

Last November, the US President’s Working Group on Financial Markets issued some recommendations on regulating stablecoins. Members of the committee include Janet Yellen (US Treasury Secretary) and Jerome Powell (Chairman of the US Fed Reserve. 

Talking about the report, Brainard agreed that stablecoin issuers should face similar regulations as banks. She said the most effective strategy to handle stablecoins is with the help of liquidity backstop and credential guardrails.

These measures will ensure that stablecoin issuers seek credentials to operate and have enough assets backing their stablecoins.', 'https://i.ibb.co/MVb3zNx/2022-09-14-14-01-43.png', 'Regulations', '2022-09-18 15:50:35.972562');
INSERT INTO public.news (id, platform_id, author_id, link, title, content, image, category, created_on) VALUES (137, 21, NULL, 'https://crypto.news/imf-says-crypto-has-greater-potential-as-a-payment-method-over-weak-currencies/', 'IMF Says Crypto Has Greater Potential as a Payment Method Over Weak Currencies', 'The International Monetary Fund (IMF) released a report stating that cryptocurrencies have greater potential as a form of payment compared to weak currencies. According to the IMF, crypto hedges significantly better against weaker currencies and has developed a greater presence as a speculative instrument.

Cryptocurrency’s Mainstream Adoption and Regulation
The International Monetary Fund (IMF) has recently released a report discussing some potential laws that might help crypto thrive and provide a secure environment for innovation. The report highlights how, despite the fact that cryptocurrencies have been around for more than a decade, regulating them has just recently become a concern. It demonstrates how quickly adoption has accelerated in recent years.

In the new report authored by IMF director of capital markets Aditya Narain and assistant director Marina Moretti, authorities stated that crypto assets have firmly switched from “niche products” to those used for riskier trading, hedging against weak currencies, and payment tools.

The authors said that this, in addition to the recent collapses of crypto issuers, exchanges, and hedge funds, has “added momentum to the push for regulation.” If there had been proper oversight, the value of cryptocurrencies might not have plummeted so rapidly. However, it will not be simple, as the implementation of new regulations will be difficult.

The Struggle With Crypto Regulation
According to Narain and Moretti, establishing regulatory frameworks for crypto assets is a challenging task, citing the market’s rapid expansion, the complexity of monitoring, and the lack of practical expertise among regulators as some of the most significant barriers, noting:

“Regulators are struggling to acquire the talent and learn the skills to keep pace given stretched resources and many other priorities.”

The authors have criticized the varying approaches to crypto regulation taken by various regulators and have advocated, instead, for a global cryptocurrency regulatory framework that is coordinated, consistent, and all-encompassing. They stated:

“Some regulators may prioritize consumer protection, others safety and soundness or financial integrity. And there is a range of crypto actors — miners, validators, protocol developers — that are not easily covered by traditional financial regulation.”

Adding:

“A global regulatory framework will bring order to the markets, help instill consumer confidence, lay out the limits of what is permissible, and provide a safe space for useful innovation to continue.”

State of Crypto Regulation Across the Globe
Regulators from all over the globe have gathered around the regulatory table.

In Europe, The final legislative wording for the long-awaited Markets in Crypto-Assets (MiCA) legislation is expected to be published within the next four to six weeks. In the United States, the Responsible Financial Innovation Act, a crypto regulation law, is expected to address some of the most pressing issues confronting the digital assets sector.

Even ardent crypto skeptics have begun to agree that regulation is preferable to a sweeping ban, with U.S. congressman Brad Sherman being the latest to shift his opinion after acknowledging that the market has too much money and influence to be banned at this time.', 'https://i.ibb.co/KmghYYF/2022-09-14-14-07-50.png', 'Regulations', '2022-09-18 15:50:35.976052');
INSERT INTO public.news (id, platform_id, author_id, link, title, content, image, category, created_on) VALUES (138, 33, NULL, 'https://crypto.news/president-of-paraguay-vetoes-cryptocurrency-regulation-bill/', 'President of Paraguay Vetoes Cryptocurrency Regulation Bill', 'Paraguay’s president, Mario Abdo Benitez, vetoed a bill approved by the Senate in mid-July to regulate and recognize crypto mining and commercialization as an industrial activity.

Paraguay Takes a Stance on Cryptocurrency Regulation
In a decree issued on Monday, the Paraguayan President warned that the high energy consumption of crypto mining could impede the nation’s economic growth.

Before being passed by the Senate, a heated dispute ensued over the legislation that governs the mining, commercialization, intermediation, exchange, transfer, custody, and administration of digital assets.

According to a presidential announcement, the National Electricity Administration (ANDE), Ministry of Industry and Trade (MIC), and Paraguayan national bank voted against the law.

Reason for Vetoing the Paraguayan crypto
Due to the intensive use of capital and the underutilization of labor caused by the mining of Bitcoin (BTC) and other cryptos, there was high electricity consumption.

According to the administration, crypto mining is not an industrial activity but an “electro-intensive consuming” enterprise. “It does not add value; rather, it provides a transaction registration and validation service of a distributed blockchain system,”.

The regulation was intended to encourage crypto mining utilizing the extra electricity the nation generates, but senator Fernando Silva Facetti, who supported the legislation, claimed that the government ignored this economic activity.

Facetti claimed on Twitter that the rejection of the bill that would have regulated the mining and sale of digital assets ignores the fact that such activity ” which today works in the shadow of rules

The Administration’s Statement
The Paraguayan Senate passed a motion on July 14 that recognizes crypto mining as an industrial activity. Furthermore, it tried to ensure that the rate for this activity would not surpass 15% in comparison to the current industrial rate in order to foster its growth.

The rate applicable to crypto miners, according to the presidential order, is being reduced to only a little percentage above the current industrial rate, which the presidential decree describes as “an indirect industrial incentive for crypto mining.”

The statement explains the decision by claiming that the country’s industrial investment has increased 220% in the last year, generating 319 million dollars. Similarly, it argues that economic activity increased by 4% over the last five years, implying that demand for electrical energy will rise in the future.

According to President Benitez’s decree, “if Paraguay wants to intensify crypto mining today, it will be forced to import electricity in the next four years.”

Why It’s Important
One of the nations in Latin America where Bitcoin mining has increased the most over the past two years is Paraguay. Electricity is inexpensive in the region, which has encouraged both domestic and foreign miners to establish farms there.

Facetti says that the Paraguayan government’s decision to block the crypto bill “shows the lack of vision of the State” by ruling out the prospect of increasing fiscal and financial transparency', 'https://i.ibb.co/yn2XXGb/2022-09-14-14-09-07.png', 'Regulations', '2022-09-18 15:50:35.977649');
INSERT INTO public.news (id, platform_id, author_id, link, title, content, image, category, created_on) VALUES (139, 19, NULL, 'https://cointelegraph.com/news/uk-economic-secretary-commits-to-make-country-a-crypto-hub-under-new-pm', 'UK economic secretary commits to make country a crypto hub under new PM', '“We want to become the country of choice for those looking to create, innovate and build in the crypto space,” said MP Richard Fuller.

Richard Fuller, the Economic Secretary to the Treasury, said the government wants the United Kingdom to be the “dominant global hub for crypto technologies.”

In a parliamentary debate on crypto asset regulation in the U.K. on Wednesday, Fuller spoke in favor of “powerful” use cases for cryptocurrency and blockchain technology, including using distributed ledger technology for customs and international trade and storing medical records on the blockchain. Alexander Stafford, the parliamentary private secretary to newly elected Prime Minister Liz Truss, added the prime minister “reaffirmed” her commitment to providing internet connectivity for U.K. residents, which could allow access to buying, selling and mining crypto.

“As crypto technologies grow in significance, the U.K. Government are seeking ways to achieve global competitive advantage for the United Kingdom,” said Fuller.

The economic secretary added:

“We want to become the country of choice for those looking to create, innovate and build in the crypto space [...] By making this country a hospitable place for crypto technologies, we can attract investment, generate new jobs, benefit from tax revenues, create a wave of groundbreaking new products and services, and bridge the current position of UK financial services into a new era.”
Fuller said that under Truss, the U.K. government plans to move forward with the Financial Services and Markets Bill, legislation introduced in July which aimed to establish a regulatory framework for stablecoins. In addition, he suggested support for the Economic Crime (Transparency and Enforcement) Act, which would grant law enforcement “new powers to seize and recover cryptoassets.”

“The U.K. can either be a spectator as this technology transforms aspects of life, or we can become the best place in the world to start and scale crypto technologies,” said Fuller. “We want the U.K. to be the dominant global hub for crypto technologies, and so will build on the strengths of our thriving fintech sector, creating new jobs, developing groundbreaking new products and services.”

Related: Disgraced MP tells Parliament UK can be the ''home'' of crypto

Fuller became economic secretary following the resignation of John Glen and other top officials in the U.K. government in July in response to allegations of misconduct in former Prime Minister Boris Johnson’s government, shaking up positions with the potential to affect crypto policy in the country. On Tuesday, Truss also appointed Kwasi Kwarteng as the chancellor of the exchequer, or chief financial minister.', 'https://i.ibb.co/BLKfXHQ/2022-09-14-14-10-52.png', 'Regulations', '2022-09-18 15:50:35.980354');
INSERT INTO public.news (id, platform_id, author_id, link, title, content, image, category, created_on) VALUES (140, 21, NULL, 'https://cointelegraph.com/news/which-countries-are-the-worst-for-crypto-taxation-new-study-lists-top-five', 'Which countries are the worst for crypto taxation? New study lists top five', 'Crypto analytics firm Coincub has released crypto tax rankings, pointing out the worst and the best countries regarding crypto taxation.

Global cryptocurrency taxation rules significantly vary among countries, and some jurisdictions have come up with extremely tough crypto tax policies for their residents.

In a new study by crypto analytics firm Coincub, Belgium is referred to as the worst country in the world in terms of crypto taxation for residents. That is according to in-house rankings covering taxation aspects like taxes on crypto income or crypto capital gains.

Belgium is known for its massive 33% tax on capital gains on crypto transactions, and it also withholds up to 50% in taxes from professional income on crypto trades. As previously reported, Belgium adopted strict crypto taxation rules back in 2017.

Released on Thursday, Coincub’s tax rankings also bring up countries like Iceland, Israel, the Philippines and Japan as the locations less favorable to crypto investors.

In Iceland, any crypto gains up to $7,000 are subject to under 40% tax, while bigger gains will incur 46%, the report notes. Under Israel’s tax regime, the sale of crypto is usually subject to capital gains tax, which is up to 33%. On the other hand, if crypto trading involves a business income tax, it may go as high as 50%.

In the Philippines, there is no tax on any crypto income under $4,500, but after that, any income is taxed up to 35%. The country’s government has also been discussing new taxes on crypto by 2024, raising concerns that Manila may follow India’s lead and impose a 30% flat tax on all crypto income.

Japan closes the top-five worst countries for crypto taxation for residents in Coincub’s rankings. The country has a progressive tax rate system for income considered miscellaneous income. The tax rate varies from 5% to 45%, depending on the amount of total profits.

Among other strict crypto tax economies, Coincub also mentioned countries like India, Austria, the United States, Norway, Denmark and France.

On the other hand, the study pointed out a number of countries that provide tax-efficient incentives to citizens and have much more favorable crypto tax policies. According to the rankings, Germany tops the list as the best place for crypto investors, as anyone holding cryptocurrency for a minimum of a year will incur no capital gains tax on selling or converting their crypto. Other crypto-tax-friendly countries include Italy, Switzerland, Singapore and Slovenia.

Related: Australian Treasury consults public on Bitcoin foreign currency tax exclusion

Additionally, Coincub mentioned classic tax havens or countries that offer foreign businesses and individuals minimal to no tax liability for their financial deposits, where crypto is no exception. Among those, the study listed The Bahamas, Bermuda, Belarus, the United Arab Emirates, the Central African Republic, Lichtenstein and others.

Coincub emphasized that crypto taxation is very fast-changing as new regulations occur regularly. The firm also noted that there is an increasing number of countries that apply flat tax rates on gains for individuals, aiming to simplify tax take.', 'https://i.ibb.co/Hzjnyy7/2022-09-14-14-12-05.png', 'Regulations', '2022-09-18 15:50:35.982766');
INSERT INTO public.news (id, platform_id, author_id, link, title, content, image, category, created_on) VALUES (141, 14, NULL, 'https://www.theblock.co/post/169220/u-s-inflation-comes-in-above-estimates-8-3-year-on-year-and-0-1-month-on-month?utm_source=coinmarketcap&utm_medium=rss', 'U.S. inflation comes in above estimates, 8.3% year-on-year and +0.1% month-on-month', 'QUICK TAKE
U.S. inflation for the month of August rose 8.3% year-on-year.
Headline month-on-month inflation was 0.1%, above expectations.
 

U.S. inflation came in above estimates, posting an 8.3% jump in August, higher than the previous month, according to the latest CPI data.

The data show a +0.1% month-on-month increase since July and up  8.3% year-on-year bump. Estimates called for a reading of 8% year-on-year, down from the 8.5% in July, and drop of 0.1% month-on-month.

The U.S. inflation report was expected to show a sequential decline strengthening the case that, in the U.S. at least, we may be past peak inflation, according to global head of market research at forex.com and City Index Matt Weller. However, Tuesday''s print suggests the peak inflation narrative may have been premature.
Bitcoin plunged below $22,000 on the news, trading at $21,816 following the higher-than-expected print.


Ledn''s Chief Strategy Officer Mauricio Di Bartolomeo told The Block on Tuesday, "while it will be interesting to watch the headline number, investors appear to have a fair idea about the Fed’s next move."

The CME''s FedWatch tool shows investor consensus sees around an 86% chance of the Fed hiking rates by 75 basis points next week, Di Bartolomeo said. "Investors are making a calculated guess at when the Fed “might” stop raising rates, and this is a big driver behind the recent optimism in the markets."
SIGN UP FOR OUR DAILY NEWSLETTERS
Enter email address
 Also receive our FREE weekly Data & Insights Newsletter
By signing-up you agree to our Terms of Service and Privacy Policy

Now that the number has come out on the up-side surprise, it may front-load some of the hike expectations to November and markets could sell off.

Word on the street
It is telling in and of itself how closely the crypto ecosystem is watching the CPI print this week, Jonah Van Bourg, global head of trading at Cumberland, told The Block ahead of time. 

"It underscores how intertwined crypto has become with other risk assets, which is requiring crypto market participants to become more sophisticated in understanding those correlations," Van Bourg said. He suggested higher-than-expected inflation could negatively affect crypto prices.

Crypto was trading bearish ahead of the U.S. inflation data, "hitting an ultra low point last Tuesday, Sept. 6, when CME''s Sept. bitcoin expiring futures implied financing was negative 18%, which was the most futures backwardation we have seen since March 2020," BlockFi''s global head of trading Joe Hickey told The Block on Monday.

Institutional traders find it easier to profit from a crypto market in a state of contango, when the price of futures contracts is higher than the current spot price.

However, on Sept. 9, bitcoin futures implied financing snapped back into contango, reaching +4%. "This is a massive move driven by a conflicted sentiment between bulls and bears," Hickey said.

The correlation between crypto and equities continues to be tight, meaning its likely that macro developments this week will introduce volatility in outrights such as BTC/USD and ETH/USD, Hickey concluded. ', 'https://i.ibb.co/bWh3PM7/image.png', 'Others', '2022-09-18 15:50:35.986109');
INSERT INTO public.news (id, platform_id, author_id, link, title, content, image, category, created_on) VALUES (142, 24, NULL, 'https://www.coindesk.com/business/2022/09/13/vc-firm-northzone-raises-1b-fund-for-fintech-web3-investments/', 'Venture-Capital Firm Northzone Raises $1B Fund for Fintech, Web3 Investments', 'U.K. venture-capital firm Northzone has raised a 1 billion euro ($1.01 billion) fund to invest in innovative technology such as crypto, according to a press release on Tuesday.
The London-based firm will use the money to support crypto and fintech startups, the Block reported. Web3 is a "core sector" for the firm, Wendy Xiao Schadeck, a partner at Northzone, told the Block. Web3 refers to the third generation of internet services driven by blockchain technology.
This isn''t the first time Northzone has looked to invest in crypto. In July 2021, Northzone led a $27 million funding round for Magic Numbers, an Ethereum-based authentication platform. Around the same time, the firm contributed to a $20 million funding round for Livepeer, a decentralized video transcoding platform also built on the Ethereum blockchain.
Northzone didn''t immediately respond to request for further details.', 'https://i.ibb.co/j5mxnPm/image.png', 'Others', '2022-09-18 15:50:35.988151');
INSERT INTO public.news (id, platform_id, author_id, link, title, content, image, category, created_on) VALUES (143, 41, NULL, 'https://cryptodaily.co.uk/2022/03/acala-s-new-250-million-fund-to-drive-adoption-of-ausd-on-polkadot', 'Acala’s New $250 Million Fund To Drive Adoption Of AUSD On Polkadot', 'Acala, a prominent parachain on Polkadot, has launched a $250 million ecosystem fund to boost the adoption of its stablecoin, aUSD. The fund will support early-stage startups that are creating applications that have strong stablecoin use cases on Kusama or Polkadot parachains. 

The fund has already garnered significant attention, with big names such as Arrington Capital, Alameda Research, Digital Currency Group, IOSG, Kraken Ventures, Jump Crypto, Pantera Capital, and several others. 

Grants To Early Stage Projects 
Acala released a press statement, stating that the fund will be providing early grants to startups in the Polkadot ecosystem that are working in different areas such as Decentralized Finance (DeFi), payments, derivatives, and Decentralized Autonomous Organizations (DAOs) utilizing the aUSD stablecoin. 

Chief Growth Officer at Acala, Dan Reecer, stated, 

“The fund is meant to support any team building on any Polkadot parachain with a strong aUSD use case,”

Partnership With Other Parachains 
Acala also announced that it would be partnering with other Parachains on Polkadot, such as Centrifuge, Astar Network, HydraDX, Efinity, Manta, Moonbeam, Parallel, OriginTrail, and Zeitgeist, on the adoption of the aUSD stablecoin. 

Acala’s DeFi offerings revolve around the aUSD stablecoin. The stablecoin can be minted by using collateral tokens on Polkadot such as DOT, ACA, KSM, and KAR, which can then be staked for yield. 

The AUSD Stablecoin  
The team behind Acala realized that an ecosystem of connected blockchains required a reliable and stable currency to power all economic activity in the ecosystem. The aUSD stablecoin enables users to unlock liquidity from reserve assets like the ACA, DOT, KSM, and KAR tokens. They can also unlock liquidity from cross-chain assets such as ETH, BTC, and parachain tokens. aUSD can be minted by collateralizing the reserve assets, allowing users to earn yield while also maintaining their ownership over the reserve assets. The aUSD stablecoin was launched on 9th February 2022. 

At the time, Bette Chen, Acala co-founder, had stated, 

“Building the native, decentralized stablecoin of Polkadot and Kusama has been at the heart of Acala’s work for over three years. It is fantastic to see this group of parachains and funds coming together to grow the cross-chain ecosystem with aUSD as a foundational building block.”

Goals Of The Fund 
While launching the aUSD ecosystem fund, the team at Acala outlined the goals of the fund, stating that the fund will help teams building in the Kusama and Polkadot ecosystem. The fund will also look to grow Polkadot’s and Kusama’s ecosystem by helping to increase cross-chain activity and also help the growth of the aUSD stablecoin. 

Grow Support For Projects 
Any project or team accepted into the aUSD ecosystem fund will also receive support from the team at Acala and partners and supporters of the fund. The team will be able to raise capital easily from industry-leading funds. Acala’s engineering team will also support the projects. Projects will also receive aUSD as liquidity into the project, significantly boosting the TVL.', 'https://i.ibb.co/LCSTBZf/image.png', 'Others , Altcoins', '2022-09-18 15:50:35.989775');
INSERT INTO public.news (id, platform_id, author_id, link, title, content, image, category, created_on) VALUES (144, 4, NULL, 'https://cryptodaily.co.uk/2022/09/100m-web3-fund-launched-by-thundercore-886-studios-and-outliers-fund', '$100M Web3 Fund Launched By ThunderCore, 886 Studios And Outliers Fund', 'ThunderCore today announced a dynamic new partnership with 886 Studios and Outliers Fund to raise a $100 million Web3 fund that will focus on boosting GameFi, SocialFi, NFT and Metaverse ecosystems. The financial initiative will incentivize developers to deploy their applications on ThunderCore’s rapidly growing layer-1 blockchain network. 

Clocking up to 400,000 active monthly users and gaining major traction in the Web3 space in 2022, the powerful EVM-compatible ThunderCore chain continues to aggressively invest into its layer-1 ecosystem of projects across various nascent crypto sectors. 

ThunderCore CEO and founder Chris Wang, a prominent Silicon Valley entrepreneur, said:

“ThunderCore is committed to building a thriving Web3 ecosystem. We’re therefore very excited to collaborate with 886 Studios and Outliers Fund, two likeminded partners, to support some of the incredible developers and artist talent that are redefining the blockchain. ThunderCore believes that we’re perfectly placed to help accelerate the implementation of new development in the areas of GameFi, SocialFi, NFT and Metaverse.”

ThunderCore recently revealed ThunderGene, an all-in-one project development platform comprising an API tool, project console, and wallet service. The API tool can be used by teams of all sizes and industries seeking to create blockchain products or utilize tokenized digital assets as part of their strategies.

Web3 projects looking to build on the ThunderCore blockchain will have access to the fund and are advised to start the application process directly. GameFi, SocialFi, and Metaverse projects are most likely to be accepted by the ThunderCore team.

About 886 Studios

886 Studios is a venture studio run by successful tech co-founders and entrepreneurs who collectively aim to solidify Taiwan’s prominence as a breakthrough blockchain tech, talent and innovation hub through investment, resources and support.

886 Studios believes creating value is an infinite and not a zero-sum game. 

They achieve this by connecting founders with the right partners and venture capitalists, leveraging their Silicon Valley experience and Taiwan know-how to help build successful startups together.

886 Studios team members comprise some of the biggest entrepreneurial success stories from Taiwan, including Kai Huang, (Guitar Hero founder) and ThunderCore’s Chris Wang (ex-Disney, Playdom).  

Successful companies backed by 886 Studio members include Binance, Gogoro, EMQ, Bitmark, Just Kitchen, Quantstamp, Harmony, Syndicate, and Prysmatic Labs (Ethereum 2.0) 

About Outliers Fund

Outliers Fund was started by MIT scientists Poseidon Ho, Yen Yeh, Jacob Cole, Dhash Shrivathsa, Joi Ito with the vision of backing scientist-led ventures through scientific research and collective intelligence (DAO). 

Outliers Fund I (2016-2018) and Outliers Fund II (2018-2021) have returned over 16x and 11x respectively. Outliers Lab has incubated 10 Web3 ventures since 2018 including Quantstamp, Harmony, XYO Network, Prysmatic Labs (now Ethereum 2.0) with three over 100x valuation growth, two filing IPOs and $100M+ raised collectively. 

Outliers Fund III (2022-2026) is running on smart contracts by deploying on Ethereum as the most active venture DAO on Syndicate (portfolio of Outliers Fund III), actively raising and investing in infrastructure-level research innovations from the first round as lead investor.   

About ThunderCore

ThunderCore is a powerful and ultra-fast Web3 ecosystem and layer-1 chain that delivers elite performance and cost-effective scalability for thousands of crypto projects. Its proof-of-stake (PoS) architecture and strong developer support provide a battle-tested home for the next generation of crypto builders to create in Web3, DeFi, NFTs, GameFi, and the metaverse with limitless scope.

The growing ThunderCore ecosystem is powered by its popular native asset, TT, which can be stored in the feature-rich TT Wallet, together with other supported project assets.

ThunderCore’s breakthrough consensus protocol “PaLa” overcomes the scalability “trilemma,” helping the ThunderCore network generate up to 4,000 transactions per second (TPS) with sub-second confirmation times and ultra-low gas fees at a fraction of a cent.

Created in 2017 by Silicon Valley tech entrepreneur Chris Wang to help solve Ethereum’s scalability issues, ThunderCore has an international user base that spans over 100 countries. It measured over 500,000 monthly active users in December 2021, making it one of the most actively used chains in the world, according to DappRadar.

Institutional investors in ThunderCore include MetaStable, Hashed, Electric Capital, Huobi Capital, Pantera, Zhen Fund, Kenetic Capital, Arrington XRP, Capitaland, and Draper Dragon, among others.

Disclaimer: This is a sponsored press release and is for informational purposes only. It does not reflect the views of Crypto Daily, nor is it intended to be used as legal, tax, investment, or financial advice.', 'https://i.ibb.co/1LxjSfj/image.png', 'Others', '2022-09-18 15:50:35.991442');
INSERT INTO public.news (id, platform_id, author_id, link, title, content, image, category, created_on) VALUES (145, 25, NULL, 'https://cryptodaily.co.uk/2022/09/mark-zuckerberg-questioned-about-plans-to-combat-crypto-scams', 'Mark Zuckerberg Questioned About Plans To Combat Crypto Scams', 'CEO of Meta Platforms, Mark Zuckerberg, has been asked in a letter from a group of Democratic senators about what he plans to do about fighting cryptocurrency scams on its Facebook, WhatsApp, and Instagram platforms.

Zuckerberg received a letter from six Democratic senators in which they cited statistics from the Federal Trade Commission that indicated that 49% of cryptocurrency fraud reports specified scams originating on social media from January 1, 2021, through March 31, 2022. According to the letter from the Senate Banking Committee members, scams of this origin cost consumers about $417 million. The Senate Banking Committee members include Bob Menendez of New Jersey who led the committee, Sherrod Brown of Ohio, Elizabeth Warren of Massachusetts, Dianne Feinstein of California, Bernie Sanders of Vermont, and Cory Booker of New Jersey.

According to sources, the group of senators said:

Based on recent allegations of fraud on other social media platforms and apps, we are worried that Meta provides a breeding ground for bitcoin fraud that does serious harm to consumers.

The letter, dated September 8, requested that detailed information be provided in writing by October 24 to a series of queries, including Meta’s current policies for finding and removing cryptocurrency scammers from its social media platforms, procedures for verifying that crypto advertisements are not scams, the corporation''s policies for removing scammers from its platforms, and how the company is cooperating with law enforcement to track down scammers.', 'https://i.ibb.co/gR1JRNB/image.png', 'Others', '2022-09-18 15:50:35.994784');
INSERT INTO public.news (id, platform_id, author_id, link, title, content, image, category, created_on) VALUES (146, 13, NULL, 'https://beincrypto.com/terra-luna-lunc-crash-south-korea-issues-warrant-do-kwon/', 'Terra LUNA & LUNC Crash After South Korea Issues Warrant for Do Kwon', 'According to a text message from the prosecutor’s office cited by Bloomberg, the Seoul court has issued a warrant for the arrest of Terra co-founder Do Kwon and five additional people.

The warrant was reportedly connected to a violation of capital market regulations that led to the $40-billion rout. In a lawsuit, Bragar Eagel & Squire also previously alleged that Terra violated the Exchange Act by “carrying out a plan, scheme, and course of conduct” that was intended to “deceive retail investors” and ultimately encouraged them “to purchase Terra Tokens at artificially inflated prices.”

The development led to a 29% fall in Terra LUNA in the last 24 hours. In addition, Terra Luna Classic (LUNC) also dropped around 28% at the time of press as per data by CoinGecko. LUNC’s performance is especially in focus as the token had managed to outperform Bitcoin and Ethereum in the last 30 days.

Sponsored

Sponsored
Be[In]Crypto had recently reported that LUNC saw a significant rise after the introduction of a 1.2% burn tax on all swaps. But at press time, it was trading in a 24-hour range of $0.00025411 and $0.00038227

The $40-million rout
Earlier in May, the algorithmic stablecoin Terra USD (UST) de-pegged from the dollar. The debacle that imbalanced the burning and minting mechanism of the ecosystem, wiped off over 90% of LUNA’s value.

Days into the debacle, Kwon endorsed a community proposal to expand the minting capacity of the ecosystem to $1.2 billion. And as part of “remedial measures to aid the pegging mechanism to absorb supply,” the proposal aimed to solve the problem of large UST withdrawals against a slow UST burning mechanism.

Sponsored

Sponsored
After maintaining silence for weeks, Do Kwon stated in an interview that he lost everything in the process while disputing fraud allegations. He also affirmed that he continued to have confidence in the development of Terra 2.0.

However, legal action began to mount up for Terraform Labs, the issuing organization of the stablecoin and its co-founder Do Kwon. In the past months, South Korea’s Southern District Prosecutors also raided Terraform Labs co-founder Daniel Shin’s home to investigate possible illegal activities.

Fraud allegations built up against the Do Kwon
Notably, Do Kwon was accused of extracting large amounts of money from the system before the collapse. FatMan, who is one of the Terra community members, claimed that Do Kwon took $2.7 billion out of the system. Kwon, on the other hand, shared on his social media account that his only income in the last 2 years was the salary he received from Terraform Labs.

Sponsored

Sponsored
Chainalysis had outlined in its report that the onus of the debacle lies on two traders. Experts remarked that it began on the night of May 7, when Terraform Labs withdrew UST 150 million from 3pool’s curve-based liquidity pool as part of a planned operation. Such a large and unique operation, according to analysts, increased the volatility of the pool.

Since then, some company developers along with Do Kwon have been on the radar of regulatory institutions of South Korea like the Financial and Securities Crimes Joint Investigation Team.', 'https://i.ibb.co/kMdrPFG/image.png', 'Others', '2022-09-18 15:50:35.997767');
INSERT INTO public.news (id, platform_id, author_id, link, title, content, image, category, created_on) VALUES (147, 17, NULL, 'https://blockchain.news/news/animoca-brands-confirms-new-110m-funding-round', 'Animoca Brands Confirms New $110m Funding Round', 'According to the company''s announcement, the funding round was opened to a limited number of investors, which includes Temasek, Boyu Capital, and GGV Capital, as well as existing investors Mirae Asset Management and True Global Ventures (TGV). 

As detailed by the firm, the Convertible Notes, which will expire in three years, were issued at a price of AU$4.5 ($3), and it does not change the company''s valuation from its last funding round. 

"We are incredibly pleased to complete a special strategic round of fundraising comprising several of the most respected institutional investors in the world, and we are honoured by the continued support from existing investors," Yat Siu, co-founder and executive chairman of Animoca Brands, "said Animoca Brands has grown significantly as a company in the last year, and our new investors will contribute strategic advice and perspective as we build the world''s leading company furthering digital property rights in the Web3 industry." 

According to Animoca Brands, the newly onboarded group of investors will also play a crucial in advising the firm on its planned business strategies. The newly received funding will also be deployed to "strategic fund acquisitions, investments, and product development, secure licenses for popular intellectual properties, and advance the open metaverse, including through its efforts to promote digital property rights for online users."

Animoca Brands has strategically positioned itself this year as the delight of investors. The sale of these Convertible Notes is the third time since the parent company to be raised capital this year. While this funding round was hinted at earlier, Animoca Japan secured $45 million in funding, further expanding its ecosystem.

The leading gaming platform remains committed to expanding its footprint in the digital currency ecosystem as it is searching for the next mega unicorn like The Sandbox.', 'https://i.ibb.co/wz8Skgb/image.png', 'Others', '2022-09-18 15:50:35.999315');
INSERT INTO public.news (id, platform_id, author_id, link, title, content, image, category, created_on) VALUES (148, 1, NULL, 'https://cointelegraph.com/news/from-the-valley-to-oasis-swiss-and-dubai-crypto-associations-team-up', 'From the valley to oasis: Swiss and Dubai crypto associations team up', 'A partnership between the two cities'' blockchain associations will aim to connect businesses and foster growth in the sector.
Switzerland-based Crypto Valley Association will partner with Dubai’s Crypto Oasis to collaborate in the ongoing development of the blockchain industry in both countries.

The Crypto Valley Association (CVA), based in the Swiss Canton of Zug’s self-proclaimed "crypto valley," will spearhead the partnership with its counterpart in Dubai to connect a growing group of blockchain communities in Switzerland and the Middle East.

Both associations were founded by Ralf Glabischnig, who played a major role in Zug''s establishment as a center for blockchain and cryptocurrency organizations. The likes of the Ethereum Foundation were born in the area, as Cointelegraph Magazine previously explored.  The new partnership between the Swiss and UAE-based associations is set to establish connections and information sharing between businesses in both countries.

Crypto Oasis’ co-founder Faisal Zaidi will spearhead the CVA-led initiative in Dubai, which already has more than 1,100 UAE-based organizations involved in its growing ecosystem. Zaidi highlighted Dubai’s efforts to emulate Zug’s adoption and promotion of blockchain-based businesses, products and services in a statement from the announcement:

“This alliance will connect a fragmented blockchain world by connecting Switzerland, which is at the forefront of disruptive technology, with the Middle East, which is all set to become the new hub for crypto and blockchain.”
CVA has already carried out a similar initiative, setting up a Latin American chapter in July 2022, which taps into the burgeoning cryptocurrency and blockchain sector in South America.

According to the announcement, CVA has extended an invitation to the Dubai International Financial Centre to visit Zug to identify blockchain organizations that could potentially migrate to the United Arab Emirates to bolster its growing ecosystem.

The Dubai Crypto Oasis is looking to increase the number of blockchain and cryptocurrency companies within its ecosystem to 1,500 by the end of 2022. In contrast, CVA''s ecosystem took nearly six years to surpass the 1,000 mark.

From a regulatory standpoint, Dubai introduced new laws in March 2022 to enhance investor protection and create governance standards for cryptocurrency-related businesses to operate in its jurisdiction.

Around the same time, major cryptocurrency exchange operators Binance and FTX were granted licenses to operate and establish headquarters in Dubai.', 'https://i.ibb.co/RCwSbgx/image.png', 'Others', '2022-09-18 15:50:36.000796');
INSERT INTO public.news (id, platform_id, author_id, link, title, content, image, category, created_on) VALUES (149, 29, NULL, 'https://coingape.com/indian-crypto-exchange-coindcx-looking-to-raise-120-million-report/', 'Indian Crypto Exchange CoinDCX Looking to Raise $120 Million: Report', 'Indian crypto exchange CoinDCX could become the next crypto unicorn as reports suggest the crypto exchange is in talks to close a $100-$120 million funding round. The crypto exchange had closed a $13.9 million Series B funding round in December last year. The exchange raised a total of $19.4 million throughout 2020. The completion of the latest funding round by CoinDCX would make it the second Indian crypto exchange to gain unicorn status. WazirX, now a Binance owned exchange became the first crypto unicorn to come out of India.
The report from Economic Times suggests the upcoming funding round could be lead by Facebook co-founder Eduardo Saverin’s B Capital Group and see participation from existing investors such as Coinbase Ventures and Polygon Capital.

The crypto exchange would reportedly use the funds for expanding its infrastructure and work towards achieving its goal of reaching 50 million customers. CoinDCX is among the top-4 Indian crypto exchanges at present along with ZebPay, CoinSwitch, and WazirX.

Indian Crypto Exchanges Flourish Despite Regulatory Uncertainty
Indian crypto exchanges have seen great success this bull season recording phenomenal growth in terms of trading volume and number of registered users.

The growth, however, has been hampered by continued uncertainty around regulations. Indian banks have refused to offer their service to crypto exchanges despite March 2020 ruling by Supreme Court, dismissing RBI’s “banking ban” circular. The banks were even found to be using the quashed circular to deny processing crypto-related transactions.

The hopes of seeing a crypto bill during the ongoing parliamentary session were also cut short as the bill wasn’t added to the list of discussions. The Indian Finance Minister Mrs. Nirmala Sitharaman had indicated earlier that the government might regulate crypto positively. However, that could only happen once the crypto bill makes it to the parliament. The Indian government is also working toward the launch of a CBDC.

India is increasing its global crypto footprint as several Indian crypto projects doing are doing exceptionally well. However, the future of the Indian crypto ecosystem depends on how the government regulates the crypto market.', 'https://i.ibb.co/K9NXnvb/image.png', 'Others', '2022-09-18 15:50:36.002274');
INSERT INTO public.news (id, platform_id, author_id, link, title, content, image, category, created_on) VALUES (150, 42, NULL, 'https://cryptodaily.co.uk/2022/09/3ac-withdraws-45-m-from-curve-and-convex', '3AC Withdraws $45M From Curve And Convex', 'Crypto hedge fund Three Arrows Capital (3AC) has withdrawn assets worth $33 million from Curve Finance and another $12 million from Convex Finance. 

3AC Pulls Out From Curve
Three Arrows Capital’s troubles are far from over. The hedge fund was recently compelled to reclaim $45 million in deposits it had previously staked on two different decentralized exchanges. The first of these two withdrawals was from the stablecoin exchange Curve Finance. 3AC reclaimed 20,945 staked ether (stETH) from Curve, which is worth around $33.3 million. The transaction happened in the early hours of Tuesday morning and was pointed out by blockchain analytics platform Nansen, which identified an Ethereum address as belonging to 3AC. 

Clearing Out Convex Holdings
Further on-chain data revealed that the investment firm also withdrew funds from Convex Finance, which is a DeFi protocol built on top of Curve Finance and boosts rewards for CRV stakers. The funds withdrawn from Convex include 2,421 wrapped ether (wETH), 202.7 wrapped bitcoin (wBTC), and 4,051,367 USDT stablecoin, which amounts to a total of roughly $12 million. All the withdrawn funds are currently being held on the 3AC wallet, which now holds assets worth $57.86 million. Furthermore, the firm also holds $86.8 million in tokens and NFTs across several other addresses. 

Why Were The Funds Withdrawn? 
Basically, experts are wondering about the withdrawal, especially in the context of the $3.5 billion that the company still owes its creditors. Many believe that the firm may be thinking of liquidating its holdings to pay off these creditors. 

The withdrawals have given rise to many questions, as stETH cannot be redeemed for ETH till after six months of the Ethereum Merge. Therefore, speculation is rife that 2AC is planning to borrow ETH by putting down the withdrawn stETH as collateral, all in order to drop new crypto. Another school of thought is that the firm is willing to bear through the months of wait after the Merge, when stETH would be exchangeable for ETH. 

Looking Back
Three Arrows Capital was one of the worst affected in the aftermath of the Terra LUNA debacle. The firm had committed a whopping $200 million to the sale of the LUNA coin, which was reserved to maintain TerraUSD’s dollar peg. Once the stablecoin lost its dollar peg, the value of LUNA plummeted, and the hedge fund lost all its holdings. The company was forced to declare bankruptcy in July 2022, and the founders toyed with the idea of moving to Dubai. ', 'https://i.ibb.co/V9vJW6y/image.png', 'Others', '2022-09-18 15:50:36.003996');
INSERT INTO public.news (id, platform_id, author_id, link, title, content, image, category, created_on) VALUES (151, 14, NULL, 'https://news.bitcoin.com/pinning-the-tail-on-satoshi-nakamoto-how-journalists-erroneously-used-circumstantial-evidence-over-the-years-to-identify-bitcoins-creator/', 'Pinning the Tail on Satoshi Nakamoto — How Journalists Erroneously Used Circumstantial Evidence Over the Years to Identify Bitcoin’s Creator', 'The search for Satoshi Nakamoto, Bitcoin’s mysterious inventor, has been an ongoing hunt for the last 13 years. Since 2014, dozens of so-called candidates have appeared, but none of them have convinced the greater community that they are Bitcoin’s creator. Furthermore, journalists from publications like Newsweek have pointed to a few specific individuals, and nearly every one of them has denied playing a role in the creation of the world’s leading crypto asset. In October 2011, a journalist thought he discovered Nakamoto’s identity, or felt like he offered enough compelling evidence about his discovery to suggest the person he found may have created the first digital currency.

Putting the Wrong Face on the Person Behind Bitcoin
Over eight years ago, Newsweek journalist Leah McGrath Goodman published a story called “The Face Behind Bitcoin,” and in the article, she claims Satoshi Nakamoto was a retired physicist named Dorian Nakamoto. Despite Dorian’s denial from the beginning, the Newsweek reporter published an exposé about Dorian’s life. She claimed that there were several similarities between Dorian and Bitcoin’s anonymous inventor.

Pinning the Tail on Satoshi Nakamoto — How Journalists Erroneously Used Circumstantial Evidence Over the Years to Identify Bitcoin’s Creator
Dorian Nakamoto holding the Newsweek article. Dorian has denied he is Satoshi Nakamoto and noted that he misunderstood the Newsweek reporter Leah McGrath Goodman.
Dorian wasn’t happy with the exposé and he told the public he felt victimized and highlighted that he misunderstood Goodman’s questions. Bitcoiners were not too pleased with Goodman’s Newsweek story, and the community backed Dorian’s victim commentary by noting the Newsweek journalist doxxed Dorian by showing a photograph of his home in California. Goodman received a great deal of backlash for her story, but she wasn’t the only journalist who tried to pin Nakamoto’s identity on a specific individual.

‘I’m Not Satoshi — But Even if I Was I Wouldn’t Tell You’
Roughly two and a half years before Goodman’s exposé on Dorian Nakamoto, a journalist from the New Yorker tried to do the same thing. On October 3, 2011, when bitcoin (BTC) was trading for $5.03 per unit, the New Yorker’s Joshua Davis claimed to have discovered the mysterious inventor, and his name was Michael Clear.

Pinning the Tail on Satoshi Nakamoto — How Journalists Erroneously Used Circumstantial Evidence Over the Years to Identify Bitcoin’s Creator
Michael Clear, the Irish computer science student, denied he was Satoshi but the New Yorker’s reporter decided to publish the story anyway. In 2013, Clear wrote a blog post begging people to stop emailing him asking about bitcoin and possible ties to Satoshi Nakamoto. “I was naturally startled when he thought I could be Satoshi, and there was some humor and regrettable mistakes on my part,” Clear said at the time. However, various misinterpretations and losses of context along with some misleading summaries in further reports, unfortunately, helped trigger the whole thing.”
Davis was first clued in on Clear when he attended the Crypto 2011 conference and started to highlight attendees that either lived in the U.K. or Ireland. Six of the cryptographers he highlighted all attended the University of Bristol, but when he asked about their involvement with bitcoin one of the cryptographers said:

It’s not at all interesting to us.

Davis noted that Clear was a cryptography graduate student from Trinity College in Dublin. Clear was awarded the top computer-science undergraduate award at the college in 2008. Following the award, Clear went to work for Allied Irish Banks and published a paper on peer-to-peer (P2P) technology, and Davis noted that the paper was written with a British writing style.

In 2011, Clear met with Davis during the reporter’s investigation, and he told the journalist he liked to keep a low profile. Davis said the 23-year-old told him he had been programming since he was ten, and the cryptographer was very proficient in C++ as well. Davis stressed in his editorial that Clear was responsive and calm when he was asked about bitcoin.

“My area of focus right now is fully homomorphic encryption,” Clear told Davis. “I haven’t been following bitcoin lately.” Clear also told Davis that he would review the Bitcoin codebase and in a later email, Clear insisted that he could “identify Satoshi.” Clear also said he believed it would be unfair to doxx Nakamoto after all the steps the inventor took to remain anonymous.


“But you may wish to talk to a certain individual who matches the profile of the author on many levels,” Clear said. The person Clear mentioned was a man named Vili Lehdonvirta, and he immediately denied being involved with inventing Bitcoin. Davis then got back in touch with Clear and told him “Lehdonvirta had made a convincing denial.”

The New Yorker’s author then asked Clear again whether he was Satoshi Nakamoto. “I’m not Satoshi,” Clear responded. “But even if I was I wouldn’t tell you.” Clear also added that taking bitcoin down would be extremely hard. “You can’t kill it,” Clear insisted. “Bitcoin would survive a nuclear attack.”

Three Men and the Encryption Keys Patent Created 72 Hours Before Bitcoin.org Was Registered
Despite the denial, Davis and the New Yorker decided to publish the piece about Michael Clear, and the story was picked up by a number of media outlets that year. Clear once again insisted that he was not Nakamoto, when he spoke to reporters from the publication irishcentral.com.

“My sense of humor when I said ‘even if I was I wouldn’t tell you’ is missing, this was said jokingly,” Clear explained. “[I] found it funny that the New Yorker reporter thought I was Satoshi, but I have always (beyond conversational jokes like the quote above) vehemently denied it. I could never allow myself to be even remotely given credit for someone else’s creativity and hard work.”

Pinning the Tail on Satoshi Nakamoto — How Journalists Erroneously Used Circumstantial Evidence Over the Years to Identify Bitcoin’s Creator
The United States patent #20100042841A1 authored by Neal King, Vladimir Oksman, and Charles Bry.
The New Yorker’s article was one of the first times a journalist had tried to pin someone’s identity to the creation of Bitcoin, but it would not be the last. Just one week later, the publication Fast Company and the reporter Adam L. Penenberg published another Nakamoto story with a mysterious angle.

Penenberg believed his evidence was more compelling, and he identified a patent that was created three days before bitcoin.org was registered called “Updating and Distributing Encryption Keys.” This was enough evidence for Penenberg to question the creators of the patent: Neal King, Vladimir Oksman, and Charles Bry.

Similar to the New Yorker exposé, all three of the suspected individuals denied they had any involvement with creating Bitcoin. Penenberg concluded that the point of his editorial was not to claim Fast Company found Nakamoto, but to “show how circumstantial evidence, which is what the New Yorker based its conclusions on, isn’t synonymous with truth.”

Despite the fact that both of these editorials led to dead ends and rabbit holes leading nowhere, journalists hunting for Nakamoto have tried with great effort to expose Bitcoin’s inventor and tell the world who this remarkable individual really was. So far, none of the Satoshi Nakamoto exposés have revealed anything that even offers a closer look at Bitcoin’s inventor — just speculation and coincidences that have very little meaning.', 'https://i.ibb.co/kKPWVDc/image.png', 'Others', '2022-09-18 15:50:36.008628');
INSERT INTO public.news (id, platform_id, author_id, link, title, content, image, category, created_on) VALUES (152, 26, NULL, 'https://decrypt.co/45802/paypal-to-launch-crypto-buying-and-selling-features', 'PayPal to Launch Crypto Buying and Selling Features', 'In brief Payments giant PayPal has partnered with Paxos Crypto Brokerage to enable cryptocurrency buying and selling to its users.
At launch, PayPal will allow purchases of Bitcoin, Ethereum, Bitcoin Cash and Litecoin.
Through Paxos, PayPal has been granted the first virtual currency conditional license from the New York State Department of Financial Services.
Digital payments behemoth PayPal will soon allow its customers to buy, hold and sell Bitcoin and several other cryptocurrencies directly via their accounts, the company announced today.

At launch, PayPal will allow purchases of Bitcoin, Ethereum, Bitcoin Cash and Litecoin.

Although users will be able to pay with cryptocurrencies at around 26 million merchants in early 2021, the resellers will still receive the funds in the form of fiat currencies such as the US Dollar, the company noted.

Want to be a crypto expert? Get the best of Decrypt straight to your inbox.
Your Email
you@emailaddress.com

Get it!
“The shift to digital forms of currencies is inevitable, bringing with it clear advantages in terms of financial inclusion and access; efficiency, speed and resilience of the payments system; and the ability for governments to disburse funds to citizens quickly,” said Dan Schulman, president and CEO of PayPal.

He added that the company is eager to work with central banks and regulators around the world to offer our support and “to meaningfully contribute to shaping the role that digital currencies will play in the future of global finance and commerce."

“We are working with central banks and thinking of all forms of digital currencies and how PayPal can play a role,” Schulman added.

PayPal pals with Paxos for payments
In July, PayPal reportedly partnered with Paxos Crypto Brokerage to ship its crypto-centric payments service. Today, the companies officially confirmed their collaboration.

“Today is the first time users can purchase crypto assets directly from PayPal. PayPal is introducing the ability for its users to buy, hold and sell Bitcoin, Ethereum, Bitcoin Cash and Litecoin,” said Paxos CEO Charles Cascarilla in a press release shared with Decrypt.

Paxos Crypto Brokerage is powering #crypto on @PayPal. Soon, millions of PayPal users will be able to buy/sell/hold $BTC, $ETH, $BCH, $LTC https://t.co/vawnZCg8rk

— Paxos (@PaxosGlobal) October 21, 2020

“This news is significant because PayPal can drive increased awareness, education, adoption and utility for digital currencies. The PayPal global ecosystem has 346 million active accounts (including more than 26 million merchant accounts), and has the potential to significantly influence the size and reach of crypto markets in the years to come,” Cascarilla noted.

Within this partnership, Paxos Crypto Brokerage will provide crypto custody and trading, allowing PayPal to offer "crypto services seamlessly within the PayPal app with its simple and intuitive user experience.”

“Through Paxos, PayPal has been granted the first virtual currency conditional license from the New York State Department of Financial Services. Our dedication to regulatory licensing and consumer asset protection directly enables our clients’ ability to provide crypto to their customers,” Cascarilla further explained.

He added that initially, PayPal will offering crypto services to its US customers, but the company plans to add more geographies and features over time.

The news marks a significant about-face for PayPal; the payments giant has historically shied away from cryptocurrency, with limited options for buying crypto using the platform.', 'https://i.ibb.co/N6YH6gJ/image.png', 'Others', '2022-09-18 15:50:36.011852');
INSERT INTO public.news (id, platform_id, author_id, link, title, content, image, category, created_on) VALUES (153, 30, NULL, 'https://news.bitcoin.com/brazilian-cryptocurrency-exchange-mercado-bitcoin-lays-off-15-of-workforce-due-to-global-economy-woes/', 'Brazilian Cryptocurrency Exchange Mercado Bitcoin Lays Off 15% of Workforce Due to Global Economy Woes', 'Brazilian Cryptocurrency Exchange Mercado Bitcoin Lays Off 15% of Workforce Due to Global Economy Woes
Mercado Bitcoin

Mercado Bitcoin, one of the biggest Brazilian cryptocurrency exchanges, has announced a new wave of layoffs amidst a worsening global economic situation for fintech startups, which the exchange states is affecting innovation-based companies. The exchange laid off 15% of its workforce on September 1st, this being the second round of layoffs the company has executed in three months.

Brazilian Exchange Mercado Bitcoin Announces New Wave of Layoffs
Cryptocurrency companies in Latam and all over the world are being negatively affected by the recent downturn in crypto and traditional markets. Mercado Bitcoin, a cryptocurrency exchange based in Brazil, has announced the execution of a series of layoffs due to the global economic conditions.

According to local media, Mercado Bitcoin let go of 15% of its workforce on September 1st, as part of a series of measures taken by 2TM, the holding company of the exchange, directed to streamline operations.

In a statement, the company also criticized the Brazilian government for sidelining the discussion of a cryptocurrency bill in favor of activities pertaining to the upcoming general elections. Mercado Bitcoin stated:

The adversity in the economy continues, and the competitive environment continues to deteriorate and [is] unfair, without the approval of the legal framework for cryptoassets, with players that follow the laws penalized against companies that ignore local rules.


Layoffs Aplenty
This marks the second time that the company has decided to let go of employees in less than three months. The first wave of layoffs was executed in June when the company fired 90 employees with the objective of maintaining its operations in the future. At that time, the company stated that this move was part of a series of “adjustments” that went beyond just reducing their operating expenses.

This time, as well as during the first wave of layoffs, ex-employees will receive benefit packages to help them while searching for new jobs, and continued medical insurance.

Other exchanges in Latam have also fired part of their personnel to reduce their expenses. This is the case with Bitso, a Mexico-based exchange, and also Buenbit, an Argentinian exchange, with both having to reduce their workforce to survive the current market cooldown.

Mercado Bitcoin scored an investment of $200 million from SoftBank in July 2021, reaching unicorn status in one of the biggest funding rounds Latam has seen. Later, in December, the exchange announced a second Series B funding round closure, adding $50 million more in investments.', 'https://i.ibb.co/BwMYZGp/image.png', 'Others', '2022-09-18 15:50:36.014167');
INSERT INTO public.news (id, platform_id, author_id, link, title, content, image, category, created_on) VALUES (154, 13, NULL, 'https://cointelegraph.com/news/ftx-ceo-and-solana-co-founder-offer-advice-for-building-web3-ecosystems', 'FTX CEO and Solana co-founder offer advice for building Web3 ecosystems', 'The blockchain ecosystem is constantly evolving, yet there always seems to be one overarching sector dominating at a given time. For example, decentralized finance (DeFi) projects received an impressive amount of venture capital funding in 2021, making it the most invested sector last year. Findings further show that nonfungible tokens (NFTs) were the second most invested sector, while Web3 and infrastructure ranked third. 

Now, Web3 is proving to be the most sought-after investment sector in the blockchain industry. New findings from Cointelegraph Research confirm this, showing that Web3 captured around 42% of all individual deals during Q2 this year, while DeFi came in a distant second at 16%. Increasing interest in Web3 has also become apparent as venture capital giants like Andreessen Horowitz (a16z) close billion-dollar funds dedicated to investing in Web3 projects.

Web3 has also captured the attention of Wing Venture Capital, a Silicon-Valley-based investment firm focused on early-stage enterprise technology companies. Wing recently hosted a virtual Web3 Builders Summit with Sam Bankman-Fried, CEO of FTX, and Anatoly Yakovenko, co-founder of Solana, to help early-stage founders better understand best practices for building Web3 ecosystems.

Zach DeWitt, partner at Wing and host of the summit, told Cointelegraph that the firm has been investing in Web3 since 2017 but that structurally there is more capital than ever before dedicated to the sector. “The best time to invest is in bear markets historically. Prices are down and tourists are scared off,” he said.

Come join me tomorrow at 10am PST for discussions with @SBF_FTX and @aeyakovenko about building in Web3!https://t.co/aARnfa9GRM

— Zach DeWitt (@ZacharyDeWitt) July 18, 2022
Yet, confusion around Web3 still remains, as DeWitt noted that although Wing conducts many interviews with founders, there are still a handful of early-stage companies that may not be aware of how to build and scale. Given this, DeWitt commented that the recent Web3 Builders Summit aimed to address these issues. “We wanted this virtual summit to focus on building, scaling and founder lessons — things that the early Web3 community can absorb and which will hopefully make the whole ecosystem stronger,” he remarked. 

Learning from mistakes
Wing’s Web3 Builder’s Summit began with Bankman-Fried discussing some of the mistakes he made early in his career. “There were plenty of things we screwed up,” the executive admitted. For example, Bankman-Fried shared that an embarrassing moment for him occurred when FTX was initially launched, noting that, at the time, he thought that 99% of uptime would be a great achievement: 

“I thought this would be damn good, even though 100% would have been better. But this didn’t turn out to be correct, as it turns out that it’s incredibly important for customers to trade whenever they want to trade. It would be horrific if we are down for even 10 minutes every month, so we had to go back and rework some of our systems.”
Bankman-Fried also mentioned that early on, FTX was focused heavily on product prioritization, yet he noted that many products the crypto exchange initially launched did not receive traction. 

Recent: Demand for widely used euro stablecoin is huge, says DeFi expert

“When you look at institutional traders, order throughput means a lot. We should have prioritized that earlier,” he said. Bankman-Fried further pointed out that FTX customers were phished during the exchange’s early days. He said that FTX had security features that could have prevented this, yet these were optional. “Many of these features are now mandatory because we realized this was really important for our users. Security can’t be optional,” he remarked.

Yakovenko, who formerly worked at Qualcomm leading the development of operating systems, told Cointelegraph that he has helped develop products such as the Amazon Fire phone and other devices that have previously failed. With this in mind, Yakovenko explained that he intends to build Solana’s Android mobile device Saga for a small audience consisting of the Solana developer ecosystem and the crypto community. “The initial user target are developers, hard core Solana folks that use Magic Eden NFTs and DeFi. There are already about 2 million monthly active users, but our goal is to reach 50,000 active Web3 mobile users moving forward,” he said.

During his fireside chat, Yakovenko added that founders launching Web3 products should pick their partners intelligently. To put this in perspective, Yakovenko explained that he connected with Bankman-Fried early in his career, noting that the FTX CEO told him there was a need to make blockchains faster. Yakovenko explained that FTX’s engineers then slammed the Solana network, which led the company to develop Project Serum, a decentralized derivatives exchange for Solana. “Early-stage founders need partners who are aligned on their visions and can help execute immediately,” said Yakovenko. 

According to DeWitt, one of the biggest takeaways from the Web3 Builders Summit was hearing Bankman-Fried and Yakovenko discuss their mistakes. “It’s just awesome to watch those CEOs operate with such humility and transparency,” he said. DeWitt further pointed out that both Bankman-Fried and Yakovenko are quick to announce platform issues on Twitter to keep their communities informed. “Twitter is where the core of the crypto community is, which is why it’s important for FTX to use the platform regularly,” Bankman-Fried commented.

Evaluating Web3 hiring culture
The Web3 hiring process was also a topic of conversation during the Builders Summit. These takeaways are key, considering that Web3 developer growth has skyrocketed since 2021. Bankman-Fried initially stressed the notion that many companies tend to overhire rather than under hire. However, he pointed out that this often leads to less productivity in the long run. He said:

“When running a business it’s easy to fall into a trap where you hire a lot of good people and then end up with a total diffusion of responsibility. You then have too many cooks in the kitchen and no one is sure what anyone should be doing.”
Bankman-Fried also said that companies shouldn’t hire new employees unless they will be entering a team that is already run well but has too many responsibilities allocated. “The current team needs to have been at the company long enough that they know how to do their jobs. They also need to have the management capacity to teach someone new,” he said. 

In terms of hiring developers, Yakovenko shared that during the 2018–2019 bear market, this was difficult due to the lack of interest in layer-1 blockchains. “We hosted small events and sometimes I was the only one there,” the founder said. Yet, Yakovenko explained that Solana’s developer ecosystem took off following FTX’s incubation of Serum in July 2020.

Best Web3 use cases
Although Web3 is quickly gaining traction, it’s important to recognize the potential behind different use cases. For instance, Yakovenko explained that NFT marketplaces like Solana’s Magic Eden and OpenSea are both generating billions in revenue each year without using any elements of the Web2 economy. “There are no ad exchanges involved or stealing of user data,” he remarked. Yakovenko believes this demonstrates a fundamental shift in how businesses can operate moving forward in terms of digital ownership. 

Yakovenko also mentioned that it’s becoming critical for Web3 applications to operate on mobile devices, noting that crypto has “been stuck on desktops” for years:

“If you look at most of the activity and sales happening on Magic Eden and OpenSea you will see that everything is mainly taking place on desktops. This is crazy, considering that every application now is mobile first.”
According to Yakovenko, this is due to poor user experiences of crypto-based applications on mobile devices. He said that app stores still don’t support crypto natively, noting that the newly released Solana Mobile Stack aims to solve these challenges by making “crypto first class citizens on mobile.” Yakovenko stated that Web3 applications built on the Solana Mobile Stack will not require usernames and passwords, as they will be privacy-first by default. “Everything will be designed through a ‘mobile wallet adapter,’ which is a protocol for connecting web apps and native Android apps to wallets on mobile devices. Once developers have the opportunity to build user experiences, we will see apps drive adoption for Saga.”

While Web3 mobile experiences are compelling, Bankman-Fried pointed out that FTX is interested in blockchain-based social media platforms. “I think blockchain can help bridge different social media platforms, creating unifying layers of data transfer,” he said during his fireside chat. Bankman-Fried also highlighted this use case in a detailed Twitter thread he posted on July 16.

31) Let’s say that, instead, we put messages on a blockchain.

So if you used Blockchain-Twitter (BT):

--You type the message in BT’s interface
--BT posts the message on a public blockchain
--Your friend pulls out Blockchain-Facebook (BF)
--BF reads your message and displays it

— SBF (@SBF_FTX) July 16, 2022
Driving mainstream adoption for Web3
Recent data from Apptopia found that apps with “Web3” in the title or description available for download on iOS or/and Google Play are growing almost 5x faster in 2022 than in 2021. But mainstream adoption of Web3 platforms and applications is still very much underway. 

According to Bankman-Fried, the biggest hurdle to mainstream adoption is scalable blockchains. “We need to get blockchains up to a million transactions per seconds to support a billion users,” he said.

In addition, he believes there should be native integrations with mobile devices and point-of-sale devices that can accept blockchain payments. While these elements will help boost adoption, however, Bankman-Fried is also aware that regulatory clarity is required in order for these features to be achieved. He said, “Having regulator clarity will allow institutional investors to get involved in this space and feel more comfortable.”

Yakovenko mentioned that product market fit is another challenge facing Web3 growth, noting that it’s been challenging for teams to develop “good products that people want.” Although Yakovenko is optimistic that Saga will revolutionize mobile devices, he commented that Solana’s recent network outages have been the biggest hurdle to overcome. 

Recent: Technicals suggest Bitcoin is still far from ideal for daily payments

While Solana suffered full or partial outages at least seven separate times over the past 12 months, Yakovenko explained that Solana’s recent 1.10 release has helped the network run smoothly. “There are a lot of technologies in that release that we haven’t activated yet to make the network stable from the congestion attacks we have seen,” he added.

Fortunately, Web3 is still in its early stages and both Bankman-Fried and Yakovenko are optimistic about where the sector is headed. Bankman-Fried concluded his fireside chat by sharing that FTX is focused on becoming a leader in market structure, noting that the exchange is currently working on building this out to ensure improvements. He also mentioned that FTX is looking into creating a payments network. 

As for Yakovenko, he explained that his victory lap will occur when a Web3 application becomes so compelling that consumers buy Web3-enabled mobile devices as a result. “Crypto revolutionized how people use the web, as we’ve seen chrome extensions utilized. If we can prove this in mobile devices, that will be a game changer.”', 'https://i.ibb.co/Hzy7Hw5/image.png', 'Others', '2022-09-18 15:50:36.015827');
INSERT INTO public.news (id, platform_id, author_id, link, title, content, image, category, created_on) VALUES (155, 22, NULL, 'https://bitcoinist.com/jp-morgan-dives-deep-in-metaverse-hires-specialist/', 'JP Morgan Dives Deep In Metaverse, Hires A Specialist', 'The crypto industry has continued winning the hearts of top shots in the financial sector; especially the Metaverse is attracting more key players . Many worlds central banks now research CBDC and how to implement it. Also, leading institutions in the industry have embraced cryptocurrencies one way or the other.

For instance, JP Morgan Chase has moved to become a force in crypto, fintech, and Metaverse. As a result, the American investment bank is looking for experts in these sectors to increase its presence in the industry.
The bank now aims to add two experts to its team’s Vice President and Payments Business Development Manager under its Technology, Media, and telecom West Coast payments team. This team will be in charge of JP Morgan Fintech, Metaverse, crypto, and Web 3 division.

JP Morgan Chase Job Posting On Metaverse
The investment bank disclosed these job positions on LinkedIn. According to the bank, the individual must be dynamic and curious and can lead the company’s various technological changes enthusiastically and efficiently.

Some of the requirements for the new hires include the ability to guide operations, readiness to collaborate with regulators in the industry, and relevant technical knowledge. Also, the employment will be proactive in client engagement. They’ll also have the skills to collaborate with many internal partners of the bank to develop solutions matching the needs of its clients.
Also, JP Morgan reiterated its need for entrants able to move the company as the leader in crypto, Metaverse, Fintech, and Crypto. The VP and manager must identify new payment opportunities in these sectors and win them before others.

Also, they’ll help the bank clients move forward by analyzing and understanding their operational structure and crypto targets.
JP Morgan And Crypto Relationship
Recall that the CEO of the bank, Jamie Dimon is an anti-bitcoin and has expressed his skepticism towards the crypto asset. That’s why everyone is surprised at this sudden move.

JP Morgan Chase hasn’t been too keen on embracing crypto. But it has shown great interest in Metaverse. The bank released a report in early 2022 predicting that 3D virtual words might grow into a trillion-dollar market in years to come.

The bank’s reluctance over crypto is not surprising, given that its top leaders were not interested in it. For instance, the Chief Strategist in the bank, David Kelly, advised crypto investors of impending recession and volatility, stating they should dispose of their BTC holdings.
Also, CEO Jamie Dimon always referred to bitcoin as worthless. He even warned investors against adding to their portfolios. The CEO made the same arguments eleven months ago, saying that BTC doesn’t have value but is gold for fools. Dimon then commented that he would prefer regulators to take action against it.', 'https://i.ibb.co/sgFg096/image.png', 'Others', '2022-09-18 15:50:36.01953');
INSERT INTO public.news (id, platform_id, author_id, link, title, content, image, category, created_on) VALUES (156, 9, NULL, 'https://u.today/vitalik-buterin-scam-hits-verified-account-of-famous-journalist', '"Vitalik Buterin Scam" Hits Verified Account of Famous Journalist', 'The closer we get to the transition of Ethereum to the PoS consensus, the more hype around the main altcoin and the more active scammers are who try to steal money from inattentive investors by various means. So the next victim of the attackers was famous publicist and journalist Aaron Goldfarb, or rather, his Twitter account. As a result of the hack, the account was redesigned to imitate the Twitter account of Ethereum founder Vitalik Buterin himself, and then a series of tweets was launched, inviting all uninformed people to various phishing sites. Goldfarb''s account is still in the possession of the scammers, comments on the posts are disabled and the technical support of the social network has not yet taken any action. Crypto scammers are becoming active This is not the only case of fraud using the Vitalik Buterin or Ethereum name lately. Previously, U.Today reported similar cases in which attackers carried out dust attacks, and the same fake Vitalik invited crypto enthusiasts to vote on dubious sites. Another famous crypto figure, Changpeng Zhao, suffers from the same problem. Clones of the founder and head of one of the largest crypto exchanges in the world flooded all over Twitter and caused headaches even for Elon Musk. The crypto scammers even made it to Apple''s presentation. While Tim Cook was showing the world the tech giant''s new products, tens of thousands of viewers were caught up in a fake video where they were shown ads for a scam site.

Read more on U.Today https://u.today/vitalik-buterin-scam-hits-verified-account-of-famous-journalist', 'https://i.ibb.co/8dPXWdg/image.png', 'Others', '2022-09-18 15:50:36.020995');
INSERT INTO public.news (id, platform_id, author_id, link, title, content, image, category, created_on) VALUES (157, 5, NULL, 'https://www.coindesk.com/business/2022/09/08/crypto-tracer-elliptic-hires-saas-veteran-jackson-hull-as-cto/', 'Crypto Tracer Elliptic Hires SaaS Veteran Jackson Hull as CTO
', 'Blockchain analytics company Elliptic on Thursday said it had hired software-as-a-service (SaaS) veteran Jackson Hull as its new chief technology officer.
Elliptic, which licenses crypto transaction tracing tools to governments and corporations, pointed to Hull’s experience building software subscription services. That has been a lucrative business for tracers helping them police on-chain transactions.
Hull ran operations at British fintech OakNorth until August, according to his LinkedIn profile. He also previously held positions at the Institute of Coding and the insurance technology company GoCompare.
Elliptic co-founder James Smith has been his company’s CTO in the past, according to archives of Ellpitic’s website circa 2021. It''s not immediately clear, however, when he left that role or whether anyone replaced him prior to Hull’s arrival.
Hull and Elliptic didn''t immediately respond to requests for comment.', 'https://i.ibb.co/J2wVWm8/image.png', 'Others', '2022-09-18 15:50:36.022164');
INSERT INTO public.news (id, platform_id, author_id, link, title, content, image, category, created_on) VALUES (158, 19, NULL, 'https://dailyhodl.com/2022/09/07/former-deutsche-bank-executive-and-ex-occ-chief-says-crypto-firms-stealing-banks-turf-report/', 'Former Deutsche Bank Executive and Ex-OCC Chief Says Crypto Firms Stealing Banks’ Turf: Report', 'The former head of the Office of the Comptroller of the Currency (OCC) during the Clinton administration reportedly says that crypto firms competing with banks currently have the advantage.

According to a new report by Bloomberg, former Deutsche Bank executive Eugene Ludwig says that crypto firms are barging into territories that are usually reserved for traditional financial institutions and are “getting away with murder” due to the lack of regulations.


Ludwig speculates that unregulated crypto firms that take investor deposits and provide lending services without the proper oversight will be the cause of the next economic recession.

He also says that if the Federal Reserve were to ever get into crypto assets via a central bank digital currency (CBDC), they could end up replacing banks as a means for people to deposit money, which would present “all kinds of problems,” according to the report.

Ludwig says the solution to the issue is letting banks “play more aggressively in the crypto markets” so they can “retake the turf rather than let the turn devolve away,” but notes that the tendency now is for banks to do the opposite.

In 2018, Ludwig backed a decision from the OCC to let fintech companies apply for a license to set up bank-like services. However, during the last year, the OCC has made it tougher for crypto firms to acquire this kind of license.

Last November, the OCC also added extra regulations for banks looking to incorporate crypto assets into their business models.', 'https://i.ibb.co/Y49QmDH/image.png', 'Others', '2022-09-18 15:50:36.023344');
INSERT INTO public.news (id, platform_id, author_id, link, title, content, image, category, created_on) VALUES (159, 12, NULL, 'https://www.coindesk.com/business/2022/09/14/russian-millionaires-startup-plans-ruble-stablecoin-following-dai-model/', 'Russian Millionaire’s Startup Plans Ruble Stablecoin Following DAI Model', 'Alexander Lebedev, the former owner of Russia’s National Standard Bank and the publisher of U.K. newspapers The Independent and Evening Standard, is starting a new cryptocurrency project.
The decentralized finance (DeFi) startup he founded, InDeFi, plans to introduce a ruble-backed stablecoin on the Ethereum blockchain, co-founder and CEO Sergey Mendeleev said at the Blockchain Life conference in Moscow.
Mendeleev, who is also founder of the Garantex crypto exchange sanctioned by the U.S. Treasury, noted that the project has nothing to do with the Bank of Russia’s digital ruble. InDeFi’s crypto ruble will be decentralized, Mendeleev said. A trial version of the coin with minimal features is available for testing and feedback, he told CoinDesk.
The coin "will not only make it easier for Russian citizens to access international cryptocurrency exchanges, but also, after changes in legislation, provide transactions with foreign counterparties via crypto,” Mendelelev said on stage.
Following the model of MakerDAO’s DAI algorithmic stablecoin, issuance of crypto rubles will be performed by a decentralized smart contract with overcollateralization. In MakerDAO’s system, users lock ether in a smart contract and take out loans in DAI. The loans are backed by the ether collateral locked in the smart contract escrow.
One InDeFi token will strictly equal one ruble, Mendeleev said.
InDeFi was launched last year by Lebedev and Mendeleev as a facility offering loans in stablecoins. Lebedev, a former officer in the Soviet Union’s KGB secret service, fell out of favor with President Vladimir Putin’s regime in 2008 after a small Russian newspaper he owned published a story saying Putin had an affair with the Olympic champion gymnast Alina Kabaeva. Lebedev lost both his banking and publishing businesses in the country.
In an exclusive interview to CoinDesk last April, Lebedev said he has been studying fraud in traditional banking and viewed crypto as a way to bypass the corrupt mainstream banking system.
In a comment to CoinDesk, Mendeleev said that InDeFi has not been performing well recently, just “like any other DeFi project on the falling market.” It is “looking for new forms [of business] and apps.”
“Just imagine, it would be as easy to trade ruble on DEXes as USDT, for example,” he said, referring to decentralized crypto exchanges and tether, the largest dollar stablecoin by market cap.', 'https://i.ibb.co/3rRZpvS/image.png', 'Others', '2022-09-18 15:50:36.026142');
INSERT INTO public.news (id, platform_id, author_id, link, title, content, image, category, created_on) VALUES (160, 34, NULL, 'https://www.coindesk.com/policy/2022/09/07/celsius-misled-investors-about-financial-health-vermont-regulator-alleges/', 'Celsius Resembled Ponzi Scheme at Times, Vermont Regulator Says', 'Crypto lender Celsius Network misled investors about its financial health, using its CEL token to bolster its balance sheet and at times using new investor funds to repay old investors, the Vermont Department of Financial Regulation alleged in a new filing Wednesday.
The department, one of several state regulators probing Celsius amid its ongoing bankruptcy proceedings, filed in support of the U.S. Trustee''s Office motion to appoint an independent examiner, alleging Celsius has not been transparent about its financials.
The Vermont report is perhaps the most damning assessment of Celsius'' management since the lender''s collapse this summer helped plunge the global crypto market into a tailspin. The regulator all but alleged that Celsius may have operated at times with a Ponzi scheme-like structure, saying the lender admitted in a recent creditor call that it could not earn enough revenue to support its yields.
"This shows a high level of financial mismanagement and also suggests that, at least at some points in time, yields to existing investors were probably being paid with the assets of new investors," the filing said.
Some 40 state regulators are now looking into Celsius'' operations and financials, the filing said.
"During the course of the multistate investigation, it has become clear that Celsius, through its CEO Alex Mashinsky and otherwise, made false and misleading claims to investors about, inter alia, the company’s financial health and its compliance with securities laws, both of which likely induced retail investors to invest in Celsius or to leave their investments in Celsius despite concerns about the volatility of the cryptocurrency market," the filing said.
Celsius was unable to pay repay investors as far back as July 2021, despite what CEO Alex Mashinsky claimed on Twitter or said in interviews, the department alleged.
The company suffered losses in 2021, including when crypto staking platform Stakehound lost access to 35,000 ether (ETH) and when a lender could not return collateral, the filing said.
Read more: What Crypto Lender Celsius Isn’t Telling Its Depositors
As a result, the company was "misleading" about its financial health, the filing said, including in its July 2022 bankruptcy filings when Celsius claimed it was filing due to the crypto market''s 2022 downturn.
Celsius may have gone so far as to manipulate the price of its CEL token and boost its CEL token holdings to boost its balance sheet, Vermont''s regulator alleges.
"By increasing its net position in CEL by hundreds of millions of dollars, Celsius increased and propped up the market price of CEL, thereby artificially inflating the company’s CEL holdings on its balance sheet and financial statements. Excluding the company’s net position in CEL, liabilities would have exceeded its assets since at least Feb. 28, 2019. These practices may also have enriched Celsius insiders at the expense of retail investors," the filing said.
Celsius experienced over $450 million in losses in a 10-day period in May 2022 alone, the filing said.
Due to all of these issues, an independent examiner should investigate Celsius and its operations, the filing said.
"An examiner should investigate whether Celsius improperly deployed assets to manipulate the market price of CEL, thereby artificially inflating the value of the company’s net position in CEL on its balance sheet and financial statements," the Vermont department said.', 'https://i.ibb.co/LDySSyQ/image.png', 'Others', '2022-09-18 15:50:36.027421');


--
-- Name: news_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.news_id_seq', 160, true);


--
-- PostgreSQL database dump complete
--
