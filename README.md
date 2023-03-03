# Double-Flip-Flop-Model-of-Sleep-and-Dreams-in-Relation-to-EEG-Activity

#### Coming Soon: Audio of Project

## Project Summary

Sleep and dreams have been studied both biologically and psychologically for many
years now, making a large niche in the literature of consciousness and altered states. Along with
this research on where, why, and when sleep occurs within the brain, there have been a multitude
of attempts at modeling sleep mathematically, to predict sleep patterns and how disorders/other
dysfunctions may result in critical alterations.

One of the more prominent models of the literature is known as the Flip-Flop model
(Rempe, Best, & Terman, 2009), where one state flips into another. This model shows the
moments when the brain switches from making a beta (wake) brain wave pattern to a delta, and
eventually theta wave pattern. The interest of this paper lies in the modeling of the neurons and
their peers, creating the waves that are studied with EEG. After observing some of the patterns of
frequency between alpha and theta waves, we are interested in what could modulate between the
states of NREM, REM, and being awake (Kumar, Rupesh, et al.,2012)(Rempe, Best, & Terman,
2009).

Thus, we modeled firing of neurons when in the alpha, beta, theta, and
delta condition using observations of their general wave patterns. As brain waves are the
frequency of firings among neurons in the brain, we are using the general hertz range as a base
for how they would fire. The higher the wave value, the higher the firing rate. To accomplish
this, we first used a model of output from Izkevhich (Izhikevich, 2003) and created it in Matlab,
then recreated it in XPP. In order to achieve the periodic/random nature of the
firings, we utilized a cosine function to constantly alter the synaptic input, changing it from
excitatory to inhibitory over time.

While the model does not directly simulate the output seen in EEG tests due to the lack of
randomness, the model does display periodic increases in firing, and recreates the Hz found for
each wave depending on the altered values for two variables: the wave one wants to recreate, and
the amount of synaptic voltage. Thus, following along with the Flip-Flop model, it would seem
that some mechanism must be at play to indicate that there is a wave change, resulting in a
chemical change that alters the voltage of the synaptic firings, as well as the types of charges that
are sent. This is most likely done via neurotransmitters, and is explored further in the discussion
section (Quant Neruo Project.pdf).

## Neuronal Firing Model (Created in MATLAB)

## Alpha Waves

#### Starting firing rate of an Alpha wave 
![image](https://user-images.githubusercontent.com/87671757/222845091-9624a9e2-eb38-4524-b894-0b4ac0191ffd.png)

#### XPP modeled firing pattern for an Alpha Wave, shown at 10000 ms. Inhibition wave starts a little after 1200 ms, then again around 3600 and so on. 
![image](https://user-images.githubusercontent.com/87671757/222845443-9e0acec2-030e-4f96-a2af-3f9d7441c729.png)

#### Alpha wave pattern exhibited at a scale of 1000 ms 
![image](https://user-images.githubusercontent.com/87671757/222845742-9895c527-89e5-46a2-90b7-5faa974e2d40.png)

## Theta Waves

#### Starting firing rate of an Theta wave 
![image](https://user-images.githubusercontent.com/87671757/222845122-1bb68d76-2c46-4399-bc5b-5a36d46c7f98.png)

## Delta Waves

#### Starting firing rate of an Delta wave 
![image](https://user-images.githubusercontent.com/87671757/222845132-516d2811-9c65-4365-9a78-1b3e5a3b360a.png)

## Beta Waves

#### Starting firing rate of an Beta wave 
![image](https://user-images.githubusercontent.com/87671757/222845156-b4ea8f13-e5af-4fe1-8134-d1cc98d3b1bf.png)
